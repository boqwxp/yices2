(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_BV)
(declare-fun v0 () (_ BitVec 5))
(declare-fun v1 () (_ BitVec 1))
(declare-fun v2 () (_ BitVec 1))
(declare-fun v3 () (_ BitVec 8))
(assert (let ((e4(_ bv1 1)))
(let ((e5(_ bv2971 12)))
(let ((e6 (! (bvand ((_ zero_extend 4) v2) v0) :named term6)))
(let ((e7 (! (bvnand v3 ((_ sign_extend 3) v0)) :named term7)))
(let ((e8 (! (bvshl e5 ((_ zero_extend 11) v2)) :named term8)))
(let ((e9 (! (ite (bvsle e7 ((_ sign_extend 3) e6)) (_ bv1 1) (_ bv0 1)) :named term9)))
(let ((e10 (! (ite (bvuge ((_ zero_extend 4) e7) e5) (_ bv1 1) (_ bv0 1)) :named term10)))
(let ((e11 (! (bvsdiv e6 e6) :named term11)))
(let ((e12 (! (bvlshr e11 ((_ zero_extend 4) v2)) :named term12)))
(let ((e13 (! (ite (= v2 v2) (_ bv1 1) (_ bv0 1)) :named term13)))
(let ((e14 (! (ite (bvult v0 ((_ zero_extend 4) e9)) (_ bv1 1) (_ bv0 1)) :named term14)))
(let ((e15 (! (ite (bvult e9 e13) (_ bv1 1) (_ bv0 1)) :named term15)))
(let ((e16 (! (concat e6 e10) :named term16)))
(let ((e17 (! (bvurem e7 e7) :named term17)))
(let ((e18 (! ((_ repeat 1) v3) :named term18)))
(let ((e19 (! (bvnor ((_ sign_extend 3) e6) e18) :named term19)))
(let ((e20 (! (bvlshr ((_ sign_extend 4) e18) e8) :named term20)))
(let ((e21 (! (bvurem ((_ zero_extend 4) v1) e6) :named term21)))
(let ((e22 (! (ite (distinct v2 e10) (_ bv1 1) (_ bv0 1)) :named term22)))
(let ((e23 (! (ite (bvslt ((_ sign_extend 4) v1) v0) (_ bv1 1) (_ bv0 1)) :named term23)))
(let ((e24 (! (bvsub e23 e15) :named term24)))
(let ((e25 (! ((_ extract 3 2) e5) :named term25)))
(let ((e26 (! ((_ sign_extend 11) e6) :named term26)))
(let ((e27 (! (ite (bvsge e6 v0) (_ bv1 1) (_ bv0 1)) :named term27)))
(let ((e28 (! (ite (bvslt ((_ zero_extend 7) e9) e7) (_ bv1 1) (_ bv0 1)) :named term28)))
(let ((e29 (! (bvlshr ((_ zero_extend 7) e27) e19) :named term29)))
(let ((e30 (! ((_ rotate_right 1) e16) :named term30)))
(let ((e31 (! (bvor e21 ((_ zero_extend 4) e4)) :named term31)))
(let ((e32 (! (bvsge e12 ((_ sign_extend 4) e10)) :named term32)))
(let ((e33 (! (distinct ((_ zero_extend 7) e9) v3) :named term33)))
(let ((e34 (! (= e11 ((_ zero_extend 4) e9)) :named term34)))
(let ((e35 (! (bvuge e16 ((_ zero_extend 1) e31)) :named term35)))
(let ((e36 (! (bvule e14 e14) :named term36)))
(let ((e37 (! (bvule ((_ zero_extend 4) e17) e20) :named term37)))
(let ((e38 (! (bvule e23 e22) :named term38)))
(let ((e39 (! (= e20 ((_ sign_extend 7) e31)) :named term39)))
(let ((e40 (! (bvsle e30 ((_ sign_extend 5) e9)) :named term40)))
(let ((e41 (! (bvsgt ((_ zero_extend 7) e10) e7) :named term41)))
(let ((e42 (! (bvuge e13 e10) :named term42)))
(let ((e43 (! (bvult ((_ sign_extend 7) e13) e7) :named term43)))
(let ((e44 (! (bvslt ((_ zero_extend 5) e10) e30) :named term44)))
(let ((e45 (! (bvslt e31 ((_ zero_extend 4) e14)) :named term45)))
(let ((e46 (! (bvugt e8 ((_ sign_extend 11) e10)) :named term46)))
(let ((e47 (! (distinct e30 ((_ zero_extend 1) e21)) :named term47)))
(let ((e48 (! (bvsle ((_ sign_extend 4) v2) e12) :named term48)))
(let ((e49 (! (bvugt e8 ((_ sign_extend 7) e31)) :named term49)))
(let ((e50 (! (bvult ((_ sign_extend 6) e30) e5) :named term50)))
(let ((e51 (! (= ((_ sign_extend 4) v2) e21) :named term51)))
(let ((e52 (! (bvsle ((_ zero_extend 5) e9) e30) :named term52)))
(let ((e53 (! (bvult e8 ((_ sign_extend 11) e24)) :named term53)))
(let ((e54 (! (bvuge e6 ((_ zero_extend 4) e10)) :named term54)))
(let ((e55 (! (bvsgt ((_ zero_extend 7) e12) e8) :named term55)))
(let ((e56 (! (bvule e14 e27) :named term56)))
(let ((e57 (! (= e11 ((_ sign_extend 4) e22)) :named term57)))
(let ((e58 (! (bvslt ((_ zero_extend 4) e15) e11) :named term58)))
(let ((e59 (! (bvule v0 ((_ zero_extend 4) e28)) :named term59)))
(let ((e60 (! (= e10 e22) :named term60)))
(let ((e61 (! (bvsge e23 e28) :named term61)))
(let ((e62 (! (bvugt e4 v2) :named term62)))
(let ((e63 (! (bvsle ((_ sign_extend 4) e14) v0) :named term63)))
(let ((e64 (! (bvslt e8 ((_ zero_extend 11) e10)) :named term64)))
(let ((e65 (! (bvult e31 e6) :named term65)))
(let ((e66 (! (distinct e14 e4) :named term66)))
(let ((e67 (! (bvugt ((_ zero_extend 7) e13) e7) :named term67)))
(let ((e68 (! (bvsge v3 ((_ sign_extend 7) e27)) :named term68)))
(let ((e69 (! (bvult e19 ((_ zero_extend 7) e22)) :named term69)))
(let ((e70 (! (distinct e31 e12) :named term70)))
(let ((e71 (! (bvsge e18 e19) :named term71)))
(let ((e72 (! (distinct ((_ sign_extend 4) v1) e12) :named term72)))
(let ((e73 (! (bvsgt e16 ((_ zero_extend 5) v1)) :named term73)))
(let ((e74 (! (bvule e11 ((_ zero_extend 4) e10)) :named term74)))
(let ((e75 (! (bvslt e20 ((_ sign_extend 7) e21)) :named term75)))
(let ((e76 (! (bvult e17 ((_ sign_extend 7) e27)) :named term76)))
(let ((e77 (! (bvslt e27 e4) :named term77)))
(let ((e78 (! (bvslt e7 ((_ sign_extend 3) v0)) :named term78)))
(let ((e79 (! (bvsgt e26 ((_ zero_extend 8) v3)) :named term79)))
(let ((e80 (! (bvule ((_ sign_extend 3) e12) e17) :named term80)))
(let ((e81 (! (distinct ((_ zero_extend 7) v1) e29) :named term81)))
(let ((e82 (! (bvsge e6 ((_ sign_extend 4) e22)) :named term82)))
(let ((e83 (! (bvsgt v1 e10) :named term83)))
(let ((e84 (! (bvule ((_ zero_extend 3) e11) e18) :named term84)))
(let ((e85 (! (bvult e16 ((_ zero_extend 5) e24)) :named term85)))
(let ((e86 (! (bvslt ((_ sign_extend 11) e22) e20) :named term86)))
(let ((e87 (! (distinct e17 e19) :named term87)))
(let ((e88 (! (bvsge ((_ sign_extend 15) e24) e26) :named term88)))
(let ((e89 (! (bvslt ((_ zero_extend 4) e28) e6) :named term89)))
(let ((e90 (! (bvslt ((_ zero_extend 6) e25) e29) :named term90)))
(let ((e91 (! (ite e81 e81 e74) :named term91)))
(let ((e92 (! (=> e66 e45) :named term92)))
(let ((e93 (! (= e85 e59) :named term93)))
(let ((e94 (! (= e63 e54) :named term94)))
(let ((e95 (! (not e80) :named term95)))
(let ((e96 (! (or e68 e82) :named term96)))
(let ((e97 (! (xor e49 e75) :named term97)))
(let ((e98 (! (xor e53 e48) :named term98)))
(let ((e99 (! (not e42) :named term99)))
(let ((e100 (! (=> e44 e33) :named term100)))
(let ((e101 (! (= e76 e40) :named term101)))
(let ((e102 (! (= e87 e73) :named term102)))
(let ((e103 (! (=> e50 e56) :named term103)))
(let ((e104 (! (and e62 e86) :named term104)))
(let ((e105 (! (xor e78 e67) :named term105)))
(let ((e106 (! (=> e92 e83) :named term106)))
(let ((e107 (! (and e100 e69) :named term107)))
(let ((e108 (! (=> e99 e52) :named term108)))
(let ((e109 (! (or e107 e91) :named term109)))
(let ((e110 (! (or e96 e98) :named term110)))
(let ((e111 (! (not e43) :named term111)))
(let ((e112 (! (= e89 e71) :named term112)))
(let ((e113 (! (=> e57 e64) :named term113)))
(let ((e114 (! (ite e93 e79 e95) :named term114)))
(let ((e115 (! (=> e112 e36) :named term115)))
(let ((e116 (! (=> e109 e60) :named term116)))
(let ((e117 (! (ite e110 e110 e114) :named term117)))
(let ((e118 (! (= e70 e46) :named term118)))
(let ((e119 (! (=> e65 e103) :named term119)))
(let ((e120 (! (ite e101 e35 e72) :named term120)))
(let ((e121 (! (= e61 e58) :named term121)))
(let ((e122 (! (= e41 e121) :named term122)))
(let ((e123 (! (or e47 e94) :named term123)))
(let ((e124 (! (ite e111 e104 e84) :named term124)))
(let ((e125 (! (xor e37 e37) :named term125)))
(let ((e126 (! (and e32 e51) :named term126)))
(let ((e127 (! (or e113 e88) :named term127)))
(let ((e128 (! (=> e115 e120) :named term128)))
(let ((e129 (! (xor e127 e117) :named term129)))
(let ((e130 (! (=> e129 e90) :named term130)))
(let ((e131 (! (xor e38 e128) :named term131)))
(let ((e132 (! (or e131 e108) :named term132)))
(let ((e133 (! (=> e105 e118) :named term133)))
(let ((e134 (! (or e77 e34) :named term134)))
(let ((e135 (! (not e132) :named term135)))
(let ((e136 (! (and e134 e126) :named term136)))
(let ((e137 (! (= e133 e39) :named term137)))
(let ((e138 (! (ite e124 e116 e123) :named term138)))
(let ((e139 (! (=> e102 e135) :named term139)))
(let ((e140 (! (=> e136 e122) :named term140)))
(let ((e141 (! (= e106 e137) :named term141)))
(let ((e142 (! (or e125 e140) :named term142)))
(let ((e143 (! (not e97) :named term143)))
(let ((e144 (! (ite e141 e55 e142) :named term144)))
(let ((e145 (! (= e144 e119) :named term145)))
(let ((e146 (! (=> e145 e139) :named term146)))
(let ((e147 (! (ite e130 e130 e130) :named term147)))
(let ((e148 (! (= e138 e143) :named term148)))
(let ((e149 (! (= e146 e148) :named term149)))
(let ((e150 (! (or e147 e147) :named term150)))
(let ((e151 (! (= e149 e149) :named term151)))
(let ((e152 (! (or e150 e150) :named term152)))
(let ((e153 (! (=> e151 e152) :named term153)))
(let ((e154 (! (and e153 (not (= e7 (_ bv0 8)))) :named term154)))
(let ((e155 (! (and e154 (not (= e6 (_ bv0 5)))) :named term155)))
(let ((e156 (! (and e155 (not (= e6 (bvnot (_ bv0 5))))) :named term156)))
e156
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)
(set-option :regular-output-channel "/dev/null")
(get-model)
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
(get-value (term23))
(get-value (term24))
(get-value (term25))
(get-value (term26))
(get-value (term27))
(get-value (term28))
(get-value (term29))
(get-value (term30))
(get-value (term31))
(get-value (term32))
(get-value (term33))
(get-value (term34))
(get-value (term35))
(get-value (term36))
(get-value (term37))
(get-value (term38))
(get-value (term39))
(get-value (term40))
(get-value (term41))
(get-value (term42))
(get-value (term43))
(get-value (term44))
(get-value (term45))
(get-value (term46))
(get-value (term47))
(get-value (term48))
(get-value (term49))
(get-value (term50))
(get-value (term51))
(get-value (term52))
(get-value (term53))
(get-value (term54))
(get-value (term55))
(get-value (term56))
(get-value (term57))
(get-value (term58))
(get-value (term59))
(get-value (term60))
(get-value (term61))
(get-value (term62))
(get-value (term63))
(get-value (term64))
(get-value (term65))
(get-value (term66))
(get-value (term67))
(get-value (term68))
(get-value (term69))
(get-value (term70))
(get-value (term71))
(get-value (term72))
(get-value (term73))
(get-value (term74))
(get-value (term75))
(get-value (term76))
(get-value (term77))
(get-value (term78))
(get-value (term79))
(get-value (term80))
(get-value (term81))
(get-value (term82))
(get-value (term83))
(get-value (term84))
(get-value (term85))
(get-value (term86))
(get-value (term87))
(get-value (term88))
(get-value (term89))
(get-value (term90))
(get-value (term91))
(get-value (term92))
(get-value (term93))
(get-value (term94))
(get-value (term95))
(get-value (term96))
(get-value (term97))
(get-value (term98))
(get-value (term99))
(get-value (term100))
(get-value (term101))
(get-value (term102))
(get-value (term103))
(get-value (term104))
(get-value (term105))
(get-value (term106))
(get-value (term107))
(get-value (term108))
(get-value (term109))
(get-value (term110))
(get-value (term111))
(get-value (term112))
(get-value (term113))
(get-value (term114))
(get-value (term115))
(get-value (term116))
(get-value (term117))
(get-value (term118))
(get-value (term119))
(get-value (term120))
(get-value (term121))
(get-value (term122))
(get-value (term123))
(get-value (term124))
(get-value (term125))
(get-value (term126))
(get-value (term127))
(get-value (term128))
(get-value (term129))
(get-value (term130))
(get-value (term131))
(get-value (term132))
(get-value (term133))
(get-value (term134))
(get-value (term135))
(get-value (term136))
(get-value (term137))
(get-value (term138))
(get-value (term139))
(get-value (term140))
(get-value (term141))
(get-value (term142))
(get-value (term143))
(get-value (term144))
(get-value (term145))
(get-value (term146))
(get-value (term147))
(get-value (term148))
(get-value (term149))
(get-value (term150))
(get-value (term151))
(get-value (term152))
(get-value (term153))
(get-value (term154))
(get-value (term155))
(get-value (term156))
