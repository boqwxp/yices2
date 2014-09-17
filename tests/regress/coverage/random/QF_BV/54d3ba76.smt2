(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_BV)
(declare-fun v0 () (_ BitVec 11))
(declare-fun v1 () (_ BitVec 12))
(assert (let ((e2(_ bv252 10)))
(let ((e3 (! (bvxor v0 ((_ zero_extend 1) e2)) :named term3)))
(let ((e4 (! (ite (distinct v1 ((_ zero_extend 1) e3)) (_ bv1 1) (_ bv0 1)) :named term4)))
(let ((e5 (! (bvsge ((_ zero_extend 2) e2) v1) :named term5)))
(let ((e6 (! (distinct v1 v1) :named term6)))
(let ((e7 (! (bvsgt ((_ sign_extend 1) e2) e3) :named term7)))
(let ((e8 (! (distinct v0 e3) :named term8)))
(let ((e9 (! (bvule ((_ zero_extend 1) e2) v0) :named term9)))
(let ((e10 (! (bvsgt v1 ((_ sign_extend 1) e3)) :named term10)))
(let ((e11 (! (distinct ((_ sign_extend 11) e4) v1) :named term11)))
(let ((e12 (! (ite e7 e10 e7) :named term12)))
(let ((e13 (! (=> e5 e12) :named term13)))
(let ((e14 (! (or e8 e8) :named term14)))
(let ((e15 (! (= e9 e13) :named term15)))
(let ((e16 (! (or e11 e11) :named term16)))
(let ((e17 (! (not e14) :named term17)))
(let ((e18 (! (= e15 e17) :named term18)))
(let ((e19 (! (or e18 e16) :named term19)))
(let ((e20 (! (not e6) :named term20)))
(let ((e21 (! (not e20) :named term21)))
(let ((e22 (! (=> e19 e21) :named term22)))
e22
))))))))))))))))))))))

(check-sat)
(set-option :regular-output-channel "/dev/null")
(get-model)
(get-value (term3))
(get-value (term4))
(get-value (term5))
(get-value (term6))
(get-value (term7))
(get-value (term8))
(get-value (term9))
(get-value (term10))
(get-value (term11))
(get-value (term12))
(get-value (term13))
(get-value (term14))
(get-value (term15))
(get-value (term16))
(get-value (term17))
(get-value (term18))
(get-value (term19))
(get-value (term20))
(get-value (term21))
(get-value (term22))
