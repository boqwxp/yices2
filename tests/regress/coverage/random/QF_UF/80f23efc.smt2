(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_UF)
(declare-sort S0 0)
(declare-sort S1 0)
(declare-sort S2 0)
(declare-fun v0 () S0)
(declare-fun v1 () S1)
(declare-fun v2 () S2)
(declare-fun f0 ( S2 S0 S2) S2)
(declare-fun f1 ( S2 S0 S2) S2)
(declare-fun f2 ( S1 S1 S1) S0)
(declare-fun f3 ( S2 S2 S1) S1)
(declare-fun f4 ( S1) S1)
(declare-fun p0 ( S1 S0) Bool)
(declare-fun p1 ( S1 S2) Bool)
(declare-fun p2 ( S2) Bool)
(declare-fun p3 ( S0) Bool)
(declare-fun p4 ( S0) Bool)
(assert (let ((e3 (f3 v2 v2 v1)))
(let ((e4 (! (f1 v2 v0 v2) :named term4)))
(let ((e5 (! (f3 e4 e4 v1) :named term5)))
(let ((e6 (! (f4 v1) :named term6)))
(let ((e7 (! (f1 e4 v0 e4) :named term7)))
(let ((e8 (! (f1 e7 v0 e4) :named term8)))
(let ((e9 (! (f0 e4 v0 e4) :named term9)))
(let ((e10 (! (f4 e3) :named term10)))
(let ((e11 (! (f4 v1) :named term11)))
(let ((e12 (! (f1 e4 v0 e9) :named term12)))
(let ((e13 (! (f2 e5 e11 e3) :named term13)))
(let ((e14 (! (p1 v1 v2) :named term14)))
(let ((e15 (! (p1 v1 e7) :named term15)))
(let ((e16 (! (distinct e10 e5) :named term16)))
(let ((e17 (! (p2 e9) :named term17)))
(let ((e18 (! (= e13 v0) :named term18)))
(let ((e19 (! (p1 e3 e12) :named term19)))
(let ((e20 (! (p3 v0) :named term20)))
(let ((e21 (! (= e11 v1) :named term21)))
(let ((e22 (! (distinct e6 v1) :named term22)))
(let ((e23 (! (p4 e13) :named term23)))
(let ((e24 (! (= e8 e7) :named term24)))
(let ((e25 (! (distinct e4 e7) :named term25)))
(let ((e26 (! (p2 e12) :named term26)))
(let ((e27 (! (p1 e10 e8) :named term27)))
(let ((e28 (! (p0 e6 e13) :named term28)))
(let ((e29 (! (ite e17 e8 e7) :named term29)))
(let ((e30 (! (ite e19 e13 v0) :named term30)))
(let ((e31 (! (ite e25 e4 e8) :named term31)))
(let ((e32 (! (ite e28 e11 e3) :named term32)))
(let ((e33 (! (ite e27 v2 e12) :named term33)))
(let ((e34 (! (ite e23 v1 v1) :named term34)))
(let ((e35 (! (ite e15 e10 e10) :named term35)))
(let ((e36 (! (ite e14 e35 e10) :named term36)))
(let ((e37 (! (ite e26 e6 e11) :named term37)))
(let ((e38 (! (ite e22 e6 e35) :named term38)))
(let ((e39 (! (ite e28 e5 e32) :named term39)))
(let ((e40 (! (ite e18 e12 e12) :named term40)))
(let ((e41 (! (ite e24 e38 e34) :named term41)))
(let ((e42 (! (ite e25 e9 e40) :named term42)))
(let ((e43 (! (ite e20 e35 e6) :named term43)))
(let ((e44 (! (ite e16 e11 e41) :named term44)))
(let ((e45 (! (ite e15 v0 e30) :named term45)))
(let ((e46 (! (ite e21 e45 e13) :named term46)))
(let ((e47 (! (= e38 e10) :named term47)))
(let ((e48 (! (p2 e29) :named term48)))
(let ((e49 (! (= e7 e8) :named term49)))
(let ((e50 (! (p3 e46) :named term50)))
(let ((e51 (! (p2 e40) :named term51)))
(let ((e52 (! (distinct e12 e12) :named term52)))
(let ((e53 (! (= e33 e12) :named term53)))
(let ((e54 (! (p4 v0) :named term54)))
(let ((e55 (! (= e13 e13) :named term55)))
(let ((e56 (! (= e41 e3) :named term56)))
(let ((e57 (! (distinct e44 e34) :named term57)))
(let ((e58 (! (= e35 e3) :named term58)))
(let ((e59 (! (distinct e5 e35) :named term59)))
(let ((e60 (! (p0 e11 e30) :named term60)))
(let ((e61 (! (p4 e13) :named term61)))
(let ((e62 (! (= e42 e12) :named term62)))
(let ((e63 (! (= e39 e11) :named term63)))
(let ((e64 (! (p3 e30) :named term64)))
(let ((e65 (! (p4 e46) :named term65)))
(let ((e66 (! (distinct e45 e30) :named term66)))
(let ((e67 (! (p4 e13) :named term67)))
(let ((e68 (! (distinct e6 e44) :named term68)))
(let ((e69 (! (= e31 e33) :named term69)))
(let ((e70 (! (p3 e46) :named term70)))
(let ((e71 (! (p0 e36 e46) :named term71)))
(let ((e72 (! (= v1 e39) :named term72)))
(let ((e73 (! (= e32 e6) :named term73)))
(let ((e74 (! (p0 v1 e46) :named term74)))
(let ((e75 (! (p0 e10 e13) :named term75)))
(let ((e76 (! (distinct e9 e42) :named term76)))
(let ((e77 (! (distinct e4 v2) :named term77)))
(let ((e78 (! (p2 e12) :named term78)))
(let ((e79 (! (p1 e37 e42) :named term79)))
(let ((e80 (! (distinct e43 e39) :named term80)))
(let ((e81 (! (=> e18 e61) :named term81)))
(let ((e82 (! (=> e73 e80) :named term82)))
(let ((e83 (! (= e69 e72) :named term83)))
(let ((e84 (! (ite e77 e64 e63) :named term84)))
(let ((e85 (! (and e75 e51) :named term85)))
(let ((e86 (! (not e20) :named term86)))
(let ((e87 (! (= e66 e54) :named term87)))
(let ((e88 (! (xor e28 e53) :named term88)))
(let ((e89 (! (not e70) :named term89)))
(let ((e90 (! (= e67 e19) :named term90)))
(let ((e91 (! (not e57) :named term91)))
(let ((e92 (! (xor e47 e27) :named term92)))
(let ((e93 (! (not e88) :named term93)))
(let ((e94 (! (not e58) :named term94)))
(let ((e95 (! (or e15 e23) :named term95)))
(let ((e96 (! (not e68) :named term96)))
(let ((e97 (! (and e90 e84) :named term97)))
(let ((e98 (! (=> e82 e52) :named term98)))
(let ((e99 (! (= e97 e78) :named term99)))
(let ((e100 (! (= e55 e89) :named term100)))
(let ((e101 (! (or e96 e25) :named term101)))
(let ((e102 (! (=> e71 e14) :named term102)))
(let ((e103 (! (xor e16 e95) :named term103)))
(let ((e104 (! (not e102) :named term104)))
(let ((e105 (! (not e50) :named term105)))
(let ((e106 (! (and e100 e56) :named term106)))
(let ((e107 (! (= e106 e86) :named term107)))
(let ((e108 (! (= e24 e81) :named term108)))
(let ((e109 (! (not e94) :named term109)))
(let ((e110 (! (ite e104 e60 e59) :named term110)))
(let ((e111 (! (ite e85 e92 e48) :named term111)))
(let ((e112 (! (ite e107 e21 e111) :named term112)))
(let ((e113 (! (= e110 e112) :named term113)))
(let ((e114 (! (= e93 e98) :named term114)))
(let ((e115 (! (or e108 e108) :named term115)))
(let ((e116 (! (ite e113 e109 e109) :named term116)))
(let ((e117 (! (xor e49 e101) :named term117)))
(let ((e118 (! (xor e22 e103) :named term118)))
(let ((e119 (! (=> e99 e118) :named term119)))
(let ((e120 (! (xor e114 e74) :named term120)))
(let ((e121 (! (ite e17 e105 e62) :named term121)))
(let ((e122 (! (not e120) :named term122)))
(let ((e123 (! (and e115 e119) :named term123)))
(let ((e124 (! (ite e116 e116 e91) :named term124)))
(let ((e125 (! (xor e65 e121) :named term125)))
(let ((e126 (! (= e79 e125) :named term126)))
(let ((e127 (! (=> e83 e87) :named term127)))
(let ((e128 (! (and e76 e117) :named term128)))
(let ((e129 (! (not e123) :named term129)))
(let ((e130 (! (= e126 e124) :named term130)))
(let ((e131 (! (xor e127 e128) :named term131)))
(let ((e132 (! (or e129 e26) :named term132)))
(let ((e133 (! (or e131 e122) :named term133)))
(let ((e134 (! (not e132) :named term134)))
(let ((e135 (! (or e130 e130) :named term135)))
(let ((e136 (! (= e133 e135) :named term136)))
(let ((e137 (! (=> e136 e136) :named term137)))
(let ((e138 (! (and e137 e134) :named term138)))
e138
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)
(set-option :regular-output-channel "/dev/null")
(get-model)
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
