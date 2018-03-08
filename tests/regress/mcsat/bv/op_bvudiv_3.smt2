(set-info :smt-lib-version 2.6)

(set-logic QF_BV)
(set-info :status sat)

(declare-fun x1 () (_ BitVec 21))
(declare-fun x2 () (_ BitVec 21))
(declare-fun x3 () (_ BitVec 21))
(declare-fun x4 () (_ BitVec 21))

(declare-fun o1 () (_ BitVec 21))
(declare-fun o2 () (_ BitVec 21))
(declare-fun o3 () (_ BitVec 21))
(declare-fun o4 () (_ BitVec 21))
(declare-fun o5 () (_ BitVec 21))
(declare-fun o6 () (_ BitVec 21))
(declare-fun o7 () (_ BitVec 21))
(declare-fun o8 () (_ BitVec 21))
(declare-fun o9 () (_ BitVec 21))
(declare-fun o10 () (_ BitVec 21))
(declare-fun o11 () (_ BitVec 21))
(declare-fun o12 () (_ BitVec 21))
(declare-fun o13 () (_ BitVec 21))
(declare-fun o14 () (_ BitVec 21))
(declare-fun o15 () (_ BitVec 21))
(declare-fun o16 () (_ BitVec 21))

(assert (= x1 #b000000000000000000000))
(assert (= x2 #b000000000000000000001))
(assert (= x3 #b010011001101101101101))
(assert (= x4 #b010101010101010101010))

(assert (= o1 (bvudiv x1 x1)))
(assert (= o2 (bvudiv x1 x2)))
(assert (= o3 (bvudiv x1 x3)))
(assert (= o4 (bvudiv x1 x4)))
(assert (= o5 (bvudiv x2 x1)))
(assert (= o6 (bvudiv x2 x2)))
(assert (= o7 (bvudiv x2 x3)))
(assert (= o8 (bvudiv x2 x4)))
(assert (= o9 (bvudiv x3 x1)))
(assert (= o10 (bvudiv x3 x2)))
(assert (= o11 (bvudiv x3 x3)))
(assert (= o12 (bvudiv x3 x4)))
(assert (= o13 (bvudiv x4 x1)))
(assert (= o14 (bvudiv x4 x2)))
(assert (= o15 (bvudiv x4 x3)))
(assert (= o16 (bvudiv x4 x4)))

(check-sat)
(get-model) 

(exit)

