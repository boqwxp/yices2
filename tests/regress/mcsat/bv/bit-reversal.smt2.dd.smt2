(set-logic QF_BV)
(declare-fun _substvar_48_ () (_ BitVec 8))
(declare-fun _substvar_47_ () (_ BitVec 8))
(assert (= _substvar_48_ ((_ extract 7 0) (bvmul (bvand (bvmul (concat (_ bv0 32) _substvar_47_) (_ bv2149582850 40)) (_ bv36578664720 40)) (_ bv4311810305 40)))))
(assert (not (= _substvar_47_ (concat (concat (_ bv0 6) ((_ extract 6 6) _substvar_48_)) ((_ extract 7 7) _substvar_48_)))))
(check-sat)
(exit)
