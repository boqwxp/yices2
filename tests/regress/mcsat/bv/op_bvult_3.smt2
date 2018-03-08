(set-logic QF_BV)
(set-info :status sat)

(declare-fun x1 () (_ BitVec 21))
(declare-fun x2 () (_ BitVec 21))
(declare-fun x3 () (_ BitVec 21))
(declare-fun x4 () (_ BitVec 21))

(declare-fun o1 () Bool)
(declare-fun o2 () Bool)
(declare-fun o3 () Bool)
(declare-fun o4 () Bool)
(declare-fun o5 () Bool)
(declare-fun o6 () Bool)
(declare-fun o7 () Bool)
(declare-fun o8 () Bool)
(declare-fun o9 () Bool)
(declare-fun o10 () Bool)
(declare-fun o11 () Bool)
(declare-fun o12 () Bool)
(declare-fun o13 () Bool)
(declare-fun o14 () Bool)
(declare-fun o15 () Bool)
(declare-fun o16 () Bool)

(assert (= x1 #b000100101000011101010))
(assert (= x2 #b000100101000011101011))
(assert (= x3 #b001001010111000001111))
(assert (= x4 #b010101010101010101010))

(assert (= o1 (bvult x1 x1)))
(assert (= o2 (bvult x1 x2)))
(assert (= o3 (bvult x1 x3)))
(assert (= o4 (bvult x1 x4)))
(assert (= o5 (bvult x2 x1)))
(assert (= o6 (bvult x2 x2)))
(assert (= o7 (bvult x2 x3)))
(assert (= o8 (bvult x2 x4)))
(assert (= o9 (bvult x3 x1)))
(assert (= o10 (bvult x3 x2)))
(assert (= o11 (bvult x3 x3)))
(assert (= o12 (bvult x3 x4)))
(assert (= o13 (bvult x4 x1)))
(assert (= o14 (bvult x4 x2)))
(assert (= o15 (bvult x4 x3)))
(assert (= o16 (bvult x4 x4)))

(check-sat)
(get-model) 

(exit)

