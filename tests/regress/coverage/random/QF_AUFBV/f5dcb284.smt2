(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_AUFBV)
(declare-fun v0 () (_ BitVec 3))
(declare-fun v1 () (_ BitVec 6))
(declare-fun v2 () (_ BitVec 11))
(declare-fun v3 () (_ BitVec 11))
(declare-fun v4 () (_ BitVec 6))
(declare-fun a5 () (Array  (_ BitVec 4)  (_ BitVec 4)))
(assert (let ((e6(_ bv12 6)))
(let ((e7 (! (bvcomp ((_ sign_extend 8) v0) v3) :named term7)))
(let ((e8 (! (bvsdiv v1 v1) :named term8)))
(let ((e9 (! ((_ sign_extend 3) v4) :named term9)))
(let ((e10 (! (ite (= v4 ((_ zero_extend 3) v0)) (_ bv1 1) (_ bv0 1)) :named term10)))
(let ((e11 (! (bvshl ((_ zero_extend 2) e7) v0) :named term11)))
(let ((e12 (! (ite (bvult v2 v2) (_ bv1 1) (_ bv0 1)) :named term12)))
(let ((e13 (! ((_ zero_extend 10) e6) :named term13)))
(let ((e14 (! (store a5 ((_ extract 6 3) v2) ((_ zero_extend 1) e11)) :named term14)))
(let ((e15 (! (select e14 ((_ extract 15 12) e13)) :named term15)))
(let ((e16 (! (store e14 ((_ extract 7 4) e9) e15) :named term16)))
(let ((e17 (! (select e16 ((_ sign_extend 3) e10)) :named term17)))
(let ((e18 (! (bvnot e7) :named term18)))
(let ((e19 (! (ite (= (_ bv1 1) ((_ extract 2 2) v0)) v1 e6) :named term19)))
(let ((e20 (! (ite (bvsle e12 e12) (_ bv1 1) (_ bv0 1)) :named term20)))
(let ((e21 (! (bvsrem ((_ zero_extend 1) e11) e17) :named term21)))
(let ((e22 (! (ite (bvsge e13 ((_ zero_extend 12) e15)) (_ bv1 1) (_ bv0 1)) :named term22)))
(let ((e23 (! (bvsdiv ((_ sign_extend 2) e12) v0) :named term23)))
(let ((e24 (! ((_ rotate_right 5) v1) :named term24)))
(let ((e25 (! (bvadd e9 ((_ zero_extend 6) v0)) :named term25)))
(let ((e26 (! (ite (distinct e10 e7) (_ bv1 1) (_ bv0 1)) :named term26)))
(let ((e27 (! (bvxor ((_ sign_extend 3) e8) e9) :named term27)))
(let ((e28 (! (bvudiv ((_ zero_extend 13) e11) e13) :named term28)))
(let ((e29 (! (bvxor v2 ((_ sign_extend 10) e18)) :named term29)))
(let ((e30 (! (ite (bvuge v3 v2) (_ bv1 1) (_ bv0 1)) :named term30)))
(let ((e31 (! (bvmul v4 ((_ sign_extend 5) e20)) :named term31)))
(let ((e32 (! (bvult e18 e26) :named term32)))
(let ((e33 (! (bvugt e28 ((_ sign_extend 13) v0)) :named term33)))
(let ((e34 (! (bvuge ((_ sign_extend 13) e11) e13) :named term34)))
(let ((e35 (! (bvslt e26 e26) :named term35)))
(let ((e36 (! (bvsle v4 e8) :named term36)))
(let ((e37 (! (bvule v1 ((_ zero_extend 5) e20)) :named term37)))
(let ((e38 (! (bvsle ((_ sign_extend 5) v1) v2) :named term38)))
(let ((e39 (! (bvsle ((_ sign_extend 5) e7) v1) :named term39)))
(let ((e40 (! (bvult e17 e17) :named term40)))
(let ((e41 (! (bvule e29 ((_ sign_extend 10) e18)) :named term41)))
(let ((e42 (! (bvsgt e28 ((_ zero_extend 15) e18)) :named term42)))
(let ((e43 (! (bvult ((_ zero_extend 2) e27) v2) :named term43)))
(let ((e44 (! (bvule ((_ zero_extend 5) e7) e6) :named term44)))
(let ((e45 (! (bvsle ((_ sign_extend 15) e20) e28) :named term45)))
(let ((e46 (! (= ((_ zero_extend 8) e7) e25) :named term46)))
(let ((e47 (! (= ((_ zero_extend 5) e10) e24) :named term47)))
(let ((e48 (! (= v2 ((_ zero_extend 8) e23)) :named term48)))
(let ((e49 (! (distinct ((_ zero_extend 8) e30) e27) :named term49)))
(let ((e50 (! (bvule e13 e13) :named term50)))
(let ((e51 (! (distinct v4 e24) :named term51)))
(let ((e52 (! (bvult e13 ((_ zero_extend 15) e30)) :named term52)))
(let ((e53 (! (bvugt e8 ((_ sign_extend 3) e11)) :named term53)))
(let ((e54 (! (bvule e24 ((_ sign_extend 5) e10)) :named term54)))
(let ((e55 (! (bvugt ((_ sign_extend 2) e30) v0) :named term55)))
(let ((e56 (! (bvslt e23 ((_ zero_extend 2) e10)) :named term56)))
(let ((e57 (! (bvslt ((_ sign_extend 13) e23) e13) :named term57)))
(let ((e58 (! (bvugt ((_ sign_extend 15) e10) e13) :named term58)))
(let ((e59 (! (bvslt ((_ zero_extend 10) e26) v3) :named term59)))
(let ((e60 (! (bvult e15 ((_ sign_extend 3) e20)) :named term60)))
(let ((e61 (! (bvult ((_ zero_extend 10) e7) e29) :named term61)))
(let ((e62 (! (bvslt ((_ zero_extend 3) v1) e9) :named term62)))
(let ((e63 (! (bvslt ((_ zero_extend 5) e21) e9) :named term63)))
(let ((e64 (! (bvule e12 e22) :named term64)))
(let ((e65 (! (distinct e13 ((_ sign_extend 12) e21)) :named term65)))
(let ((e66 (! (bvsge ((_ sign_extend 3) e24) e25) :named term66)))
(let ((e67 (! (bvslt ((_ zero_extend 3) v0) v4) :named term67)))
(let ((e68 (! (bvule ((_ sign_extend 2) e25) v2) :named term68)))
(let ((e69 (! (bvslt v4 e8) :named term69)))
(let ((e70 (! (bvsgt ((_ zero_extend 1) e23) e15) :named term70)))
(let ((e71 (! (bvuge ((_ sign_extend 10) e22) v3) :named term71)))
(let ((e72 (! (bvslt v2 ((_ zero_extend 5) e8)) :named term72)))
(let ((e73 (! (bvsgt e12 e20) :named term73)))
(let ((e74 (! (bvugt e17 ((_ sign_extend 3) e30)) :named term74)))
(let ((e75 (! (bvsge v2 ((_ zero_extend 8) e23)) :named term75)))
(let ((e76 (! (bvule e9 ((_ sign_extend 8) e10)) :named term76)))
(let ((e77 (! (bvsgt ((_ sign_extend 8) e7) e27) :named term77)))
(let ((e78 (! (bvugt ((_ sign_extend 5) e26) e31) :named term78)))
(let ((e79 (! (bvult e29 ((_ zero_extend 10) e7)) :named term79)))
(let ((e80 (! (bvule ((_ sign_extend 13) v0) e13) :named term80)))
(let ((e81 (! (bvuge ((_ zero_extend 2) e17) e8) :named term81)))
(let ((e82 (! (bvult e13 ((_ zero_extend 15) e10)) :named term82)))
(let ((e83 (! (bvugt ((_ zero_extend 5) e8) e29) :named term83)))
(let ((e84 (! (bvslt e8 ((_ sign_extend 2) e17)) :named term84)))
(let ((e85 (! (bvslt e29 ((_ sign_extend 10) e10)) :named term85)))
(let ((e86 (! (bvult e31 e31) :named term86)))
(let ((e87 (! (bvule v3 ((_ sign_extend 5) e24)) :named term87)))
(let ((e88 (! (bvsgt e8 ((_ sign_extend 5) e12)) :named term88)))
(let ((e89 (! (= v1 ((_ zero_extend 5) e18)) :named term89)))
(let ((e90 (! (bvsge v3 ((_ sign_extend 5) v1)) :named term90)))
(let ((e91 (! (bvsge e25 e25) :named term91)))
(let ((e92 (! (distinct e6 e31) :named term92)))
(let ((e93 (! (bvule e27 ((_ zero_extend 8) e10)) :named term93)))
(let ((e94 (! (bvult v3 ((_ sign_extend 7) e21)) :named term94)))
(let ((e95 (! (bvuge ((_ zero_extend 3) e11) v4) :named term95)))
(let ((e96 (! (bvuge e27 ((_ sign_extend 8) e7)) :named term96)))
(let ((e97 (! (= ((_ zero_extend 7) e25) e13) :named term97)))
(let ((e98 (! (bvsgt v3 ((_ zero_extend 2) e27)) :named term98)))
(let ((e99 (! (= ((_ zero_extend 2) e12) e11) :named term99)))
(let ((e100 (! (bvuge v4 ((_ sign_extend 5) e12)) :named term100)))
(let ((e101 (! (bvsle e13 ((_ zero_extend 5) v3)) :named term101)))
(let ((e102 (! (bvuge e13 ((_ zero_extend 7) e9)) :named term102)))
(let ((e103 (! (bvsge ((_ zero_extend 3) e23) v4) :named term103)))
(let ((e104 (! (= e29 ((_ zero_extend 10) e22)) :named term104)))
(let ((e105 (! (bvslt v2 ((_ sign_extend 2) e27)) :named term105)))
(let ((e106 (! (bvsge ((_ sign_extend 8) e30) e25) :named term106)))
(let ((e107 (! (bvugt e6 ((_ sign_extend 5) e7)) :named term107)))
(let ((e108 (! (bvule ((_ sign_extend 10) e7) v2) :named term108)))
(let ((e109 (! (bvsle ((_ zero_extend 5) e10) e8) :named term109)))
(let ((e110 (! (bvsle e19 ((_ sign_extend 2) e15)) :named term110)))
(let ((e111 (! (xor e57 e72) :named term111)))
(let ((e112 (! (and e106 e50) :named term112)))
(let ((e113 (! (xor e104 e100) :named term113)))
(let ((e114 (! (not e66) :named term114)))
(let ((e115 (! (= e94 e32) :named term115)))
(let ((e116 (! (ite e78 e99 e54) :named term116)))
(let ((e117 (! (not e82) :named term117)))
(let ((e118 (! (= e63 e51) :named term118)))
(let ((e119 (! (=> e87 e33) :named term119)))
(let ((e120 (! (xor e58 e101) :named term120)))
(let ((e121 (! (not e114) :named term121)))
(let ((e122 (! (ite e86 e38 e98) :named term122)))
(let ((e123 (! (= e93 e68) :named term123)))
(let ((e124 (! (ite e73 e108 e70) :named term124)))
(let ((e125 (! (=> e41 e46) :named term125)))
(let ((e126 (! (xor e59 e75) :named term126)))
(let ((e127 (! (xor e67 e88) :named term127)))
(let ((e128 (! (not e117) :named term128)))
(let ((e129 (! (= e64 e118) :named term129)))
(let ((e130 (! (=> e112 e60) :named term130)))
(let ((e131 (! (or e89 e80) :named term131)))
(let ((e132 (! (or e110 e69) :named term132)))
(let ((e133 (! (not e61) :named term133)))
(let ((e134 (! (xor e36 e76) :named term134)))
(let ((e135 (! (and e56 e116) :named term135)))
(let ((e136 (! (not e121) :named term136)))
(let ((e137 (! (and e102 e131) :named term137)))
(let ((e138 (! (or e74 e128) :named term138)))
(let ((e139 (! (and e111 e133) :named term139)))
(let ((e140 (! (ite e53 e125 e85) :named term140)))
(let ((e141 (! (and e97 e79) :named term141)))
(let ((e142 (! (=> e124 e127) :named term142)))
(let ((e143 (! (= e44 e136) :named term143)))
(let ((e144 (! (or e45 e81) :named term144)))
(let ((e145 (! (or e119 e135) :named term145)))
(let ((e146 (! (or e96 e42) :named term146)))
(let ((e147 (! (and e146 e130) :named term147)))
(let ((e148 (! (ite e39 e47 e83) :named term148)))
(let ((e149 (! (xor e37 e43) :named term149)))
(let ((e150 (! (= e129 e65) :named term150)))
(let ((e151 (! (ite e126 e123 e145) :named term151)))
(let ((e152 (! (ite e120 e91 e91) :named term152)))
(let ((e153 (! (not e105) :named term153)))
(let ((e154 (! (not e152) :named term154)))
(let ((e155 (! (ite e49 e153 e149) :named term155)))
(let ((e156 (! (=> e147 e151) :named term156)))
(let ((e157 (! (ite e115 e155 e40) :named term157)))
(let ((e158 (! (=> e34 e52) :named term158)))
(let ((e159 (! (xor e132 e132) :named term159)))
(let ((e160 (! (xor e141 e150) :named term160)))
(let ((e161 (! (=> e143 e90) :named term161)))
(let ((e162 (! (=> e103 e103) :named term162)))
(let ((e163 (! (xor e109 e142) :named term163)))
(let ((e164 (! (xor e163 e144) :named term164)))
(let ((e165 (! (xor e154 e62) :named term165)))
(let ((e166 (! (= e139 e140) :named term166)))
(let ((e167 (! (=> e161 e84) :named term167)))
(let ((e168 (! (or e113 e134) :named term168)))
(let ((e169 (! (xor e165 e92) :named term169)))
(let ((e170 (! (=> e159 e164) :named term170)))
(let ((e171 (! (not e167) :named term171)))
(let ((e172 (! (xor e162 e162) :named term172)))
(let ((e173 (! (xor e160 e148) :named term173)))
(let ((e174 (! (not e172) :named term174)))
(let ((e175 (! (or e95 e174) :named term175)))
(let ((e176 (! (ite e158 e170 e158) :named term176)))
(let ((e177 (! (or e166 e171) :named term177)))
(let ((e178 (! (xor e55 e177) :named term178)))
(let ((e179 (! (=> e138 e178) :named term179)))
(let ((e180 (! (and e173 e35) :named term180)))
(let ((e181 (! (=> e179 e71) :named term181)))
(let ((e182 (! (not e169) :named term182)))
(let ((e183 (! (ite e107 e168 e175) :named term183)))
(let ((e184 (! (xor e181 e181) :named term184)))
(let ((e185 (! (=> e48 e180) :named term185)))
(let ((e186 (! (ite e137 e184 e176) :named term186)))
(let ((e187 (! (ite e186 e156 e122) :named term187)))
(let ((e188 (! (or e157 e77) :named term188)))
(let ((e189 (! (ite e185 e188 e182) :named term189)))
(let ((e190 (! (=> e183 e183) :named term190)))
(let ((e191 (! (ite e187 e187 e189) :named term191)))
(let ((e192 (! (=> e191 e190) :named term192)))
(let ((e193 (! (and e192 (not (= e13 (_ bv0 16)))) :named term193)))
(let ((e194 (! (and e193 (not (= v1 (_ bv0 6)))) :named term194)))
(let ((e195 (! (and e194 (not (= v1 (bvnot (_ bv0 6))))) :named term195)))
(let ((e196 (! (and e195 (not (= v0 (_ bv0 3)))) :named term196)))
(let ((e197 (! (and e196 (not (= v0 (bvnot (_ bv0 3))))) :named term197)))
(let ((e198 (! (and e197 (not (= e17 (_ bv0 4)))) :named term198)))
(let ((e199 (! (and e198 (not (= e17 (bvnot (_ bv0 4))))) :named term199)))
e199
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)
(set-option :regular-output-channel "/dev/null")
(get-model)
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
(get-value (term157))
(get-value (term158))
(get-value (term159))
(get-value (term160))
(get-value (term161))
(get-value (term162))
(get-value (term163))
(get-value (term164))
(get-value (term165))
(get-value (term166))
(get-value (term167))
(get-value (term168))
(get-value (term169))
(get-value (term170))
(get-value (term171))
(get-value (term172))
(get-value (term173))
(get-value (term174))
(get-value (term175))
(get-value (term176))
(get-value (term177))
(get-value (term178))
(get-value (term179))
(get-value (term180))
(get-value (term181))
(get-value (term182))
(get-value (term183))
(get-value (term184))
(get-value (term185))
(get-value (term186))
(get-value (term187))
(get-value (term188))
(get-value (term189))
(get-value (term190))
(get-value (term191))
(get-value (term192))
(get-value (term193))
(get-value (term194))
(get-value (term195))
(get-value (term196))
(get-value (term197))
(get-value (term198))
(get-value (term199))
