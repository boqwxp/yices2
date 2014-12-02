(set-logic QF_BV)
(set-info :source |
 Patrice Godefroid, SAGE (systematic dynamic test generation)
 For more information: http://research.microsoft.com/en-us/um/people/pg/public_psfiles/ndss2008.pdf
|)
(set-info :smt-lib-version 2.0)
(set-info :category "industrial")
(set-info :status unknown)
(declare-fun T2_110 () (_ BitVec 16))
(declare-fun T2_114 () (_ BitVec 16))
(declare-fun T2_6 () (_ BitVec 16))
(declare-fun T2_8 () (_ BitVec 16))
(declare-fun T2_116 () (_ BitVec 16))
(declare-fun T2_112 () (_ BitVec 16))
(declare-fun T1_116 () (_ BitVec 8))
(declare-fun T1_117 () (_ BitVec 8))
(declare-fun T1_112 () (_ BitVec 8))
(declare-fun T1_113 () (_ BitVec 8))
(declare-fun T1_114 () (_ BitVec 8))
(declare-fun T1_115 () (_ BitVec 8))
(declare-fun T1_110 () (_ BitVec 8))
(declare-fun T1_111 () (_ BitVec 8))
(declare-fun T1_8 () (_ BitVec 8))
(declare-fun T1_9 () (_ BitVec 8))
(declare-fun T1_6 () (_ BitVec 8))
(declare-fun T1_7 () (_ BitVec 8))
(assert (let ((?v_1 ((_ zero_extend 24) (_ bv3 8))) (?v_0 ((_ zero_extend 16) T2_110)) (?v_7 ((_ zero_extend 16) T2_114))) (let ((?v_13 (bvsub (bvadd ?v_7 ?v_0) ?v_0))) (let ((?v_14 (bvand (bvadd ?v_13 (_ bv15 32)) (_ bv4294967288 32)))) (let ((?v_9 (bvashr ?v_14 ?v_1))) (let ((?v_12 (bvsub (_ bv1771 32) ?v_9)) (?v_2 (bvshl ?v_9 ?v_1)) (?v_15 (bvashr ?v_9 ((_ zero_extend 24) (_ bv5 8))))) (let ((?v_10 (bvsub ?v_12 ?v_9)) (?v_11 ((_ zero_extend 16) (_ bv128 16))) (?v_8 (bvadd ?v_0 ?v_7)) (?v_6 ((_ zero_extend 16) T2_6)) (?v_4 ((_ zero_extend 16) T2_8)) (?v_5 (bvadd ((_ zero_extend 16) T2_112) ((_ zero_extend 16) T2_116)))) (let ((?v_3 (bvand (bvadd (bvashr (bvadd (bvmul ?v_6 (_ bv32 32)) (_ bv7 32)) ?v_1) (_ bv3 32)) (_ bv4294967292 32)))) (and true (= T2_6 (bvor (bvshl ((_ zero_extend 8) T1_7) (_ bv8 16)) ((_ zero_extend 8) T1_6))) (= T2_8 (bvor (bvshl ((_ zero_extend 8) T1_9) (_ bv8 16)) ((_ zero_extend 8) T1_8))) (= T2_110 (bvor (bvshl ((_ zero_extend 8) T1_111) (_ bv8 16)) ((_ zero_extend 8) T1_110))) (= T2_114 (bvor (bvshl ((_ zero_extend 8) T1_115) (_ bv8 16)) ((_ zero_extend 8) T1_114))) (= T2_112 (bvor (bvshl ((_ zero_extend 8) T1_113) (_ bv8 16)) ((_ zero_extend 8) T1_112))) (= T2_116 (bvor (bvshl ((_ zero_extend 8) T1_117) (_ bv8 16)) ((_ zero_extend 8) T1_116))) (= (_ bv15794552 32) (bvadd (bvadd (bvadd ?v_2 (_ bv15833256 32)) ?v_2) (_ bv8 32))) (bvule (_ bv65536 32) (bvmul ?v_3 ?v_4)) (bvule ?v_3 (bvsdiv (_ bv2147479552 32) ?v_4)) (bvslt (_ bv0 32) ?v_5) (bvsle (_ bv0 32) ?v_4) (bvsle ?v_5 ?v_4) (not (= ?v_4 (_ bv0 32))) (bvult (_ bv0 32) ?v_4) (bvule ?v_6 (_ bv67108863 32)) (bvsle (_ bv0 32) ?v_6) (not (= ?v_6 (_ bv0 32))) (bvule ?v_6 (bvsdiv (_ bv536869888 32) ?v_4)) (bvult (_ bv0 32) ?v_6) (bvsle ?v_8 ?v_6) (bvslt (_ bv0 32) ?v_8) (bvule ?v_11 (bvadd ((_ zero_extend 24) ((_ extract 7 0) ?v_10)) (bvshl ((_ zero_extend 24) ((_ extract 15 8) ?v_10)) (_ bv8 32)))) (bvule ?v_11 (bvadd ((_ zero_extend 24) ((_ extract 7 0) ?v_12)) (bvshl ((_ zero_extend 24) ((_ extract 15 8) ?v_12)) (_ bv8 32)))) (= (bvsub ?v_15 ((_ zero_extend 24) (_ bv1 8))) (_ bv0 32)) (not (= ?v_13 (_ bv0 32))) (bvult ?v_13 (_ bv2147483648 32)) (bvult (bvsub ?v_14 ?v_13) (_ bv255 32)) (not (= ?v_10 (_ bv1 32))) (not (= ?v_10 (_ bv0 32))) (bvule (_ bv128 32) ?v_12) (not (= ?v_12 (_ bv1 32))) (not (= ?v_12 (_ bv0 32))) (not (= ?v_15 (_ bv0 32))) (not (= (_ bv15794552 32) (bvadd ?v_2 (_ bv15833264 32)))) (bvult (bvashr ?v_2 ((_ zero_extend 24) (_ bv10 8))) (_ bv128 32)) (= (_ bv15794872 32) (bvadd ?v_2 (_ bv15794552 32))) (bvule ?v_9 ?v_12) (bvule ?v_9 (_ bv1771 32)) (bvult ?v_9 (_ bv128 32)))))))))))
(check-sat)
(exit)