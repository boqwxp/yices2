(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_AUFBV)
(declare-fun v0 () (_ BitVec 13))
(declare-fun v1 () (_ BitVec 14))
(declare-fun v2 () (_ BitVec 5))
(declare-fun v3 () (_ BitVec 10))
(declare-fun v4 () (_ BitVec 15))
(declare-fun a5 () (Array  (_ BitVec 1)  (_ BitVec 12)))
(assert (let ((e6(_ bv216 8)))
(let ((e7 (! (bvnor v4 ((_ sign_extend 10) v2)) :named term7)))
(let ((e8 (! ((_ zero_extend 1) e7) :named term8)))
(let ((e9 (! (bvudiv ((_ sign_extend 7) e6) e7) :named term9)))
(let ((e10 (! (bvnot v0) :named term10)))
(let ((e11 (! (bvsdiv ((_ sign_extend 3) v3) v0) :named term11)))
(let ((e12 (! (bvneg e8) :named term12)))
(let ((e13 (! (bvnor e12 ((_ zero_extend 1) e9)) :named term13)))
(let ((e14 (! (bvnand v1 ((_ sign_extend 1) e11)) :named term14)))
(let ((e15 (! (store a5 ((_ extract 5 5) e8) ((_ extract 13 2) e7)) :named term15)))
(let ((e16 (! (store e15 ((_ extract 8 8) v0) ((_ extract 13 2) v1)) :named term16)))
(let ((e17 (! (select a5 ((_ extract 3 3) v2)) :named term17)))
(let ((e18 (! (store e15 ((_ extract 7 7) e6) ((_ extract 11 0) e8)) :named term18)))
(let ((e19 (! (store e15 ((_ extract 7 7) e10) ((_ extract 11 0) v1)) :named term19)))
(let ((e20 (! (bvor e17 ((_ sign_extend 2) v3)) :named term20)))
(let ((e21 (! (ite (bvsge e10 ((_ zero_extend 3) v3)) (_ bv1 1) (_ bv0 1)) :named term21)))
(let ((e22 (! (bvnor ((_ sign_extend 4) e20) e8) :named term22)))
(let ((e23 (! (ite (bvsge ((_ sign_extend 10) v2) e7) (_ bv1 1) (_ bv0 1)) :named term23)))
(let ((e24 (! (bvxor ((_ sign_extend 5) v3) e9) :named term24)))
(let ((e25 (! (bvsrem ((_ zero_extend 3) v0) e12) :named term25)))
(let ((e26 (! (bvudiv ((_ zero_extend 8) e6) e13) :named term26)))
(let ((e27 (! (ite (bvslt e11 ((_ sign_extend 1) e20)) (_ bv1 1) (_ bv0 1)) :named term27)))
(let ((e28 (! (bvsrem ((_ sign_extend 1) e11) v1) :named term28)))
(let ((e29 (! (ite (bvslt v4 ((_ zero_extend 1) e14)) (_ bv1 1) (_ bv0 1)) :named term29)))
(let ((e30 (! (bvuge e23 e23) :named term30)))
(let ((e31 (! (bvsgt ((_ zero_extend 1) e9) e25) :named term31)))
(let ((e32 (! (bvslt ((_ zero_extend 11) e27) e17) :named term32)))
(let ((e33 (! (bvslt e14 ((_ sign_extend 13) e21)) :named term33)))
(let ((e34 (! (bvuge e22 ((_ sign_extend 4) e20)) :named term34)))
(let ((e35 (! (bvult e24 ((_ sign_extend 14) e29)) :named term35)))
(let ((e36 (! (bvsgt e25 ((_ zero_extend 2) e28)) :named term36)))
(let ((e37 (! (distinct ((_ zero_extend 15) e23) e13) :named term37)))
(let ((e38 (! (bvsge e13 ((_ sign_extend 6) v3)) :named term38)))
(let ((e39 (! (distinct ((_ sign_extend 1) v1) e7) :named term39)))
(let ((e40 (! (bvsgt e9 ((_ sign_extend 14) e23)) :named term40)))
(let ((e41 (! (bvule e25 ((_ sign_extend 11) v2)) :named term41)))
(let ((e42 (! (bvsgt e7 ((_ sign_extend 7) e6)) :named term42)))
(let ((e43 (! (bvugt e13 ((_ sign_extend 2) e14)) :named term43)))
(let ((e44 (! (bvule e25 ((_ sign_extend 6) v3)) :named term44)))
(let ((e45 (! (bvugt e22 ((_ sign_extend 8) e6)) :named term45)))
(let ((e46 (! (bvugt ((_ zero_extend 2) e28) e22) :named term46)))
(let ((e47 (! (bvsgt e17 ((_ sign_extend 11) e23)) :named term47)))
(let ((e48 (! (bvult e7 ((_ zero_extend 1) e28)) :named term48)))
(let ((e49 (! (bvule ((_ sign_extend 4) e21) v2) :named term49)))
(let ((e50 (! (distinct ((_ sign_extend 14) e21) e7) :named term50)))
(let ((e51 (! (bvslt e25 ((_ sign_extend 1) e24)) :named term51)))
(let ((e52 (! (bvule e21 e27) :named term52)))
(let ((e53 (! (bvugt ((_ sign_extend 1) e11) e14) :named term53)))
(let ((e54 (! (bvugt e12 ((_ zero_extend 1) e7)) :named term54)))
(let ((e55 (! (= ((_ zero_extend 2) e6) v3) :named term55)))
(let ((e56 (! (bvsgt e26 ((_ zero_extend 3) v0)) :named term56)))
(let ((e57 (! (bvsgt ((_ zero_extend 1) e17) e11) :named term57)))
(let ((e58 (! (bvule ((_ zero_extend 3) v2) e6) :named term58)))
(let ((e59 (! (bvule ((_ zero_extend 1) v1) e9) :named term59)))
(let ((e60 (! (distinct ((_ sign_extend 3) e11) e22) :named term60)))
(let ((e61 (! (bvult ((_ sign_extend 8) v2) e10) :named term61)))
(let ((e62 (! (bvsle e7 ((_ sign_extend 14) e23)) :named term62)))
(let ((e63 (! (bvuge e13 ((_ zero_extend 15) e29)) :named term63)))
(let ((e64 (! (bvuge ((_ sign_extend 1) e9) e12) :named term64)))
(let ((e65 (! (bvsle ((_ sign_extend 7) v2) e17) :named term65)))
(let ((e66 (! (bvsge e8 ((_ sign_extend 15) e29)) :named term66)))
(let ((e67 (! (bvslt e26 ((_ sign_extend 1) e9)) :named term67)))
(let ((e68 (! (bvugt e22 ((_ zero_extend 4) e17)) :named term68)))
(let ((e69 (! (bvuge e24 ((_ zero_extend 14) e23)) :named term69)))
(let ((e70 (! (distinct ((_ zero_extend 2) v1) e12) :named term70)))
(let ((e71 (! (bvsgt ((_ zero_extend 2) e28) e8) :named term71)))
(let ((e72 (! (bvslt ((_ zero_extend 3) v3) v0) :named term72)))
(let ((e73 (! (= e12 e8) :named term73)))
(let ((e74 (! (bvsle e25 ((_ zero_extend 3) e10)) :named term74)))
(let ((e75 (! (distinct ((_ sign_extend 15) e27) e8) :named term75)))
(let ((e76 (! (bvult ((_ zero_extend 9) v2) v1) :named term76)))
(let ((e77 (! (bvult ((_ zero_extend 3) e10) e22) :named term77)))
(let ((e78 (! (bvugt e9 ((_ zero_extend 2) e10)) :named term78)))
(let ((e79 (! (bvult e13 ((_ sign_extend 4) e17)) :named term79)))
(let ((e80 (! (bvult e14 ((_ zero_extend 13) e23)) :named term80)))
(let ((e81 (! (bvult ((_ sign_extend 11) e27) e17) :named term81)))
(let ((e82 (! (bvsge ((_ sign_extend 5) v3) e9) :named term82)))
(let ((e83 (! (bvsgt v2 v2) :named term83)))
(let ((e84 (! (bvugt e26 ((_ sign_extend 1) e24)) :named term84)))
(let ((e85 (! (= e12 ((_ sign_extend 15) e21)) :named term85)))
(let ((e86 (! (bvsgt ((_ zero_extend 15) e29) e25) :named term86)))
(let ((e87 (! (= v1 ((_ sign_extend 1) v0)) :named term87)))
(let ((e88 (! (distinct e8 e26) :named term88)))
(let ((e89 (! (= e9 ((_ sign_extend 1) e28)) :named term89)))
(let ((e90 (! (bvule e22 ((_ zero_extend 11) v2)) :named term90)))
(let ((e91 (! (bvsle e25 ((_ sign_extend 15) e27)) :named term91)))
(let ((e92 (! (bvult ((_ sign_extend 12) e21) v0) :named term92)))
(let ((e93 (! (bvule ((_ zero_extend 2) e14) e22) :named term93)))
(let ((e94 (! (bvugt ((_ zero_extend 15) e27) e25) :named term94)))
(let ((e95 (! (distinct e8 ((_ sign_extend 15) e21)) :named term95)))
(let ((e96 (! (distinct e25 ((_ sign_extend 6) v3)) :named term96)))
(let ((e97 (! (bvslt ((_ sign_extend 13) e27) e14) :named term97)))
(let ((e98 (! (bvslt e25 ((_ sign_extend 2) e14)) :named term98)))
(let ((e99 (! (bvsle e17 ((_ sign_extend 11) e29)) :named term99)))
(let ((e100 (! (bvuge ((_ zero_extend 12) e29) e11) :named term100)))
(let ((e101 (! (bvult e28 e28) :named term101)))
(let ((e102 (! (bvsge ((_ sign_extend 15) e29) e25) :named term102)))
(let ((e103 (! (bvsle e22 ((_ zero_extend 15) e23)) :named term103)))
(let ((e104 (! (bvsgt e7 ((_ zero_extend 2) e11)) :named term104)))
(let ((e105 (! (bvult e27 e23) :named term105)))
(let ((e106 (! (bvult ((_ sign_extend 3) e11) e26) :named term106)))
(let ((e107 (! (bvsge v2 v2) :named term107)))
(let ((e108 (! (bvsge ((_ zero_extend 1) e9) e13) :named term108)))
(let ((e109 (! (bvsle e26 e22) :named term109)))
(let ((e110 (! (= ((_ zero_extend 8) e6) e26) :named term110)))
(let ((e111 (! (bvule ((_ zero_extend 3) e11) e12) :named term111)))
(let ((e112 (! (= e28 ((_ zero_extend 2) e17)) :named term112)))
(let ((e113 (! (bvsge e25 ((_ zero_extend 15) e27)) :named term113)))
(let ((e114 (! (bvult e28 ((_ zero_extend 1) e11)) :named term114)))
(let ((e115 (! (bvugt ((_ zero_extend 5) e6) e11) :named term115)))
(let ((e116 (! (bvule ((_ zero_extend 1) e20) e11) :named term116)))
(let ((e117 (! (bvsge e25 ((_ zero_extend 8) e6)) :named term117)))
(let ((e118 (! (bvsgt e7 ((_ sign_extend 14) e29)) :named term118)))
(let ((e119 (! (bvule e25 ((_ sign_extend 1) e24)) :named term119)))
(let ((e120 (! (bvslt ((_ zero_extend 1) e28) e24) :named term120)))
(let ((e121 (! (bvsle ((_ sign_extend 14) e23) v4) :named term121)))
(let ((e122 (! (xor e35 e52) :named term122)))
(let ((e123 (! (ite e63 e73 e33) :named term123)))
(let ((e124 (! (not e78) :named term124)))
(let ((e125 (! (not e45) :named term125)))
(let ((e126 (! (and e38 e111) :named term126)))
(let ((e127 (! (and e98 e100) :named term127)))
(let ((e128 (! (ite e80 e108 e82) :named term128)))
(let ((e129 (! (ite e61 e104 e59) :named term129)))
(let ((e130 (! (and e65 e56) :named term130)))
(let ((e131 (! (and e101 e130) :named term131)))
(let ((e132 (! (ite e122 e109 e107) :named term132)))
(let ((e133 (! (xor e34 e110) :named term133)))
(let ((e134 (! (not e58) :named term134)))
(let ((e135 (! (xor e75 e32) :named term135)))
(let ((e136 (! (or e91 e87) :named term136)))
(let ((e137 (! (xor e118 e125) :named term137)))
(let ((e138 (! (not e46) :named term138)))
(let ((e139 (! (= e124 e121) :named term139)))
(let ((e140 (! (xor e106 e135) :named term140)))
(let ((e141 (! (= e40 e120) :named term141)))
(let ((e142 (! (= e39 e53) :named term142)))
(let ((e143 (! (or e90 e132) :named term143)))
(let ((e144 (! (=> e37 e60) :named term144)))
(let ((e145 (! (and e92 e64) :named term145)))
(let ((e146 (! (or e47 e49) :named term146)))
(let ((e147 (! (xor e70 e142) :named term147)))
(let ((e148 (! (= e133 e62) :named term148)))
(let ((e149 (! (or e86 e71) :named term149)))
(let ((e150 (! (not e31) :named term150)))
(let ((e151 (! (ite e144 e113 e150) :named term151)))
(let ((e152 (! (= e74 e140) :named term152)))
(let ((e153 (! (ite e69 e147 e115) :named term153)))
(let ((e154 (! (and e95 e42) :named term154)))
(let ((e155 (! (or e76 e89) :named term155)))
(let ((e156 (! (or e51 e97) :named term156)))
(let ((e157 (! (not e36) :named term157)))
(let ((e158 (! (and e99 e102) :named term158)))
(let ((e159 (! (and e105 e83) :named term159)))
(let ((e160 (! (xor e72 e154) :named term160)))
(let ((e161 (! (xor e136 e152) :named term161)))
(let ((e162 (! (xor e146 e134) :named term162)))
(let ((e163 (! (xor e54 e54) :named term163)))
(let ((e164 (! (ite e128 e117 e68) :named term164)))
(let ((e165 (! (xor e141 e126) :named term165)))
(let ((e166 (! (not e119) :named term166)))
(let ((e167 (! (=> e166 e66) :named term167)))
(let ((e168 (! (or e157 e162) :named term168)))
(let ((e169 (! (xor e55 e161) :named term169)))
(let ((e170 (! (not e138) :named term170)))
(let ((e171 (! (or e153 e131) :named term171)))
(let ((e172 (! (ite e139 e103 e114) :named term172)))
(let ((e173 (! (not e77) :named term173)))
(let ((e174 (! (or e155 e93) :named term174)))
(let ((e175 (! (and e116 e164) :named term175)))
(let ((e176 (! (=> e127 e44) :named term176)))
(let ((e177 (! (xor e151 e57) :named term177)))
(let ((e178 (! (=> e79 e170) :named term178)))
(let ((e179 (! (and e43 e96) :named term179)))
(let ((e180 (! (= e158 e67) :named term180)))
(let ((e181 (! (not e145) :named term181)))
(let ((e182 (! (ite e148 e84 e168) :named term182)))
(let ((e183 (! (not e163) :named term183)))
(let ((e184 (! (not e149) :named term184)))
(let ((e185 (! (ite e178 e169 e180) :named term185)))
(let ((e186 (! (or e143 e174) :named term186)))
(let ((e187 (! (=> e123 e173) :named term187)))
(let ((e188 (! (not e176) :named term188)))
(let ((e189 (! (=> e85 e165) :named term189)))
(let ((e190 (! (= e183 e177) :named term190)))
(let ((e191 (! (=> e137 e172) :named term191)))
(let ((e192 (! (or e48 e182) :named term192)))
(let ((e193 (! (ite e187 e156 e187) :named term193)))
(let ((e194 (! (xor e179 e181) :named term194)))
(let ((e195 (! (not e192) :named term195)))
(let ((e196 (! (= e30 e129) :named term196)))
(let ((e197 (! (ite e194 e194 e195) :named term197)))
(let ((e198 (! (or e94 e197) :named term198)))
(let ((e199 (! (xor e189 e188) :named term199)))
(let ((e200 (! (not e185) :named term200)))
(let ((e201 (! (xor e190 e160) :named term201)))
(let ((e202 (! (not e201) :named term202)))
(let ((e203 (! (not e196) :named term203)))
(let ((e204 (! (and e198 e175) :named term204)))
(let ((e205 (! (not e203) :named term205)))
(let ((e206 (! (=> e205 e171) :named term206)))
(let ((e207 (! (and e81 e88) :named term207)))
(let ((e208 (! (ite e112 e41 e50) :named term208)))
(let ((e209 (! (not e186) :named term209)))
(let ((e210 (! (=> e209 e191) :named term210)))
(let ((e211 (! (and e210 e200) :named term211)))
(let ((e212 (! (=> e167 e206) :named term212)))
(let ((e213 (! (or e184 e184) :named term213)))
(let ((e214 (! (ite e193 e213 e211) :named term214)))
(let ((e215 (! (ite e159 e212 e159) :named term215)))
(let ((e216 (! (and e214 e215) :named term216)))
(let ((e217 (! (or e204 e208) :named term217)))
(let ((e218 (! (or e216 e217) :named term218)))
(let ((e219 (! (ite e218 e202 e202) :named term219)))
(let ((e220 (! (or e219 e207) :named term220)))
(let ((e221 (! (or e220 e199) :named term221)))
(let ((e222 (! (and e221 (not (= e13 (_ bv0 16)))) :named term222)))
(let ((e223 (! (and e222 (not (= e7 (_ bv0 15)))) :named term223)))
(let ((e224 (! (and e223 (not (= v1 (_ bv0 14)))) :named term224)))
(let ((e225 (! (and e224 (not (= v1 (bvnot (_ bv0 14))))) :named term225)))
(let ((e226 (! (and e225 (not (= v0 (_ bv0 13)))) :named term226)))
(let ((e227 (! (and e226 (not (= v0 (bvnot (_ bv0 13))))) :named term227)))
(let ((e228 (! (and e227 (not (= e12 (_ bv0 16)))) :named term228)))
(let ((e229 (! (and e228 (not (= e12 (bvnot (_ bv0 16))))) :named term229)))
e229
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

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
(get-value (term200))
(get-value (term201))
(get-value (term202))
(get-value (term203))
(get-value (term204))
(get-value (term205))
(get-value (term206))
(get-value (term207))
(get-value (term208))
(get-value (term209))
(get-value (term210))
(get-value (term211))
(get-value (term212))
(get-value (term213))
(get-value (term214))
(get-value (term215))
(get-value (term216))
(get-value (term217))
(get-value (term218))
(get-value (term219))
(get-value (term220))
(get-value (term221))
(get-value (term222))
(get-value (term223))
(get-value (term224))
(get-value (term225))
(get-value (term226))
(get-value (term227))
(get-value (term228))
(get-value (term229))
