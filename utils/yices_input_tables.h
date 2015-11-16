/*
 * The Yices SMT Solver. Copyright 2014 SRI International.
 *
 * This program may only be used subject to the noncommercial end user
 * license agreement which is downloadable along with this program.
 */

// get token type
#include "frontend/yices/yices_lexer.h"

typedef enum state_s {
  r0, 
  c0, c1, c2, c3, c6, c7, c9, c11, c12, c13, c14, c15,
  t0, t1, t4,
  e0, e1, e3, e15, e16, e17, e19, e20,
} state_t;

typedef struct {
  state_t source;
  token_t token;
  char *value;
} triple_t;

#define DEFAULT_TOKEN -1

/*
 * Action codes
 */
enum actions {
  next_goto_c1,
  empty_command,

  exit_next_goto_r0,
  check_next_goto_r0,
  push_next_goto_r0,
  pop_next_goto_r0,
  reset_next_goto_r0,
  dump_context_next_goto_r0,
  echo_next_goto_c3,
  include_next_goto_c3,
  assert_next_push_r0_goto_e0,
  deftype_next_goto_c2,
  defterm_next_goto_c6,
  showmodel_next_goto_r0,
  eval_next_push_r0_goto_e0,
  setparam_next_goto_c11,
  showparam_next_goto_c13,
  showparams_next_goto_r0,
  showstats_next_goto_r0,
  resetstats_next_goto_r0,
  showtimeout_next_goto_r0,
  settimeout_next_goto_c14,
  help_next_goto_c15,
  export_next_goto_c3,           // New command: (export-to-dimacs filename)
  typename_next_push_r0_goto_t0, // token must be a free typename (TK_SYMBOL)
  string_next_goto_r0,           // string argument to echo, include, help, export
  termname_next_goto_c7,         // token must be a free termname (TK_SYMBOL)
  next_push_c9_goto_t0,
  symbol_next_goto_c12,          // in (set-param <symbol> ...)
  true_next_goto_r0,             // in (set-param ... true)
  false_next_goto_r0,            // in (set-param ... false)
  float_next_goto_r0,            // in (set-param ... <float>)
  symbol_next_goto_r0,           // in (show-param <symbol>) or (help <symbol>) or (set-param ... <symbol>)
  ret,                           // return
  push_r0_goto_e0,

  bool_return,
  typesymbol_return,             // TK_SYMBOL bound to a type
  next_goto_t1,
  bitvector_next_goto_t4,
  rational_next_goto_r0,

  true_return,
  false_return,
  rational_return,
  bvbin_return,
  bvhex_return,
  termsymbol_return,             // TK_SYMBOL bound to a term
  next_goto_e1,

  // all function keywords
  if_next_push_e3_goto_e0,
  eq_next_push_e3_goto_e0,
  diseq_next_push_e3_goto_e0,
  distinct_next_push_e3_goto_e0,
  or_next_push_e3_goto_e0,
  and_next_push_e3_goto_e0,
  not_next_push_e3_goto_e0,
  xor_next_push_e3_goto_e0,
  iff_next_push_e3_goto_e0,
  implies_next_push_e3_goto_e0,
  mk_bv_next_push_e3_goto_e0,
  bv_add_next_push_e3_goto_e0,
  bv_sub_next_push_e3_goto_e0,
  bv_mul_next_push_e3_goto_e0,
  bv_neg_next_push_e3_goto_e0,
  bv_pow_next_push_e3_goto_e0,
  bv_not_next_push_e3_goto_e0,
  bv_and_next_push_e3_goto_e0,
  bv_or_next_push_e3_goto_e0,
  bv_xor_next_push_e3_goto_e0,
  bv_nand_next_push_e3_goto_e0,
  bv_nor_next_push_e3_goto_e0,
  bv_xnor_next_push_e3_goto_e0,
  bv_shift_left0_next_push_e3_goto_e0,
  bv_shift_left1_next_push_e3_goto_e0,
  bv_shift_right0_next_push_e3_goto_e0,
  bv_shift_right1_next_push_e3_goto_e0,
  bv_ashift_right_next_push_e3_goto_e0,
  bv_rotate_left_next_push_e3_goto_e0,
  bv_rotate_right_next_push_e3_goto_e0,
  bv_extract_next_push_e3_goto_e0,
  bv_concat_next_push_e3_goto_e0,
  bv_repeat_next_push_e3_goto_e0,
  bv_sign_extend_next_push_e3_goto_e0,
  bv_zero_extend_next_push_e3_goto_e0,
  bv_ge_next_push_e3_goto_e0,
  bv_gt_next_push_e3_goto_e0,
  bv_le_next_push_e3_goto_e0,
  bv_lt_next_push_e3_goto_e0,
  bv_sge_next_push_e3_goto_e0,
  bv_sgt_next_push_e3_goto_e0,
  bv_sle_next_push_e3_goto_e0,
  bv_slt_next_push_e3_goto_e0,
  bv_shl_next_push_e3_goto_e0,
  bv_lshr_next_push_e3_goto_e0,
  bv_ashr_next_push_e3_goto_e0,  
  bv_div_next_push_e3_goto_e0,
  bv_rem_next_push_e3_goto_e0,
  bv_sdiv_next_push_e3_goto_e0,
  bv_srem_next_push_e3_goto_e0,
  bv_smod_next_push_e3_goto_e0,
  bv_redor_next_push_e3_goto_e0,
  bv_redand_next_push_e3_goto_e0,
  bv_comp_next_push_e3_goto_e0,
  bool_to_bv_next_push_e3_goto_e0,
  bit_next_push_e3_goto_e0,
  
  let_next_goto_e15,

  push_e3_goto_e0,

  next_goto_e16,
  next_goto_e17,
  termname_next_push_e19_goto_e0,  // name in binding 
  next_goto_e20,
  next_push_r0_goto_e0,

  error_lpar_expected,
  error_symbol_expected,
  error_string_expected,
  error_colon_colon_expected,
  error_rational_expected,
  error_rpar_expected,
  error,
};

static triple_t triples[] = {
  { c0, TK_LP, "next_goto_c1" },
  { c0, TK_EOS, "empty_command" },
  { c0, DEFAULT_TOKEN, "error_lpar_expected" },

  { c1, TK_EXIT, "exit_next_goto_r0" },
  { c1, TK_CHECK, "check_next_goto_r0" },
  { c1, TK_ECHO, "echo_next_goto_c3" },
  { c1, TK_INCLUDE, "include_next_goto_c3" },
  { c1, TK_ASSERT, "assert_next_push_r0_goto_e0" },
  { c1, TK_DEFINE_TYPE, "deftype_next_goto_c2" },
  { c1, TK_DEFINE, "defterm_next_goto_c6" },
  { c1, TK_SHOW_MODEL, "showmodel_next_goto_r0" },
  { c1, TK_EVAL, "eval_next_push_r0_goto_e0" },
  { c1, TK_PUSH, "push_next_goto_r0" },
  { c1, TK_POP, "pop_next_goto_r0" },
  { c1, TK_RESET, "reset_next_goto_r0" },
  { c1, TK_DUMP_CONTEXT, "dump_context_next_goto_r0" },
  { c1, TK_SET_PARAM, "setparam_next_goto_c11" },
  { c1, TK_SHOW_PARAMS, "showparams_next_goto_r0" },
  { c1, TK_SHOW_PARAM, "showparam_next_goto_c13" },
  { c1, TK_SHOW_STATS, "showstats_next_goto_r0" },
  { c1, TK_RESET_STATS, "resetstats_next_goto_r0" },
  { c1, TK_SHOW_TIMEOUT, "showtimeout_next_goto_r0" },
  { c1, TK_SET_TIMEOUT, "settimeout_next_goto_c14" },
  { c1, TK_HELP, "help_next_goto_c15" },
  { c1, TK_EXPORT_TO_DIMACS, "export_next_goto_c3" },

  { c2, TK_SYMBOL, "typename_next_push_r0_goto_t0" },
  { c2, DEFAULT_TOKEN, "error_symbol_expected" },

  { c3, TK_STRING, "string_next_goto_r0" },
  { c3, DEFAULT_TOKEN, "error_string_expected" },

  { c6, TK_SYMBOL, "termname_next_goto_c7" },
  { c6, DEFAULT_TOKEN, "error_symbol_expected" },

  { c7, TK_COLON_COLON, "next_push_c9_goto_t0" },
  { c7, DEFAULT_TOKEN, "error_colon_colon_expected" },

  { c9, TK_RP, "ret" },
  { c9, DEFAULT_TOKEN, "push_r0_goto_e0" },

  { c11, TK_SYMBOL, "symbol_next_goto_c12" },
  { c11, DEFAULT_TOKEN, "error_symbol_expected" },

  { c12, TK_TRUE, "true_next_goto_r0" },
  { c12, TK_FALSE, "false_next_goto_r0" },
  { c12, TK_NUM_RATIONAL, "rational_next_goto_r0" },
  { c12, TK_NUM_FLOAT, "float_next_goto_r0" },
  { c12, TK_SYMBOL, "symbol_next_goto_r0" },

  { c13, TK_SYMBOL, "symbol_next_goto_r0" },

  { c14, TK_NUM_RATIONAL, "rational_next_goto_r0" },

  // c15: parameters to (help ...): treat all keywords as symbols here
  { c15, TK_DEFINE_TYPE, "symbol_next_goto_r0" },
  { c15, TK_DEFINE, "symbol_next_goto_r0" },
  { c15, TK_ASSERT, "symbol_next_goto_r0" },
  { c15, TK_CHECK, "symbol_next_goto_r0" },
  { c15, TK_PUSH, "symbol_next_goto_r0" },
  { c15, TK_POP, "symbol_next_goto_r0" },
  { c15, TK_RESET, "symbol_next_goto_r0" },
  { c15, TK_DUMP_CONTEXT, "symbol_next_goto_r0" },
  { c15, TK_EXIT, "symbol_next_goto_r0" },
  { c15, TK_ECHO, "symbol_next_goto_r0" },
  { c15, TK_INCLUDE, "symbol_next_goto_r0" },
  { c15, TK_SHOW_MODEL, "symbol_next_goto_r0" },
  { c15, TK_EVAL, "symbol_next_goto_r0" },
  { c15, TK_SET_PARAM, "symbol_next_goto_r0" },
  { c15, TK_SHOW_PARAM, "symbol_next_goto_r0" },
  { c15, TK_SHOW_PARAMS, "symbol_next_goto_r0" },
  { c15, TK_SHOW_STATS, "symbol_next_goto_r0" },
  { c15, TK_RESET_STATS, "symbol_next_goto_r0" },
  { c15, TK_SET_TIMEOUT, "symbol_next_goto_r0" },
  { c15, TK_SHOW_TIMEOUT, "symbol_next_goto_r0" },
  { c15, TK_HELP, "symbol_next_goto_r0" },
  { c15, TK_EXPORT_TO_DIMACS, "symbol_next_goto_r0" },
  { c15, TK_LET, "symbol_next_goto_r0" },
  { c15, TK_BOOL, "symbol_next_goto_r0" },
  { c15, TK_BITVECTOR, "symbol_next_goto_r0" },
  { c15, TK_TRUE, "symbol_next_goto_r0" },
  { c15, TK_FALSE, "symbol_next_goto_r0" },
  { c15, TK_IF, "symbol_next_goto_r0" },
  { c15, TK_ITE, "symbol_next_goto_r0" },
  { c15, TK_EQ, "symbol_next_goto_r0" },
  { c15, TK_DISEQ, "symbol_next_goto_r0" },
  { c15, TK_DISTINCT, "symbol_next_goto_r0" },
  { c15, TK_OR, "symbol_next_goto_r0" },
  { c15, TK_AND, "symbol_next_goto_r0" },
  { c15, TK_NOT, "symbol_next_goto_r0" },
  { c15, TK_XOR, "symbol_next_goto_r0" },
  { c15, TK_IFF, "symbol_next_goto_r0" },
  { c15, TK_IMPLIES, "symbol_next_goto_r0" },
  { c15, TK_MK_BV, "symbol_next_goto_r0" },
  { c15, TK_BV_ADD, "symbol_next_goto_r0" },
  { c15, TK_BV_SUB, "symbol_next_goto_r0" },
  { c15, TK_BV_MUL, "symbol_next_goto_r0" },
  { c15, TK_BV_NEG, "symbol_next_goto_r0" },
  { c15, TK_BV_POW, "symbol_next_goto_r0" },
  { c15, TK_BV_NOT, "symbol_next_goto_r0" },
  { c15, TK_BV_AND, "symbol_next_goto_r0" },
  { c15, TK_BV_OR, "symbol_next_goto_r0" },
  { c15, TK_BV_XOR, "symbol_next_goto_r0" },
  { c15, TK_BV_NAND, "symbol_next_goto_r0" },
  { c15, TK_BV_NOR, "symbol_next_goto_r0" },
  { c15, TK_BV_XNOR, "symbol_next_goto_r0" },
  { c15, TK_BV_SHIFT_LEFT0, "symbol_next_goto_r0" },
  { c15, TK_BV_SHIFT_LEFT1, "symbol_next_goto_r0" },
  { c15, TK_BV_SHIFT_RIGHT0, "symbol_next_goto_r0" },
  { c15, TK_BV_SHIFT_RIGHT1, "symbol_next_goto_r0" },
  { c15, TK_BV_ASHIFT_RIGHT, "symbol_next_goto_r0" },
  { c15, TK_BV_ROTATE_LEFT, "symbol_next_goto_r0" },
  { c15, TK_BV_ROTATE_RIGHT, "symbol_next_goto_r0" },
  { c15, TK_BV_EXTRACT, "symbol_next_goto_r0" },
  { c15, TK_BV_CONCAT, "symbol_next_goto_r0" },
  { c15, TK_BV_REPEAT, "symbol_next_goto_r0" },
  { c15, TK_BV_SIGN_EXTEND, "symbol_next_goto_r0" },
  { c15, TK_BV_ZERO_EXTEND, "symbol_next_goto_r0" },
  { c15, TK_BV_GE, "symbol_next_goto_r0" },
  { c15, TK_BV_GT, "symbol_next_goto_r0" },
  { c15, TK_BV_LE, "symbol_next_goto_r0" },
  { c15, TK_BV_LT, "symbol_next_goto_r0" },
  { c15, TK_BV_SGE, "symbol_next_goto_r0" },
  { c15, TK_BV_SGT, "symbol_next_goto_r0" },
  { c15, TK_BV_SLE, "symbol_next_goto_r0" },
  { c15, TK_BV_SLT, "symbol_next_goto_r0" },
  { c15, TK_BV_SHL, "symbol_next_goto_r0" },
  { c15, TK_BV_LSHR, "symbol_next_goto_r0" },
  { c15, TK_BV_ASHR, "symbol_next_goto_r0" },
  { c15, TK_BV_DIV, "symbol_next_goto_r0" },
  { c15, TK_BV_REM, "symbol_next_goto_r0" },
  { c15, TK_BV_SDIV, "symbol_next_goto_r0" },
  { c15, TK_BV_SREM, "symbol_next_goto_r0" },
  { c15, TK_BV_SMOD, "symbol_next_goto_r0" },
  { c15, TK_BV_REDOR, "symbol_next_goto_r0" },
  { c15, TK_BV_REDAND, "symbol_next_goto_r0" },
  { c15, TK_BV_COMP, "symbol_next_goto_r0" },
  { c15, TK_BOOL_TO_BV, "symbol_next_goto_r0" },
  { c15, TK_BIT, "symbol_next_goto_r0" },
  { c15, TK_SYMBOL, "symbol_next_goto_r0" },
  { c15, TK_STRING, "string_next_goto_r0" },
  { c15, TK_RP, "ret" },

  { t0, TK_BOOL, "bool_return" },
  { t0, TK_SYMBOL, "typesymbol_return" },
  { t0, TK_LP, "next_goto_t1" },

  { t1, TK_BITVECTOR, "bitvector_next_goto_t4" },

  { t4, TK_NUM_RATIONAL, "rational_next_goto_r0" },
  { t4, DEFAULT_TOKEN, "error_rational_expected" },

  { e0, TK_TRUE, "true_return" },
  { e0, TK_FALSE, "false_return" },
  { e0, TK_NUM_RATIONAL, "rational_return" },
  { e0, TK_BV_CONSTANT, "bvbin_return" },
  { e0, TK_HEX_CONSTANT, "bvhex_return" },
  { e0, TK_SYMBOL, "termsymbol_return" },
  { e0, TK_LP, "next_goto_e1" },

  { e1, TK_IF, "if_next_push_e3_goto_e0" },
  { e1, TK_ITE, "if_next_push_e3_goto_e0" },
  { e1, TK_EQ, "eq_next_push_e3_goto_e0" },
  { e1, TK_DISEQ, "diseq_next_push_e3_goto_e0" },
  { e1, TK_DISTINCT, "distinct_next_push_e3_goto_e0" },
  { e1, TK_OR, "or_next_push_e3_goto_e0" },
  { e1, TK_AND, "and_next_push_e3_goto_e0" },
  { e1, TK_NOT, "not_next_push_e3_goto_e0" },
  { e1, TK_XOR, "xor_next_push_e3_goto_e0" },
  { e1, TK_IFF, "iff_next_push_e3_goto_e0" },
  { e1, TK_IMPLIES, "implies_next_push_e3_goto_e0" },
  { e1, TK_MK_BV, "mk_bv_next_push_e3_goto_e0" },
  { e1, TK_BV_ADD, "bv_add_next_push_e3_goto_e0" },
  { e1, TK_BV_SUB, "bv_sub_next_push_e3_goto_e0" },
  { e1, TK_BV_MUL, "bv_mul_next_push_e3_goto_e0" },
  { e1, TK_BV_NEG, "bv_neg_next_push_e3_goto_e0" },
  { e1, TK_BV_POW, "bv_pow_next_push_e3_goto_e0" },
  { e1, TK_BV_NOT, "bv_not_next_push_e3_goto_e0" },
  { e1, TK_BV_AND, "bv_and_next_push_e3_goto_e0" },
  { e1, TK_BV_OR, "bv_or_next_push_e3_goto_e0" },
  { e1, TK_BV_XOR, "bv_xor_next_push_e3_goto_e0" },
  { e1, TK_BV_NAND, "bv_nand_next_push_e3_goto_e0" },
  { e1, TK_BV_NOR, "bv_nor_next_push_e3_goto_e0" },
  { e1, TK_BV_XNOR, "bv_xnor_next_push_e3_goto_e0" },
  { e1, TK_BV_SHIFT_LEFT0, "bv_shift_left0_next_push_e3_goto_e0" },
  { e1, TK_BV_SHIFT_LEFT1, "bv_shift_left1_next_push_e3_goto_e0" },
  { e1, TK_BV_SHIFT_RIGHT0, "bv_shift_right0_next_push_e3_goto_e0" },
  { e1, TK_BV_SHIFT_RIGHT1, "bv_shift_right1_next_push_e3_goto_e0" },
  { e1, TK_BV_ASHIFT_RIGHT, "bv_ashift_right_next_push_e3_goto_e0" },
  { e1, TK_BV_ROTATE_LEFT, "bv_rotate_left_next_push_e3_goto_e0" },
  { e1, TK_BV_ROTATE_RIGHT, "bv_rotate_right_next_push_e3_goto_e0" },
  { e1, TK_BV_EXTRACT, "bv_extract_next_push_e3_goto_e0" },
  { e1, TK_BV_CONCAT, "bv_concat_next_push_e3_goto_e0" },
  { e1, TK_BV_REPEAT, "bv_repeat_next_push_e3_goto_e0" },
  { e1, TK_BV_SIGN_EXTEND, "bv_sign_extend_next_push_e3_goto_e0" },
  { e1, TK_BV_ZERO_EXTEND, "bv_zero_extend_next_push_e3_goto_e0" },
  { e1, TK_BV_GE, "bv_ge_next_push_e3_goto_e0" },
  { e1, TK_BV_GT, "bv_gt_next_push_e3_goto_e0" },
  { e1, TK_BV_LE, "bv_le_next_push_e3_goto_e0" },
  { e1, TK_BV_LT, "bv_lt_next_push_e3_goto_e0" },
  { e1, TK_BV_SGE, "bv_sge_next_push_e3_goto_e0" },
  { e1, TK_BV_SGT, "bv_sgt_next_push_e3_goto_e0" },
  { e1, TK_BV_SLE, "bv_sle_next_push_e3_goto_e0" },
  { e1, TK_BV_SLT, "bv_slt_next_push_e3_goto_e0" },
  { e1, TK_BV_SHL, "bv_shl_next_push_e3_goto_e0" },
  { e1, TK_BV_LSHR, "bv_lshr_next_push_e3_goto_e0" },
  { e1, TK_BV_ASHR, "bv_ashr_next_push_e3_goto_e0" },
  { e1, TK_BV_DIV, "bv_div_next_push_e3_goto_e0" },
  { e1, TK_BV_REM, "bv_rem_next_push_e3_goto_e0" },
  { e1, TK_BV_SDIV, "bv_sdiv_next_push_e3_goto_e0" },
  { e1, TK_BV_SREM, "bv_srem_next_push_e3_goto_e0" },
  { e1, TK_BV_SMOD, "bv_smod_next_push_e3_goto_e0" },
  { e1, TK_BV_REDOR, "bv_redor_next_push_e3_goto_e0" },
  { e1, TK_BV_REDAND, "bv_redand_next_push_e3_goto_e0" },
  { e1, TK_BV_COMP, "bv_comp_next_push_e3_goto_e0" },
  { e1, TK_BOOL_TO_BV, "bool_to_bv_next_push_e3_goto_e0" },
  { e1, TK_BIT, "bit_next_push_e3_goto_e0" },

  { e1, TK_LET, "let_next_goto_e15" },

  { e3, TK_RP, "ret" },
  { e3, DEFAULT_TOKEN, "push_e3_goto_e0" },

  { e15, TK_LP, "next_goto_e16" },
  { e15, DEFAULT_TOKEN, "error_lpar_expected" },

  { e16, TK_LP, "next_goto_e17" },
  { e16, DEFAULT_TOKEN, "error_lpar_expected" },

  { e17, TK_SYMBOL, "termname_next_push_e19_goto_e0" },
  { e17, DEFAULT_TOKEN, "error_symbol_expected" },

  { e19, TK_RP, "next_goto_e20" },
  { e19, DEFAULT_TOKEN, "error_rpar_expected" },
  
  { e20, TK_LP, "next_goto_e17" },
  { e20, TK_RP, "next_push_r0_goto_e0" },

  { r0, TK_RP, "ret" },
  { r0, DEFAULT_TOKEN, "error_rpar_expected" },

  { -1, -1, NULL },
};

#define NSTATES (e20+1)
#define NTOKENS (TK_ERROR+1)
#define DEFAULT_VALUE "error"
