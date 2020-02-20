; FAIRBUG EDUCATOR
; R. VATERT + J. EFSTATHIOU
; FOR 2K PSU
; 9/28/77

org $8000

A8000:          LIS  $0                  ; 8000 70
A8001:          LR   IS,A                ; 8001 0b
                LR   A,(IS)              ; 8002 4c
                ST                       ; 8003 17
                LR   A,IS                ; 8004 0a
                INC                      ; 8005 1f
                CI   $10                 ; 8006 25 10
                BF   $4                  ; 8008 94 f8
                LM                       ; 800a 16
                LR   $0                  ; 800b 50
                LI   $e7                 ; 800c 20 e7
                ADC                      ; 800e 8e
                LR   K,P                 ; 800f 08
                LR   A,KU                ; 8010 00
                ST                       ; 8011 17
                LR   A,KL                ; 8012 01
                ST                       ; 8013 17
                LIS  $1                  ; 8014 71
                OUTS 8                   ; 8015 b8
                INS  8                   ; 8016 a8
                NI   $20                 ; 8017 21 20
                BF   $4                  ; 8019 94 19
                LR   Q,DC                ; 801b 0e
                INS  8                   ; 801c a8
                COM                      ; 801d 18
                NI   $6                  ; 801e 21 06
                SR   1                   ; 8020 12
                BT   4                   ; 8021 84 0a
                DCI  A802f               ; 8023 2a 80 2f
                ADC                      ; 8026 8e
                LM                       ; 8027 16
                LR   $0                  ; 8028 50
                PI   A8560               ; 8029 28 85 60
A802c:          JMP  A81d1               ; 802c 29 81 d1
A802f:          NOP                      ; 802f 2b
                XS   $a                  ; 8030 ea
                INS  4                   ; 8031 a4
                LR   QU,A                ; 8032 06
A8033:          JMP  A85ad               ; 8033 29 85 ad
A8036:          LR   A,$5                ; 8036 45
                COM                      ; 8037 18
A8038:          LR   $5                  ; 8038 55
                LR   A,$6                ; 8039 46
                COM                      ; 803a 18
                INC                      ; 803b 1f
                LR   $6                  ; 803c 56
                LR   A,$5                ; 803d 45
                LNK                      ; 803e 19
                LR   $5                  ; 803f 55
                LI   $92                 ; 8040 20 92
                LR   $7                  ; 8042 57
                BF   $0                  ; 8043 90 02
A8045:          LIS  $0                  ; 8045 70
A8046:          LR   $1                  ; 8046 51
                PI   A8593               ; 8047 28 85 93
                DS   $7                  ; 804a 37
                BF   $4                  ; 804b 94 f9
                XS   $8                  ; 804d e8
                BT   1                   ; 804e 81 09
                LI   $94                 ; 8050 20 94
                LR   $1                  ; 8052 51
                PI   A8593               ; 8053 28 85 93
                BF   $0                  ; 8056 90 57
A8058:          LI   $ff                 ; 8058 20 ff
                LR   $1                  ; 805a 51
                PI   A8593               ; 805b 28 85 93
                LI   $3a                 ; 805e 20 3a
                LR   $1                  ; 8060 51
                PI   A8593               ; 8061 28 85 93
                LI   $18                 ; 8064 20 18
                LR   $8                  ; 8066 58
                LR   QL,A                ; 8067 07
                PI   A811d               ; 8068 28 81 1d
                LR   A,$a                ; 806b 4a
                LR   QL,A                ; 806c 07
                PI   A811d               ; 806d 28 81 1d
                LR   A,$b                ; 8070 4b
                LR   QL,A                ; 8071 07
                PI   A811d               ; 8072 28 81 1d
                LIS  $0                  ; 8075 70
                LR   QL,A                ; 8076 07
                PI   A811d               ; 8077 28 81 1d
                LR   DC,H                ; 807a 10
                LI   $18                 ; 807b 20 18
                LR   $8                  ; 807d 58
                BF   $0                  ; 807e 90 03
ENTRYPOINT:     BF   $0                  ; 8080 90 2d - Branch to BGSV - Start Fairbug
A8082:          PI   A811b               ; 8082 28 81 1b
                LR   H,DC                ; 8085 11
                DS   $8                  ; 8086 38
                BF   $4                  ; 8087 94 fa
                LR   A,$7                ; 8089 47
                COM                      ; 808a 18
                INC                      ; 808b 1f
                LR   QL,A                ; 808c 07
                LIS  $8                  ; 808d 78
                LR   $8                  ; 808e 58
                PI   A811d               ; 808f 28 81 1d
                PI   A8578               ; 8092 28 85 78
                LR   A,$b                ; 8095 4b
                AS   $6                  ; 8096 c6
                LR   A,$a                ; 8097 4a
                LNK                      ; 8098 19
                AS   $5                  ; 8099 c5
                BF   $2                  ; 809a 92 bd
                LR   QL,A                ; 809c 07
                LI   $3a                 ; 809d 20 3a
                LR   $1                  ; 809f 51
                PI   A8593               ; 80a0 28 85 93
                LIS  $8                  ; 80a3 78
                LR   $8                  ; 80a4 58
A80a5:          PI   A811d               ; 80a5 28 81 1d
                DS   $8                  ; 80a8 38
                BF   $4                  ; 80a9 94 fb
                DS   $8                  ; 80ab 38
                BF   $0                  ; 80ac 90 8b
BGSV:           DI                       ; 80ae 1a
                LR   $8                  ; 80af 58
                LR   A,IS                ; 80b0 0a
                LISU 7                   ; 80b1 67
                LISL 4                   ; 80b2 6c
                LR   (IS)+,A             ; 80b3 5d
                LR   A,$9                ; 80b4 49
                LR   (IS)+,A             ; 80b5 5d
                LR   J,W                 ; 80b6 1e
                LR   A,$a                ; 80b7 4a
                LR   (IS)+,A             ; 80b8 5d
                LR   A,$b                ; 80b9 4b
                LR   (IS),A              ; 80ba 5c
                LR   H,DC                ; 80bb 11
                DCI  $beb                ; 80bc 2a 0b eb
                LM                       ; 80bf 16
                COM                      ; 80c0 18
                DCI  $beb                ; 80c1 2a 0b eb
                ST                       ; 80c4 17
                DCI  $beb                ; 80c5 2a 0b eb
                XM                       ; 80c8 8c
                DCI  $beb                ; 80c9 2a 0b eb
                BT   4                   ; 80cc 84 04
                DCI  $3eb                ; 80ce 2a 03 eb
A80d1:          LR   A,$a                ; 80d1 4a
                ST                       ; 80d2 17
                LR   A,$b                ; 80d3 4b
                ST                       ; 80d4 17
                XDC                      ; 80d5 2c
                LR   H,DC                ; 80d6 11
                XDC                      ; 80d7 2c
                LR   A,$a                ; 80d8 4a
                ST                       ; 80d9 17
                LR   A,$b                ; 80da 4b
                ST                       ; 80db 17
                LR   A,(IS)-             ; 80dc 4e
                LR   $b                  ; 80dd 5b
                LR   A,(IS)              ; 80de 4c
                LR   $a                  ; 80df 5a
                LR   A,$9                ; 80e0 49
                LR   (IS)-,A             ; 80e1 5e
                LR   A,(IS)              ; 80e2 4c
                LR   $9                  ; 80e3 59
                JMP  A8000               ; 80e4 29 80 00
A80e7:          LI   $e7                 ; 80e7 20 e7
                LR   QL,A                ; 80e9 07
                LR   DC,Q                ; 80ea 0f
                LM                       ; 80eb 16
                LR   KU,A                ; 80ec 04
                LM                       ; 80ed 16
                LR   KL,A                ; 80ee 05
                LR   P,K                 ; 80ef 09
                LM                       ; 80f0 16
                LM                       ; 80f1 16
                LM                       ; 80f2 16
                LR   QU,A                ; 80f3 06
                LM                       ; 80f4 16
                LR   QL,A                ; 80f5 07
                XDC                      ; 80f6 2c
                LR   DC,Q                ; 80f7 0f
                XDC                      ; 80f8 2c
                LM                       ; 80f9 16
                LR   QU,A                ; 80fa 06
                LM                       ; 80fb 16
                LR   QL,A                ; 80fc 07
                LIS  $0                  ; 80fd 70
A80fe:          LR   IS,A                ; 80fe 0b
                LM                       ; 80ff 16
                LR   (IS),A              ; 8100 5c
                LR   A,IS                ; 8101 0a
                INC                      ; 8102 1f
                CI   $e                  ; 8103 25 0e
                BF   $4                  ; 8105 94 f8
                LISU 7                   ; 8107 67
                LR   A,$9                ; 8108 49
                LR   (IS)+,A             ; 8109 5d
                LM                       ; 810a 16
                LR   $9                  ; 810b 59
                LM                       ; 810c 16
                LR   DC,Q                ; 810d 0f
                XDC                      ; 810e 2c
                LR   QL,A                ; 810f 07
                LR   A,$9                ; 8110 49
                LR   QU,A                ; 8111 06
                LR   A,(IS)-             ; 8112 4e
                LR   $9                  ; 8113 59
                LR   W,J                 ; 8114 1d
                LR   A,(IS)-             ; 8115 4e
                LR   $9                  ; 8116 59
                LR   A,(IS)-             ; 8117 4e
                LR   IS,A                ; 8118 0b
                LR   A,$8                ; 8119 48
                POP                      ; 811a 1c
A811b:          LM                       ; 811b 16
                LR   QL,A                ; 811c 07
A811d:          LR   K,P                 ; 811d 08
A811e:          LR   A,$8                ; 811e 48
                COM                      ; 811f 18
                LR   $8                  ; 8120 58
                LR   A,QL                ; 8121 03
                BF   $1                  ; 8122 91 02
                SL   4                   ; 8124 15
A8125:          SR   4                   ; 8125 14
                AI   $30                 ; 8126 24 30
                CI   $39                 ; 8128 25 39
                BT   1                   ; 812a 81 03
                AI   $7                  ; 812c 24 07
A812e:          LR   $1                  ; 812e 51
                PI   A8593               ; 812f 28 85 93
                DS   $8                  ; 8132 38
                BF   $1                  ; 8133 91 ea
                LR   A,QL                ; 8135 03
                AS   $7                  ; 8136 c7
                LR   $7                  ; 8137 57
                PK                       ; 8138 0c
A8139:          LIS  $3                  ; 8139 73
                LR   $8                  ; 813a 58
                LR   IS,A                ; 813b 0b
A813c:          LIS  $4                  ; 813c 74
                LR   $b                  ; 813d 5b
A813e:          PI   TTYI                ; 813e 28 85 53
                NI   $7f                 ; 8141 21 7f
                LR   $7                  ; 8143 57
                CI   $d                  ; 8144 25 0d
                BT   4                   ; 8146 84 3e
                PI   A8593               ; 8148 28 85 93
                LR   A,$7                ; 814b 47
                CI   $2d                 ; 814c 25 2d
                BT   4                   ; 814e 84 33
                CI   $2b                 ; 8150 25 2b
                BT   4                   ; 8152 84 2f
                CI   $3d                 ; 8154 25 3d
                BT   4                   ; 8156 84 30
                CI   $5b                 ; 8158 25 5b
                BT   4                   ; 815a 84 78
                CI   $2f                 ; 815c 25 2f
                BT   1                   ; 815e 81 df
                CI   $46                 ; 8160 25 46
                BF   $1                  ; 8162 91 db
                AI   $d0                 ; 8164 24 d0
                CI   $9                  ; 8166 25 09
                BT   1                   ; 8168 81 07
                CI   $10                 ; 816a 25 10
                BT   1                   ; 816c 81 d1
                AI   $f9                 ; 816e 24 f9
A8170:          DS   $b                  ; 8170 3b
                BF   $1                  ; 8171 91 cc
                LR   $2                  ; 8173 52
                LR   A,(IS)              ; 8174 4c
                SL   4                   ; 8175 15
                AS   $2                  ; 8176 c2
                LR   (IS)+,A             ; 8177 5d
                LIS  $1                  ; 8178 71
                NS   $b                  ; 8179 fb
                BT   4                   ; 817a 84 c3
                LR   A,(IS)-             ; 817c 4e
                BR7  A813e               ; 817d 8f c0
                LIS  $3                  ; 817f 73
                BF   $0                  ; 8180 90 35
A8182:          LR   $9                  ; 8182 59
                BF   $0                  ; 8183 90 03
A8185:          LIS  $d                  ; 8185 7d
                LR   $7                  ; 8186 57
A8187:          LIS  $4                  ; 8187 74
                XS   $b                  ; 8188 eb
                BT   4                   ; 8189 84 1f
                DS   $b                  ; 818b 3b
                BF   $1                  ; 818c 91 1b
                BF   $4                  ; 818e 94 0c
                LIS  $f                  ; 8190 7f
                NS   (IS)                ; 8191 fc
                LR   (IS)-,A             ; 8192 5e
                LR   A,(IS)+             ; 8193 4d
                SL   4                   ; 8194 15
                XS   (IS)                ; 8195 ec
                LR   (IS)-,A             ; 8196 5e
                LR   A,(IS)              ; 8197 4c
                SR   4                   ; 8198 14
                BF   $0                  ; 8199 90 0c
A819b:          DS   $b                  ; 819b 3b
                BT   4                   ; 819c 84 05
                LIS  $f                  ; 819e 7f
                NS   (IS)+               ; 819f fd
                BF   $0                  ; 81a0 90 03
A81a2:          LR   A,(IS)-             ; 81a2 4e
                LR   A,(IS)+             ; 81a3 4d
A81a4:          LR   (IS)-,A             ; 81a4 5e
                LIS  $0                  ; 81a5 70
A81a6:          LR   (IS)+,A             ; 81a6 5d
                LR   A,(IS)+             ; 81a7 4d
A81a8:          DS   $8                  ; 81a8 38
A81a9:          LR   A,$7                ; 81a9 47
                CI   $d                  ; 81aa 25 0d
                BT   4                   ; 81ac 84 05
                CI   $3d                 ; 81ae 25 3d
                BF   $4                  ; 81b0 94 8b
A81b2:          LR   A,$8                ; 81b2 48
                COM                      ; 81b3 18
                AI   $4                  ; 81b4 24 04
A81b6:          LR   $8                  ; 81b6 58
                BF   $0                  ; 81b7 90 44
                LR   A,KL                ; 81b9 01
                BF   $e                  ; 81ba 9e 06
                LR   A,$2                ; 81bc 42
                LR   A,$7                ; 81bd 47
                LR   A,(IS)+             ; 81be 4d
                LR   $0                  ; 81bf 50
                LISL 2                   ; 81c0 6a
A81c1:          db   $5f                 
                db   $a2                 
                db   $ff                 
                LIS  $0                  ; 81c4 70
                LIS  $3                  ; 81c5 73
                LIS  $6                  ; 81c6 76
                LISL 5                   ; 81c7 6d
A81c8:          BT   2                   ; 81c8 82 ff
                INS  8                   ; 81ca a8
                BF   $a                  ; 81cb 9a 04
                INS  5                   ; 81cd a5
                NS   (IS)                ; 81ce fc
                BF   $a                  ; 81cf 9a 02
A81d1:          LR   A,$b                ; 81d1 4b
A81d2:          LR   QL,A                ; 81d2 07
A81d3:          PI   A8578               ; 81d3 28 85 78
                LI   $3f                 ; 81d6 20 3f
                LR   $1                  ; 81d8 51
                PI   A8593               ; 81d9 28 85 93
                PI   TTYI                ; 81dc 28 85 53
                LR   $3                  ; 81df 53
                PI   A8593               ; 81e0 28 85 93
                LR   A,$3                ; 81e3 43
                NI   $7f                 ; 81e4 21 7f
                CI   $40                 ; 81e6 25 40
                BT   1                   ; 81e8 81 ea
                CI   $58                 ; 81ea 25 58
                BF   $1                  ; 81ec 91 e6
                NI   $1f                 ; 81ee 21 1f
                DCI  $81b8               ; 81f0 2a 81 b8
                ADC                      ; 81f3 8e
                LM                       ; 81f4 16
                LR   KL,A                ; 81f5 05
A81f6:          INC                      ; 81f6 1f
                BT   4                   ; 81f7 84 db
                JMP  A8139               ; 81f9 29 81 39
A81fc:          LR   A,QL                ; 81fc 03
                LR   $b                  ; 81fd 5b
                LIS  $2                  ; 81fe 72
                NS   $8                  ; 81ff f8
                BT   4                   ; 8200 84 18
                LR   A,KL                ; 8202 01
                CI   $2                  ; 8203 25 02
                BF   $4                  ; 8205 94 04
                JMP  A829a               ; 8207 29 82 9a
A820a:          CI   $fc                 ; 820a 25 fc
                BT   4                   ; 820c 84 17
                LR   A,$6                ; 820e 46
                OI   $7                  ; 820f 22 07
                LR   $6                  ; 8211 56
                LI   $f8                 ; 8212 20 f8
                NS   $4                  ; 8214 f4
                LR   $4                  ; 8215 54
                LR   $b                  ; 8216 5b
                LR   A,$3                ; 8217 43
                LR   $a                  ; 8218 5a
A8219:          LR   A,KL                ; 8219 01
                AI   $b9                 ; 821a 24 b9
                LR   KL,A                ; 821c 05
                LI   $82                 ; 821d 20 82
                LNK                      ; 821f 19
                LR   KU,A                ; 8220 04
                LR   P,K                 ; 8221 09
                LR   A,QU                ; 8222 02
                POP                      ; 8223 1c
A8224:          LR   A,$a                ; 8224 4a
                COM                      ; 8225 18
                INC                      ; 8226 1f
                AS   $3                  ; 8227 c3
                BT   4                   ; 8228 84 0b
                BF   $1                  ; 822a 91 0f
A822c:          LR   DC,H                ; 822c 10
                LR   A,$3                ; 822d 43
                LR   $a                  ; 822e 5a
                LR   A,$4                ; 822f 44
                LR   $b                  ; 8230 5b
                LIS  $0                  ; 8231 70
                BF   $0                  ; 8232 90 26
A8234:          LR   A,$b                ; 8234 4b
                COM                      ; 8235 18
                INC                      ; 8236 1f
                AS   $4                  ; 8237 c4
                BT   1                   ; 8238 81 f3
A823a:          LR   A,$3                ; 823a 43
                COM                      ; 823b 18
                LR   $1                  ; 823c 51
                LR   A,$4                ; 823d 44
                COM                      ; 823e 18
                INC                      ; 823f 1f
                LR   J,W                 ; 8240 1e
                AS   $6                  ; 8241 c6
                BF   $2                  ; 8242 92 02
                LR   J,W                 ; 8244 1e
A8245:          AS   $b                  ; 8245 cb
                LR   $b                  ; 8246 5b
                LR   A,$1                ; 8247 41
                LNK                      ; 8248 19
                LR   W,J                 ; 8249 1d
                LNK                      ; 824a 19
                AS   $5                  ; 824b c5
                AS   $a                  ; 824c ca
                LR   $a                  ; 824d 5a
                LR   DC,H                ; 824e 10
                LR   A,$5                ; 824f 45
                LR   $a                  ; 8250 5a
                LR   A,$6                ; 8251 46
                LR   $b                  ; 8252 5b
                LR   A,$3                ; 8253 43
                LR   $5                  ; 8254 55
                LR   A,$4                ; 8255 44
                LR   $6                  ; 8256 56
                LI   $fe                 ; 8257 20 fe
A8259:          LR   $7                  ; 8259 57
                XDC                      ; 825a 2c
                LR   DC,H                ; 825b 10
A825c:          LR   H,DC                ; 825c 11
                LM                       ; 825d 16
                XDC                      ; 825e 2c
                ST                       ; 825f 17
                LR   A,$7                ; 8260 47
                ADC                      ; 8261 8e
                XDC                      ; 8262 2c
                ADC                      ; 8263 8e
                LR   A,$a                ; 8264 4a
                XS   $5                  ; 8265 e5
                BF   $4                  ; 8266 94 f5
                LR   A,$b                ; 8268 4b
                XS   $6                  ; 8269 e6
                BF   $4                  ; 826a 94 f1
A826c:          JMP  A81d1               ; 826c 29 81 d1
A826f:          LI   $e0                 ; 826f 20 e0
                LR   QL,A                ; 8271 07
                LR   DC,Q                ; 8272 0f
                LR   A,$3                ; 8273 43
                LR   $a                  ; 8274 5a
                ST                       ; 8275 17
                LR   A,$4                ; 8276 44
                LR   $b                  ; 8277 5b
                ST                       ; 8278 17
                XDC                      ; 8279 2c
                LR   DC,H                ; 827a 10
                LM                       ; 827b 16
                XDC                      ; 827c 2c
                ST                       ; 827d 17
                LR   DC,H                ; 827e 10
                LIS  $c                  ; 827f 7c
                ST                       ; 8280 17
                LI   $fb                 ; 8281 20 fb
                LR   QL,A                ; 8283 07
                LR   DC,Q                ; 8284 0f
                LI   $80                 ; 8285 20 80
                ST                       ; 8287 17
                LI   $af                 ; 8288 20 af
                ST                       ; 828a 17
                BF   $0                  ; 828b 90 e0
A828d:          LI   $e0                 ; 828d 20 e0
                LR   QL,A                ; 828f 07
                LR   DC,Q                ; 8290 0f
                LM                       ; 8291 16
                LR   $a                  ; 8292 5a
                LM                       ; 8293 16
                LR   $b                  ; 8294 5b
                LM                       ; 8295 16
                LR   DC,H                ; 8296 10
                ST                       ; 8297 17
                BF   $0                  ; 8298 90 d3
A829a:          LR   A,$9                ; 829a 49
                CI   $2b                 ; 829b 25 2b
                BT   4                   ; 829d 84 0b
                LR   A,$6                ; 829f 46
                COM                      ; 82a0 18
                INC                      ; 82a1 1f
                LR   J,W                 ; 82a2 1e
                LR   $6                  ; 82a3 56
                LR   A,$5                ; 82a4 45
                COM                      ; 82a5 18
                LR   W,J                 ; 82a6 1d
                LNK                      ; 82a7 19
                LR   $5                  ; 82a8 55
A82a9:          LR   A,$4                ; 82a9 44
                AS   $6                  ; 82aa c6
                LR   $4                  ; 82ab 54
                LR   A,$3                ; 82ac 43
                LNK                      ; 82ad 19
                AS   $5                  ; 82ae c5
                LR   QL,A                ; 82af 07
                PI   A811d               ; 82b0 28 81 1d
                LR   A,$4                ; 82b3 44
                LR   QL,A                ; 82b4 07
                PI   A811d               ; 82b5 28 81 1d
A82b8:          BF   $0                  ; 82b8 90 b3
                LIS  $8                  ; 82ba 78
                BF   $0                  ; 82bb 90 5e
                BF   $0                  ; 82bd 90 cf
                DS   $8                  ; 82bf 38
                BF   $1                  ; 82c0 91 f7
                LR   A,$9                ; 82c2 49
                LR   DC,H                ; 82c3 10
                CI   $c                  ; 82c4 25 0c
                BF   $4                  ; 82c6 94 04
                JMP  A84e6               ; 82c8 29 84 e6
A82cb:          CI   $d                  ; 82cb 25 0d
                BF   $1                  ; 82cd 91 0b
                BF   $4                  ; 82cf 94 03
                LR   A,$3                ; 82d1 43
                ST                       ; 82d2 17
A82d3:          LR   A,$4                ; 82d3 44
                ST                       ; 82d4 17
                LR   H,DC                ; 82d5 11
                LR   A,$b                ; 82d6 4b
                BF   $0                  ; 82d7 90 13
A82d9:          LR   A,$b                ; 82d9 4b
                LR   IS,A                ; 82da 0b
                AI   $ef                 ; 82db 24 ef
                LR   QL,A                ; 82dd 07
                LR   DC,Q                ; 82de 0f
                INC                      ; 82df 1f
                LR   A,$4                ; 82e0 44
                BT   1                   ; 82e1 81 04
                ST                       ; 82e3 17
                BF   $0                  ; 82e4 90 02
A82e6:          LR   (IS),A              ; 82e6 5c
A82e7:          LR   A,$b                ; 82e7 4b
                INC                      ; 82e8 1f
                NI   $3f                 ; 82e9 21 3f
A82eb:          LR   QL,A                ; 82eb 07
A82ec:          LI   $20                 ; 82ec 20 20
                LR   $1                  ; 82ee 51
                PI   A8593               ; 82ef 28 85 93
                LIS  $6                  ; 82f2 76
                LR   KL,A                ; 82f3 05
                JMP  A81f6               ; 82f4 29 81 f6
                LR   A,$6                ; 82f7 46
                LR   QL,A                ; 82f8 07
                BF   $0                  ; 82f9 90 f2
                LR   $a                  ; 82fb 5a
                LI   $eb                 ; 82fc 20 eb
                BF   $0                  ; 82fe 90 3f
                LIS  $d                  ; 8300 7d
                XS   $9                  ; 8301 e9
                BT   4                   ; 8302 84 40
                BF   $0                  ; 8304 90 2e
                JMP  A8036               ; 8306 29 80 36
                DS   $8                  ; 8309 38
                BF   $1                  ; 830a 91 0a
                LR   $a                  ; 830c 5a
                LI   $e7                 ; 830d 20 e7
                LR   $b                  ; 830f 5b
                LR   DC,H                ; 8310 10
                LR   A,$3                ; 8311 43
                ST                       ; 8312 17
                LR   A,$4                ; 8313 44
                ST                       ; 8314 17
A8315:          JMP  A80e7               ; 8315 29 80 e7
                LI   $3c                 ; 8318 20 3c
A831a:          LR   $4                  ; 831a 54
                LR   $6                  ; 831b 56
                LIS  $0                  ; 831c 70
                LR   $3                  ; 831d 53
                LR   $5                  ; 831e 55
                LIS  $f                  ; 831f 7f
                LR   $9                  ; 8320 59
                BF   $0                  ; 8321 90 65
                JMP  A8451               ; 8323 29 84 51
                LIS  $c                  ; 8326 7c
                BF   $0                  ; 8327 90 3b
                JMP  A8446               ; 8329 29 84 46
                LIS  $a                  ; 832c 7a
                BF   $0                  ; 832d 90 35
                LR   DC,H                ; 832f 10
                LIS  $1                  ; 8330 71
                ADC                      ; 8331 8e
                LR   H,DC                ; 8332 11
A8333:          LR   A,$a                ; 8333 4a
                LR   $3                  ; 8334 53
                LR   $5                  ; 8335 55
                LR   A,$b                ; 8336 4b
                LR   $4                  ; 8337 54
                LR   $6                  ; 8338 56
                BF   $0                  ; 8339 90 36
                LR   $a                  ; 833b 5a
                LI   $e7                 ; 833c 20 e7
A833e:          AS   $4                  ; 833e c4
                AS   $4                  ; 833f c4
                LR   $b                  ; 8340 5b
                LIS  $d                  ; 8341 7d
                LR   $9                  ; 8342 59
A8343:          LR   DC,H                ; 8343 10
                LI   $20                 ; 8344 20 20
                LR   $1                  ; 8346 51
                PI   A8593               ; 8347 28 85 93
                PI   A811b               ; 834a 28 81 1b
                PI   A811b               ; 834d 28 81 1b
A8350:          JMP  A81d1               ; 8350 29 81 d1
                LI   $3e                 ; 8353 20 3e
                BF   $0                  ; 8355 90 c4
                LIS  $1                  ; 8357 71
A8358:          LR   QL,A                ; 8358 07
                BF   $0                  ; 8359 90 73
                LIS  $0                  ; 835b 70
                BF   $0                  ; 835c 90 fb
                JMP  A826f               ; 835e 29 82 6f
                LI   $f                  ; 8361 20 0f
A8363:          LR   $9                  ; 8363 59
                DS   $8                  ; 8364 38
                BF   $1                  ; 8365 91 ea
                BF   $4                  ; 8367 94 05
                LR   A,$3                ; 8369 43
                LR   $5                  ; 836a 55
                LR   A,$4                ; 836b 44
                LR   $6                  ; 836c 56
A836d:          PI   A8578               ; 836d 28 85 78
A8370:          LI   $20                 ; 8370 20 20
                LR   $1                  ; 8372 51
                PI   A8593               ; 8373 28 85 93
                LR   A,$9                ; 8376 49
                AI   $43                 ; 8377 24 43
                LR   $1                  ; 8379 51
                PI   A8593               ; 837a 28 85 93
                LR   A,$3                ; 837d 43
                LR   QL,A                ; 837e 07
                PI   A811d               ; 837f 28 81 1d
                LR   A,$4                ; 8382 44
                LR   QL,A                ; 8383 07
                PI   A811d               ; 8384 28 81 1d
A8387:          LI   $3d                 ; 8387 20 3d
                LR   $1                  ; 8389 51
                PI   A8593               ; 838a 28 85 93
A838d:          LR   A,$3                ; 838d 43
                LR   $a                  ; 838e 5a
                LR   A,$4                ; 838f 44
                LR   $b                  ; 8390 5b
                LR   A,$9                ; 8391 49
                CI   $c                  ; 8392 25 0c
                BT   4                   ; 8394 84 60
                CI   $f                  ; 8396 25 0f
                BF   $4                  ; 8398 94 14
                LR   A,$4                ; 839a 44
                LR   IS,A                ; 839b 0b
                LR   A,IS                ; 839c 0a
                CI   $f                  ; 839d 25 0f
                BT   1                   ; 839f 81 08
                LR   A,(IS)              ; 83a1 4c
                LR   QL,A                ; 83a2 07
                PI   A811d               ; 83a3 28 81 1d
                BF   $0                  ; 83a6 90 0a
A83a8:          AI   $ef                 ; 83a8 24 ef
                LR   $b                  ; 83aa 5b
                LR   A,QU                ; 83ab 02
                LR   $a                  ; 83ac 5a
A83ad:          LR   DC,H                ; 83ad 10
                PI   A811b               ; 83ae 28 81 1b
A83b1:          LI   $20                 ; 83b1 20 20
                LR   $1                  ; 83b3 51
                PI   A8593               ; 83b4 28 85 93
                LR   A,$4                ; 83b7 44
                LR   $b                  ; 83b8 5b
                XS   $6                  ; 83b9 e6
                LR   A,$3                ; 83ba 43
                LR   $a                  ; 83bb 5a
                BF   $4                  ; 83bc 94 04
                XS   $5                  ; 83be e5
                BT   4                   ; 83bf 84 90
A83c1:          LR   A,$4                ; 83c1 44
                INC                      ; 83c2 1f
                LR   $4                  ; 83c3 54
                LR   A,$3                ; 83c4 43
                LNK                      ; 83c5 19
                LR   $3                  ; 83c6 53
                LIS  $7                  ; 83c7 77
                NS   $4                  ; 83c8 f4
                BT   4                   ; 83c9 84 a3
                BF   $0                  ; 83cb 90 c1
A83cd:          LIS  $0                  ; 83cd 70
                LR   $b                  ; 83ce 5b
                LI   $92                 ; 83cf 20 92
                LR   $1                  ; 83d1 51
                PI   A8593               ; 83d2 28 85 93
A83d5:          LIS  $3                  ; 83d5 73
                LR   $8                  ; 83d6 58
                NS   $7                  ; 83d7 f7
                LR   $7                  ; 83d8 57
A83d9:          LR   A,$3                ; 83d9 43
                LR   $a                  ; 83da 5a
                LR   DC,H                ; 83db 10
                LR   A,$7                ; 83dc 47
                LR   $4                  ; 83dd 54
A83de:          LI   $30                 ; 83de 20 30
                LR   $6                  ; 83e0 56
A83e1:          LIS  $0                  ; 83e1 70
                LR   $1                  ; 83e2 51
                PI   A8593               ; 83e3 28 85 93
                DS   $6                  ; 83e6 36
                BF   $4                  ; 83e7 94 f9
                DS   $8                  ; 83e9 38
                BT   1                   ; 83ea 81 28
                LI   $94                 ; 83ec 20 94
                LR   $1                  ; 83ee 51
A83ef:          PI   A8593               ; 83ef 28 85 93
                JMP  A80ae               ; 83f2 29 80 ae
A83f5:          LI   $e0                 ; 83f5 20 e0
                LR   QL,A                ; 83f7 07
                LR   DC,Q                ; 83f8 0f
                LR   A,$4                ; 83f9 44
                CI   $f                  ; 83fa 25 0f
                BT   2                   ; 83fc 82 12
                LI   $26                 ; 83fe 20 26
                ST                       ; 8400 17
                LR   A,$4                ; 8401 44
A8402:          ST                       ; 8402 17
                LIS  $7                  ; 8403 77
                ST                       ; 8404 17
                LI   $29                 ; 8405 20 29
                ST                       ; 8407 17
                LI   $83                 ; 8408 20 83
                ST                       ; 840a 17
                LI   $a3                 ; 840b 20 a3
                ST                       ; 840d 17
                LR   P0,Q                ; 840e 0d
A840f:          AI   $a0                 ; 840f 24 a0
                BF   $0                  ; 8411 90 f0
A8413:          LIS  $0                  ; 8413 70
                LR   $6                  ; 8414 56
                LR   A,QL                ; 8415 03
                XS   $6                  ; 8416 e6
                BT   4                   ; 8417 84 20
A8419:          LR   A,$8                ; 8419 48
                NS   $8                  ; 841a f8
                LM                       ; 841b 16
                BF   $4                  ; 841c 94 02
                SL   4                   ; 841e 15
A841f:          SR   4                   ; 841f 14
                XI   $4f                 ; 8420 23 4f
                LR   $1                  ; 8422 51
                PI   A8593               ; 8423 28 85 93
                DS   $6                  ; 8426 36
                BF   $4                  ; 8427 94 f1
                DS   $4                  ; 8429 34
                BT   1                   ; 842a 81 e8
                DS   $8                  ; 842c 38
                BT   1                   ; 842d 81 ab
A842f:          LR   A,$3                ; 842f 43
                INC                      ; 8430 1f
                AS   $7                  ; 8431 c7
                LR   $3                  ; 8432 53
                XS   $5                  ; 8433 e5
                BT   4                   ; 8434 84 a9
                BF   $0                  ; 8436 90 9e
A8438:          LM                       ; 8438 16
                LR   $1                  ; 8439 51
                PI   A8593               ; 843a 28 85 93
                DS   $6                  ; 843d 36
                BF   $4                  ; 843e 94 f9
                DS   $4                  ; 8440 34
                BT   1                   ; 8441 81 d1
                LR   $8                  ; 8443 58
                BF   $0                  ; 8444 90 ea
A8446:          LI   $91                 ; 8446 20 91
                LR   $1                  ; 8448 51
                PI   A8593               ; 8449 28 85 93
                DCI  TTYI                ; 844c 2a 85 53
                BF   $0                  ; 844f 90 0c
A8451:          DCI  A853d               ; 8451 2a 85 3d
                LIS  $0                  ; 8454 70
A8455:          OUTS 9                   ; 8455 b9
                OUTS 8                   ; 8456 b8
                INS  8                   ; 8457 a8
                SR   1                   ; 8458 12
                SL   4                   ; 8459 15
                BF   $1                  ; 845a 91 fa
A845c:          LIS  $0                  ; 845c 70
                LR   $6                  ; 845d 56
                LR   Q,DC                ; 845e 0e
                LR   $7                  ; 845f 57
A8460:          PI   A853c               ; 8460 28 85 3c
                SL   1                   ; 8463 13
                SR   1                   ; 8464 12
                CI   $3a                 ; 8465 25 3a
                BT   4                   ; 8467 84 4f
                CI   $53                 ; 8469 25 53
                BT   4                   ; 846b 84 31
                CI   $2a                 ; 846d 25 2a
                BT   4                   ; 846f 84 38
                XI   $58                 ; 8471 23 58
                BF   $4                  ; 8473 94 ec
                LR   $7                  ; 8475 57
                LIS  $8                  ; 8476 78
                LR   $5                  ; 8477 55
                LR   $6                  ; 8478 56
A8479:          PI   A8515               ; 8479 28 85 15
                ST                       ; 847c 17
                DS   $5                  ; 847d 35
                BF   $4                  ; 847e 94 fa
                PI   A853c               ; 8480 28 85 3c
                NI   $3f                 ; 8483 21 3f
                AI   $d0                 ; 8485 24 d0
                BT   2                   ; 8487 82 03
                AI   $39                 ; 8489 24 39
A848b:          XS   $7                  ; 848b e7
                SL   4                   ; 848c 15
                BT   4                   ; 848d 84 d2
A848f:          LI   $43                 ; 848f 20 43
                LR   $1                  ; 8491 51
                PI   A8593               ; 8492 28 85 93
                LI   $4b                 ; 8495 20 4b
                LR   $1                  ; 8497 51
                PI   A8593               ; 8498 28 85 93
                BF   $0                  ; 849b 90 0f
A849d:          PI   A8515               ; 849d 28 85 15
                LR   $a                  ; 84a0 5a
                PI   A8515               ; 84a1 28 85 15
                LR   $b                  ; 84a4 5b
                LR   DC,H                ; 84a5 10
                BF   $0                  ; 84a6 90 b9
A84a8:          NS   $6                  ; 84a8 f6
                BT   4                   ; 84a9 84 b6
A84ab:          LI   $93                 ; 84ab 20 93
                LR   $1                  ; 84ad 51
                JMP  A83ef               ; 84ae 29 83 ef
                NOP                      ; 84b1 2b
                NOP                      ; 84b2 2b
                NOP                      ; 84b3 2b
                NOP                      ; 84b4 2b
                NOP                      ; 84b5 2b
                NOP                      ; 84b6 2b
A84b7:          LIS  $0                  ; 84b7 70
                LR   $7                  ; 84b8 57
                COM                      ; 84b9 18
                LR   $6                  ; 84ba 56
                PI   A8515               ; 84bb 28 85 15
                LR   $5                  ; 84be 55
                NS   $5                  ; 84bf f5
                BT   4                   ; 84c0 84 ea
                PI   A8515               ; 84c2 28 85 15
                LR   $a                  ; 84c5 5a
                PI   A8515               ; 84c6 28 85 15
                LR   $b                  ; 84c9 5b
                LR   DC,H                ; 84ca 10
                PI   A8515               ; 84cb 28 85 15
                NS   $b                  ; 84ce fb
                BF   $4                  ; 84cf 94 90
A84d1:          PI   A8515               ; 84d1 28 85 15
                ST                       ; 84d4 17
                DS   $5                  ; 84d5 35
                BF   $4                  ; 84d6 94 fa
                NOP                      ; 84d8 2b
                NOP                      ; 84d9 2b
                NOP                      ; 84da 2b
                NOP                      ; 84db 2b
                PI   A8515               ; 84dc 28 85 15
                LR   A,$7                ; 84df 47
                NS   $7                  ; 84e0 f7
                BF   $4                  ; 84e1 94 ad
                JMP  A8460               ; 84e3 29 84 60
A84e6:          LI   $df                 ; 84e6 20 df
                LR   QL,A                ; 84e8 07
                LR   DC,Q                ; 84e9 0f
                LR   A,$6                ; 84ea 46
                LR   $b                  ; 84eb 5b
                CI   $f                  ; 84ec 25 0f
                BT   2                   ; 84ee 82 1a
                LI   $27                 ; 84f0 20 27
                ST                       ; 84f2 17
                LR   A,$6                ; 84f3 46
                ST                       ; 84f4 17
                LI   $44                 ; 84f5 20 44
                ST                       ; 84f7 17
                LI   $27                 ; 84f8 20 27
                ST                       ; 84fa 17
                LR   A,$6                ; 84fb 46
A84fc:          ST                       ; 84fc 17
                LI   $29                 ; 84fd 20 29
                ST                       ; 84ff 17
                LI   $82                 ; 8500 20 82
                ST                       ; 8502 17
                LI   $f7                 ; 8503 20 f7
                ST                       ; 8505 17
                LI   $0                  ; 8506 20 00
                LR   P0,Q                ; 8508 0d
A8509:          AI   $b0                 ; 8509 24 b0
                ST                       ; 850b 17
                LI   $44                 ; 850c 20 44
                ST                       ; 850e 17
                LI   $b0                 ; 850f 20 b0
                AS   $6                  ; 8511 c6
                BF   $0                  ; 8512 90 e9
                NOP                      ; 8514 2b
A8515:          LR   K,P                 ; 8515 08
                LIS  $2                  ; 8516 72
                LR   $8                  ; 8517 58
A8518:          LR   A,$b                ; 8518 4b
                SL   4                   ; 8519 15
                LR   $b                  ; 851a 5b
                PI   A853c               ; 851b 28 85 3c
                NI   $3f                 ; 851e 21 3f
                AI   $d0                 ; 8520 24 d0
                BT   2                   ; 8522 82 03
                AI   $39                 ; 8524 24 39
A8526:          AS   $b                  ; 8526 cb
                LR   $b                  ; 8527 5b
                LR   A,$6                ; 8528 46
                NS   $6                  ; 8529 f6
                BF   $1                  ; 852a 91 04
                LR   A,$b                ; 852c 4b
                AS   $7                  ; 852d c7
                LR   $7                  ; 852e 57
A852f:          DS   $8                  ; 852f 38
                BF   $4                  ; 8530 94 e7
                LR   A,$6                ; 8532 46
                NS   $6                  ; 8533 f6
                BT   1                   ; 8534 81 04
                LR   A,$7                ; 8536 47
                AS   $b                  ; 8537 cb
                LR   $7                  ; 8538 57
A8539:          LR   A,$b                ; 8539 4b
                LR   P,K                 ; 853a 09
                POP                      ; 853b 1c
A853c:          LR   P0,Q                ; 853c 0d
A853d:          INS  8                   ; 853d a8
                SL   1                   ; 853e 13
                BF   $1                  ; 853f 91 fd
                LIS  $f                  ; 8541 7f
                COM                      ; 8542 18
A8543:          INC                      ; 8543 1f
                BF   $4                  ; 8544 94 fe
                INS  9                   ; 8546 a9
                COM                      ; 8547 18
                LR   $1                  ; 8548 51
                LIS  $9                  ; 8549 79
                OUTS 8                   ; 854a b8
A854b:          INS  8                   ; 854b a8
                SL   1                   ; 854c 13
                BT   1                   ; 854d 81 fd
                LIS  $1                  ; 854f 71
                OUTS 8                   ; 8550 b8
                LR   A,$1                ; 8551 41
                POP                      ; 8552 1c
; =============================================================================
; TTYI - Input 1 byte from TTY type device, without echo. Data is 11 
;        bits/character being received on Port 8 Pin 7.
; =============================================================================
; Address: H'8553'
;
; Enter:   R0 -- Delay Counter
;
; Exit:    W Reg -- Destroyed
;          PC1   -- User return address
;          Accum -- Input byte
;          R0    -- Unchanged
;          R1    -- Input byte
;          R2    -- -1
; =============================================================================
TTYI :          INS  8                   ; 8553 a8
                BF   $1                  ; 8554 91 fe
                LR   A,$0                ; 8556 40
A8557:          BF   $0                  ; 8557 90 01
A8559:          AI   $1                  ; 8559 24 01
                BF   $4                  ; 855b 94 fb
                INS  8                   ; 855d a8
                BF   $1                  ; 855e 91 f4
A8560:          LIS  $9                  ; 8560 79
                LR   $2                  ; 8561 52
A8562:          NI   $80                 ; 8562 21 80
                AS   $1                  ; 8564 c1
                DS   $2                  ; 8565 32
                BF   $1                  ; 8566 91 10
                BT   4                   ; 8568 84 02
                SR   1                   ; 856a 12
A856b:          LR   $1                  ; 856b 51
                LR   A,$0                ; 856c 40
A856d:          OUTS 11                  ; 856d bb
                OUTS 11                  ; 856e bb
                OUTS 11                  ; 856f bb
                AI   $1                  ; 8570 24 01
                BF   $4                  ; 8572 94 fa
                INS  8                   ; 8574 a8
                BF   $0                  ; 8575 90 ec
A8577:          POP                      ; 8577 1c
A8578:          LR   K,P                 ; 8578 08
                LIS  $d                  ; 8579 7d
                LR   $1                  ; 857a 51
                PI   A8593               ; 857b 28 85 93
                LIS  $a                  ; 857e 7a
                LR   $1                  ; 857f 51
                PI   A8593               ; 8580 28 85 93
                PI   A8593               ; 8583 28 85 93
                PI   A8593               ; 8586 28 85 93
                PI   A8593               ; 8589 28 85 93
                PI   A8593               ; 858c 28 85 93
                PI   A8593               ; 858f 28 85 93
                PK                       ; 8592 0c
A8593:          LIS  $b                  ; 8593 7b
                LR   $2                  ; 8594 52
                LIS  $0                  ; 8595 70
                OUTS 8                   ; 8596 b8
A8597:          LR   A,$0                ; 8597 40
A8598:          OUTS 11                  ; 8598 bb
                OUTS 11                  ; 8599 bb
                OUTS 11                  ; 859a bb
                AI   $1                  ; 859b 24 01
                BF   $4                  ; 859d 94 fa
                DS   $2                  ; 859f 32
                BF   $4                  ; 85a0 94 02
                POP                      ; 85a2 1c
A85a3:          LIS  $1                  ; 85a3 71
                NS   $1                  ; 85a4 f1
                OUTS 8                   ; 85a5 b8
                LR   A,$1                ; 85a6 41
                SR   1                   ; 85a7 12
                AI   $80                 ; 85a8 24 80
                LR   $1                  ; 85aa 51
                BF   $0                  ; 85ab 90 eb
A85ad:          LIS  $0                  ; 85ad 70
                LR   $2                  ; 85ae 52
                LI   $7f                 ; 85af 20 7f
                OUTS 0                   ; 85b1 b0
                LISU 7                   ; 85b2 67
                LISL 0                   ; 85b3 68
                INC                      ; 85b4 1f
                LR   (IS)+,A             ; 85b5 5d
                LR   A,QU                ; 85b6 02
                LR   (IS)-,A             ; 85b7 5e
A85b8:          LISU 6                   ; 85b8 66
                LISL 3                   ; 85b9 6b
                LIS  $0                  ; 85ba 70
A85bb:          LR   (IS)-,A             ; 85bb 5e
                BR7  A85bb               ; 85bc 8f fe
                LIS  $4                  ; 85be 74
                LR   $7                  ; 85bf 57
                DCI  Reset               ; 85c0 2a 00 00
                LR   Q,DC                ; 85c3 0e
                PI   A8713               ; 85c4 28 87 13
A85c7:          PI   A8731               ; 85c7 28 87 31
                LI   $12                 ; 85ca 20 12
                XS   $0                  ; 85cc e0
                BT   4                   ; 85cd 84 17
                AI   $fe                 ; 85cf 24 fe
                BT   4                   ; 85d1 84 13
                LIS  $6                  ; 85d3 76
                LR   $6                  ; 85d4 56
                LI   $20                 ; 85d5 20 20
                LR   $5                  ; 85d7 55
                LR   A,$0                ; 85d8 40
                INC                      ; 85d9 1f
                BF   $4                  ; 85da 94 ec
A85dc:          PI   A8731               ; 85dc 28 87 31
                LR   A,$0                ; 85df 40
                INC                      ; 85e0 1f
                BT   4                   ; 85e1 84 fa
                BF   $0                  ; 85e3 90 0e
A85e5:          XS   $5                  ; 85e5 e5
                BT   4                   ; 85e6 84 04
                DS   $5                  ; 85e8 35
                BF   $0                  ; 85e9 90 dd
A85eb:          DS   $6                  ; 85eb 36
                BF   $4                  ; 85ec 94 da
                LIS  $6                  ; 85ee 76
                LR   $6                  ; 85ef 56
                BF   $0                  ; 85f0 90 eb
A85f2:          LR   H,DC                ; 85f2 11
                LI   $10                 ; 85f3 20 10
                NS   $0                  ; 85f5 f0
                BF   $4                  ; 85f6 94 04
                JMP  A8697               ; 85f8 29 86 97
A85fb:          DCI  A860b               ; 85fb 2a 86 0b
                LIS  $f                  ; 85fe 7f
                NS   $0                  ; 85ff f0
                LR   $0                  ; 8600 50
                BT   4                   ; 8601 84 06
A8603:          LIS  $3                  ; 8603 73
                ADC                      ; 8604 8e
                DS   $0                  ; 8605 30
                BF   $4                  ; 8606 94 fc
A8608:          LR   Q,DC                ; 8608 0e
                LR   DC,H                ; 8609 10
                LR   P0,Q                ; 860a 0d
A860b:          JMP  A865c               ; 860b 29 86 5c
                JMP  A8623               ; 860e 29 86 23
                JMP  A8650               ; 8611 29 86 50
                JMP  A86d2               ; 8614 29 86 d2
                JMP  A86ef               ; 8617 29 86 ef
                JMP  A8664               ; 861a 29 86 64
                JMP  A8640               ; 861d 29 86 40
                JMP  A8683               ; 8620 29 86 83
A8623:          LIS  $1                  ; 8623 71
                NS   $2                  ; 8624 f2
                BT   4                   ; 8625 84 17
                LIS  $2                  ; 8627 72
                XS   $7                  ; 8628 e7
                BT   4                   ; 8629 84 9d
                LI   $ff                 ; 862b 20 ff
                ADC                      ; 862d 8e
                LISL 4                   ; 862e 6c
                LR   A,(IS)+             ; 862f 4d
                SL   4                   ; 8630 15
                XS   (IS)                ; 8631 ec
                ST                       ; 8632 17
                PI   A871c               ; 8633 28 87 1c
A8636:          PI   A8713               ; 8636 28 87 13
A8639:          LIS  $2                  ; 8639 72
A863a:          LR   $7                  ; 863a 57
                BF   $0                  ; 863b 90 8b
A863d:          LIS  $4                  ; 863d 74
                BF   $0                  ; 863e 90 fb
A8640:          LI   $ff                 ; 8640 20 ff
                OUTS 1                   ; 8642 b1
                LI   $c0                 ; 8643 20 c0
                OUTS 0                   ; 8645 b0
                LIS  $0                  ; 8646 70
                OUTS 14                  ; 8647 be
                PI   A8702               ; 8648 28 87 02
                LISU 7                   ; 864b 67
                LISL 1                   ; 864c 69
                LR   A,(IS)              ; 864d 4c
                LR   QU,A                ; 864e 06
                PK                       ; 864f 0c
A8650:          PI   A871c               ; 8650 28 87 1c
A8653:          PI   A8713               ; 8653 28 87 13
                LIS  $1                  ; 8656 71
                NS   $2                  ; 8657 f2
                BF   $4                  ; 8658 94 e0
                BF   $0                  ; 865a 90 e2
A865c:          PI   A8727               ; 865c 28 87 27
                PI   A8702               ; 865f 28 87 02
                BF   $0                  ; 8662 90 f0
A8664:          LIS  $1                  ; 8664 71
                NS   $2                  ; 8665 f2
                BF   $4                  ; 8666 94 0c
                LIS  $1                  ; 8668 71
                XS   $2                  ; 8669 e2
                LR   $2                  ; 866a 52
                LISU 7                   ; 866b 67
                LISL 0                   ; 866c 68
                LR   A,(IS)              ; 866d 4c
                OI   $40                 ; 866e 22 40
                LR   (IS),A              ; 8670 5c
                BF   $0                  ; 8671 90 c7
A8673:          XS   $2                  ; 8673 e2
                LR   $2                  ; 8674 52
                LISU 7                   ; 8675 67
                LISL 0                   ; 8676 68
                LI   $40                 ; 8677 20 40
                XS   (IS)                ; 8679 ec
                LR   (IS),A              ; 867a 5c
A867b:          PI   A8702               ; 867b 28 87 02
                PI   A8713               ; 867e 28 87 13
                BF   $0                  ; 8681 90 bb
A8683:          LIS  $1                  ; 8683 71
                NS   $2                  ; 8684 f2
                BF   $4                  ; 8685 94 08
                LIS  $4                  ; 8687 74
                XS   $7                  ; 8688 e7
                BT   4                   ; 8689 84 31
                JMP  A85b8               ; 868b 29 85 b8
A868e:          LIS  $2                  ; 868e 72
                NS   $7                  ; 868f f7
                BF   $4                  ; 8690 94 2a
                LI   $ff                 ; 8692 20 ff
                ADC                      ; 8694 8e
                BF   $0                  ; 8695 90 a0
A8697:          LR   A,$0                ; 8697 40
                LR   $3                  ; 8698 53
                LIS  $0                  ; 8699 70
                XS   $7                  ; 869a e7
                BT   4                   ; 869b 84 1f
                LIS  $1                  ; 869d 71
                NS   $2                  ; 869e f2
                BF   $4                  ; 869f 94 1e
                LIS  $4                  ; 86a1 74
                XS   $7                  ; 86a2 e7
                BF   $4                  ; 86a3 94 05
                LISL 3                   ; 86a5 6b
A86a6:          LR   (IS)-,A             ; 86a6 5e
                BR7  A86a6               ; 86a7 8f fe
A86a9:          LISL 1                   ; 86a9 69
                LR   A,(IS)-             ; 86aa 4e
                LR   (IS)+,A             ; 86ab 5d
                LR   (IS)+,A             ; 86ac 5d
                LR   A,(IS)-             ; 86ad 4e
                LR   (IS)+,A             ; 86ae 5d
                LR   (IS)+,A             ; 86af 5d
                LR   A,(IS)-             ; 86b0 4e
                LR   (IS)+,A             ; 86b1 5d
                LR   A,$3                ; 86b2 43
                LR   (IS),A              ; 86b3 5c
                PI   A8702               ; 86b4 28 87 02
                PI   A8713               ; 86b7 28 87 13
                DS   $7                  ; 86ba 37
A86bb:          JMP  A85c7               ; 86bb 29 85 c7
A86be:          LIS  $2                  ; 86be 72
                NS   $7                  ; 86bf f7
                BT   4                   ; 86c0 84 06
                LISU 6                   ; 86c2 66
                LISL 4                   ; 86c3 6c
                LIS  $0                  ; 86c4 70
                LR   (IS)+,A             ; 86c5 5d
                LR   (IS),A              ; 86c6 5c
A86c7:          XS   $7                  ; 86c7 e7
                BT   4                   ; 86c8 84 f2
                LISL 5                   ; 86ca 6d
                LR   A,(IS)-             ; 86cb 4e
                LR   (IS)+,A             ; 86cc 5d
                LR   A,$3                ; 86cd 43
                LR   (IS),A              ; 86ce 5c
                DS   $7                  ; 86cf 37
                BF   $0                  ; 86d0 90 ea
A86d2:          LIS  $1                  ; 86d2 71
                NS   $2                  ; 86d3 f2
                BT   4                   ; 86d4 84 e6
                LI   $ff                 ; 86d6 20 ff
                LR   $3                  ; 86d8 53
                ADC                      ; 86d9 8e
                LR   Q,DC                ; 86da 0e
                ADC                      ; 86db 8e
                LR   H,DC                ; 86dc 11
                LR   QL,A                ; 86dd 07
                LR   DC,Q                ; 86de 0f
A86df:          LM                       ; 86df 16
                ST                       ; 86e0 17
                LI   $fd                 ; 86e1 20 fd
                ADC                      ; 86e3 8e
                DS   $3                  ; 86e4 33
                LR   A,$3                ; 86e5 43
                XS   $b                  ; 86e6 eb
                BF   $4                  ; 86e7 94 f7
                LM                       ; 86e9 16
                LI   $2b                 ; 86ea 20 2b
                ST                       ; 86ec 17
A86ed:          BF   $0                  ; 86ed 90 8d
A86ef:          LIS  $1                  ; 86ef 71
                NS   $2                  ; 86f0 f2
                BT   4                   ; 86f1 84 c9
                LM                       ; 86f3 16
                LR   $0                  ; 86f4 50
                LI   $fe                 ; 86f5 20 fe
                ADC                      ; 86f7 8e
                LR   A,$0                ; 86f8 40
                ST                       ; 86f9 17
                LM                       ; 86fa 16
                LR   H,DC                ; 86fb 11
                LIS  $1                  ; 86fc 71
                XS   $b                  ; 86fd eb
                BF   $4                  ; 86fe 94 f0
                BF   $0                  ; 8700 90 ec
A8702:          LISU 6                   ; 8702 66
                LISL 3                   ; 8703 6b
A8704:          LR   A,(IS)-             ; 8704 4e
                LR   $4                  ; 8705 54
                LR   A,(IS)-             ; 8706 4e
                SL   4                   ; 8707 15
                XS   $4                  ; 8708 e4
                BR7  A870f               ; 8709 8f 05
                LR   QU,A                ; 870b 06
                LR   KU,A                ; 870c 04
                LR   DC,Q                ; 870d 0f
                POP                      ; 870e 1c
A870f:          LR   QL,A                ; 870f 07
                LR   KL,A                ; 8710 05
                BF   $0                  ; 8711 90 f2
A8713:          LISL 4                   ; 8713 6c
                LM                       ; 8714 16
                LR   $4                  ; 8715 54
                SR   4                   ; 8716 14
                LR   (IS)+,A             ; 8717 5d
                LIS  $f                  ; 8718 7f
                NS   $4                  ; 8719 f4
                LR   (IS),A              ; 871a 5c
                POP                      ; 871b 1c
A871c:          LISL 3                   ; 871c 6b
A871d:          LR   A,(IS)              ; 871d 4c
                INC                      ; 871e 1f
                SL   4                   ; 871f 15
                SR   4                   ; 8720 14
                LR   (IS)-,A             ; 8721 5e
                BF   $4                  ; 8722 94 03
                BR7  A871d               ; 8724 8f f8
A8726:          POP                      ; 8726 1c
A8727:          LISL 3                   ; 8727 6b
A8728:          DS   (IS)                ; 8728 3c
                LR   A,(IS)              ; 8729 4c
                SR   4                   ; 872a 14
                BT   4                   ; 872b 84 04
                LR   (IS)-,A             ; 872d 5e
                BR7  A8728               ; 872e 8f f9
A8730:          POP                      ; 8730 1c
A8731:          LR   K,P                 ; 8731 08
                LR   A,IS                ; 8732 0a
                LISU 5                   ; 8733 65
                LISL 7                   ; 8734 6f
                LR   (IS)-,A             ; 8735 5e
A8736:          LI   $17                 ; 8736 20 17
                LR   $0                  ; 8738 50
                LI   $fe                 ; 8739 20 fe
                LR   (IS),A              ; 873b 5c
A873c:          LIS  $f                  ; 873c 7f
                OUTS 1                   ; 873d b1
                LI   $c0                 ; 873e 20 c0
                OUTS 0                   ; 8740 b0
                LR   A,(IS)-             ; 8741 4e
                OUTS 0                   ; 8742 b0
                LIS  $4                  ; 8743 74
                LR   (IS),A              ; 8744 5c
                INS  1                   ; 8745 a1
                SR   4                   ; 8746 14
                BT   4                   ; 8747 84 17
                SL   4                   ; 8749 15
A874a:          BF   $1                  ; 874a 91 08
                DS   $0                  ; 874c 30
                DS   (IS)                ; 874d 3c
                BT   4                   ; 874e 84 2b
                SL   1                   ; 8750 13
                BF   $0                  ; 8751 90 f8
A8753:          LISL 4                   ; 8753 6c
                LIS  $1                  ; 8754 71
                XS   (IS)                ; 8755 ec
                BF   $4                  ; 8756 94 26
                LR   (IS)-,A             ; 8758 5e
                LR   A,(IS)              ; 8759 4c
                XS   $0                  ; 875a e0
                BT   4                   ; 875b 84 19
                BF   $0                  ; 875d 90 0f
A875f:          LISL 6                   ; 875f 6e
                LI   $fc                 ; 8760 20 fc
                AS   $0                  ; 8762 c0
                LR   $0                  ; 8763 50
A8764:          LR   A,(IS)              ; 8764 4c
                SL   1                   ; 8765 13
                XI   $1                  ; 8766 23 01
                LR   (IS),A              ; 8768 5c
                NI   $40                 ; 8769 21 40
                BF   $4                  ; 876b 94 d0
A876d:          LI   $ff                 ; 876d 20 ff
                LR   $0                  ; 876f 50
                LISL 4                   ; 8770 6c
                LIS  $0                  ; 8771 70
                LR   (IS),A              ; 8772 5c
                BF   $0                  ; 8773 90 0c
A8775:          LISL 7                   ; 8775 6f
                LR   A,(IS)              ; 8776 4c
                LR   IS,A                ; 8777 0b
                LR   P,K                 ; 8778 09
                POP                      ; 8779 1c
A877a:          LISL 6                   ; 877a 6e
                BF   $0                  ; 877b 90 e8
A877d:          LR   (IS)-,A             ; 877d 5e
                LR   A,$0                ; 877e 40
                LR   (IS)-,A             ; 877f 5e
A8780:          PI   A8799               ; 8780 28 87 99
                LISU 5                   ; 8783 65
                LISL 2                   ; 8784 6a
                LIS  $b                  ; 8785 7b
                LR   (IS)-,A             ; 8786 5e
A8787:          LI   $ff                 ; 8787 20 ff
                LR   (IS),A              ; 8789 5c
A878a:          DS   (IS)                ; 878a 3c
                BF   $4                  ; 878b 94 fe
                LISL 2                   ; 878d 6a
                DS   (IS)-               ; 878e 3e
                BF   $4                  ; 878f 94 f7
                LISL 4                   ; 8791 6c
                LIS  $1                  ; 8792 71
                NS   (IS)                ; 8793 fc
                BT   4                   ; 8794 84 e0
                LISL 6                   ; 8796 6e
                BF   $0                  ; 8797 90 9e
A8799:          LISU 6                   ; 8799 66
                LISL 7                   ; 879a 6f
                LR   A,$1                ; 879b 41
                LR   (IS)-,A             ; 879c 5e
                LR   A,$0                ; 879d 40
                LR   (IS),A              ; 879e 5c
                LISU 7                   ; 879f 67
                LISL 0                   ; 87a0 68
                LIS  $1                  ; 87a1 71
                LR   $0                  ; 87a2 50
                LR   A,(IS)              ; 87a3 4c
                LR   $1                  ; 87a4 51
                LISU 6                   ; 87a5 66
                LISL 5                   ; 87a6 6d
A87a7:          LR   A,$1                ; 87a7 41
                XI   $ff                 ; 87a8 23 ff
                OUTS 0                   ; 87aa b0
                LR   A,(IS)-             ; 87ab 4e
                COM                      ; 87ac 18
                SL   4                   ; 87ad 15
                SR   4                   ; 87ae 14
                OUTS 1                   ; 87af b1
                INS  0                   ; 87b0 a0
                XS   $0                  ; 87b1 e0
                OUTS 0                   ; 87b2 b0
                LR   A,$0                ; 87b3 40
                SL   1                   ; 87b4 13
                LR   $0                  ; 87b5 50
                BR7  A87a7               ; 87b6 8f f0
                LISL 6                   ; 87b8 6e
                LR   A,(IS)+             ; 87b9 4d
                LR   $0                  ; 87ba 50
                LR   A,(IS)              ; 87bb 4c
                LR   $1                  ; 87bc 51
                POP                      ; 87bd 1c
A87be:          LI   $40                 ; 87be 20 40
                LR   $6                  ; 87c0 56
                LR   A,$7                ; 87c1 47
                LR   $5                  ; 87c2 55
                LM                       ; 87c3 16
                LR   $4                  ; 87c4 54
                LR   $1                  ; 87c5 51
                NS   $1                  ; 87c6 f1
                BT   4                   ; 87c7 84 37
                LM                       ; 87c9 16
                LR   $3                  ; 87ca 53
                XI   $7f                 ; 87cb 23 7f
                BF   $4                  ; 87cd 94 02
                LR   $6                  ; 87cf 56
A87d0:          LI   $ff                 ; 87d0 20 ff
                LR   $9                  ; 87d2 59
                LIS  $6                  ; 87d3 76
                LR   $8                  ; 87d4 58
A87d5:          LR   A,$3                ; 87d5 43
                LR   $2                  ; 87d6 52
                INS  8                   ; 87d7 a8
                XS   $6                  ; 87d8 e6
                OUTS 8                   ; 87d9 b8
A87da:          DS   $9                  ; 87da 39
                BF   $4                  ; 87db 94 04
                DS   $8                  ; 87dd 38
                BT   4                   ; 87de 84 06
A87e0:          DS   $2                  ; 87e0 32
                BT   1                   ; 87e1 81 f8
                BF   $0                  ; 87e3 90 f1
A87e5:          DS   $2                  ; 87e5 32
                DS   $2                  ; 87e6 32
                LIS  $6                  ; 87e7 76
                LR   $8                  ; 87e8 58
                DS   $4                  ; 87e9 34
                BF   $4                  ; 87ea 94 08
                LR   A,$1                ; 87ec 41
                LR   $4                  ; 87ed 54
                DS   $5                  ; 87ee 35
                BF   $4                  ; 87ef 94 ea
                BF   $0                  ; 87f1 90 cc
A87f3:          LIS  $1                  ; 87f3 71
                XS   $5                  ; 87f4 e5
                BF   $4                  ; 87f5 94 e4
                DS   $2                  ; 87f7 32
                LIS  $1                  ; 87f8 71
                XS   $4                  ; 87f9 e4
                BF   $4                  ; 87fa 94 df
                LR   $6                  ; 87fc 56
                BF   $0                  ; 87fd 90 dc
A87ff:          POP                      ; 87ff 1c
