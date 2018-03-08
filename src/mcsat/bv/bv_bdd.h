/*
 * The Yices SMT Solver. Copyright 2015 SRI International.
 *
 * This program may only be used subject to the noncommercial end user
 * license agreement which is downloadable along with this program.
 */
 
#pragma once

#include "mcsat/plugin.h"
#include <cudd.h>

/* Datastructure for a BV variable together with its BDD nodes */

typedef struct varWnodes_s varWnodes_t;

/* Datastructure for a function from bitvectors to bitvectors:
   each bit of the output is a Boolean function of the input bitvector;
   each bit is therefore represented as a BDD over the bits of the input
*/

typedef struct bdds_s bdds_t;


/* Creating and destructing var with nodes */
extern varWnodes_t* varWnodes_create(uint32_t bitsize, const variable_t var,
                                     DdManager* manager, plugin_context_t* ctx);
extern void varWnodes_free(varWnodes_t* vn);

extern variable_t bv_varWnodes_getvar(const varWnodes_t* vn);
extern plugin_context_t* bv_varWnodes_getctx(const varWnodes_t* vn);
extern DdManager* bv_varWnodes_manager(const varWnodes_t* vn);

/* Creating a function from bitvectors to bitvectors,
   defined nowhere (every output bit is NULL) */
extern bdds_t* bdds_create(uint32_t bitsize, const varWnodes_t* vn);

/* Clearing such a function, setting every output bit to NULL (undefined function) */
extern void bdds_clear(bdds_t* bdds);

/* Destructing a function from bitvectors to bitvectors
   Requires the function to be cleared */
extern void bdds_free(bdds_t* bdds);

/* Printing */
extern void bdds_print(bdds_t* bdds);

/* Get the function's input */
varWnodes_t* bv_bdds_getvarWnodes(bdds_t* bdds);
/* Get the function's arity */
uint32_t bv_bdds_bitsize(const bdds_t* bdds);

/* Compare two functions (every bit is a pointer to the same BDD) */
bool bv_bdds_eq(const bdds_t* a, const bdds_t* b);

/* Now we program functions from bitvectors to bitvectors */

/* The constant function [1,...,1] */
extern void bv_bdds_one(bdds_t* bdds);

/* The constant function;
   Assumes that the function bdds is previously cleared */
extern void bdds_cst(bdds_t* bdds, bvconstant_t cst);

/* The identity function.
   Assumes that the function bdds is previously cleared
   Makes a copy of the array representing the variable's bits. */
extern void bdds_id(bdds_t* bdds);

/*
 * Bitwise operations: bdds and a must be of same bitsize.
 * - result is in bdds
 */
extern void bdds_complement(bdds_t* bdds);
extern void bdds_and(bdds_t* bdds, const bdds_t* a);
extern void bdds_or (bdds_t* bdds, const bdds_t* a);
extern void bdds_xor(bdds_t* bdds, const bdds_t* a);

/*
 * Equality between a and b (result is in bdds, of bitsize 1)
 */

extern void bdds_eq(bdds_t* bdds, const bdds_t* a, const bdds_t* b);

/*
 * Concatenation: bdds[0...n-1] = a[0.. n-1] and bdds[n ... n+m-1] = b[0...m-1]
 */
extern void bdds_concat(bdds_t* bdds, const bdds_t* a, const bdds_t* b);

