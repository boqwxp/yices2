(set-logic QF_BV)
(set-info :status sat)

(declare-fun x1 () (_ BitVec 5))
(declare-fun x2 () (_ BitVec 5))
(declare-fun x3 () (_ BitVec 5))
(declare-fun x4 () (_ BitVec 5))

(declare-fun o1 () (_ BitVec 5))
(declare-fun o2 () (_ BitVec 5))
(declare-fun o3 () (_ BitVec 5))
(declare-fun o4 () (_ BitVec 5))
(declare-fun o5 () (_ BitVec 5))
(declare-fun o6 () (_ BitVec 5))
(declare-fun o7 () (_ BitVec 5))
(declare-fun o8 () (_ BitVec 5))
(declare-fun o9 () (_ BitVec 5))
(declare-fun o10 () (_ BitVec 5))
(declare-fun o11 () (_ BitVec 5))
(declare-fun o12 () (_ BitVec 5))
(declare-fun o13 () (_ BitVec 5))
(declare-fun o14 () (_ BitVec 5))
(declare-fun o15 () (_ BitVec 5))
(declare-fun o16 () (_ BitVec 5))

(assert (= x1 #b00000))
(assert (= x2 #b00001))
(assert (= x3 #b11111))
(assert (= x4 #b01010))

(assert (= o1 (bvadd x1 x1)))
(assert (= o2 (bvadd x1 x2)))
(assert (= o3 (bvadd x1 x3)))
(assert (= o4 (bvadd x1 x4)))
(assert (= o5 (bvadd x2 x1)))
(assert (= o6 (bvadd x2 x2)))
(assert (= o7 (bvadd x2 x3)))
(assert (= o8 (bvadd x2 x4)))
(assert (= o9 (bvadd x3 x1)))
(assert (= o10 (bvadd x3 x2)))
(assert (= o11 (bvadd x3 x3)))
(assert (= o12 (bvadd x3 x4)))
(assert (= o13 (bvadd x4 x1)))
(assert (= o14 (bvadd x4 x2)))
(assert (= o15 (bvadd x4 x3)))
(assert (= o16 (bvadd x4 x4)))

(check-sat)
(get-model) 

(exit)

