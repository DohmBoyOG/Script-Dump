return(function(dohmscripts_i,dohmscripts_k,dohmscripts_a)local dohmscripts_l=string.char;local dohmscripts_e=string.sub;local dohmscripts_o=table.concat;local dohmscripts_n=math.ldexp;local dohmscripts_r=getfenv or function()return _ENV end;local dohmscripts_m=select;local dohmscripts_g=unpack or table.unpack;local dohmscripts_j=tonumber;local function dohmscripts_p(dohmscripts_h)local dohmscripts_b,dohmscripts_c,dohmscripts_d="","",{}local dohmscripts_g=256;local dohmscripts_f={}for dohmscripts_a=0,dohmscripts_g-1 do dohmscripts_f[dohmscripts_a]=dohmscripts_l(dohmscripts_a)end;local dohmscripts_a=1;local function dohmscripts_i()local dohmscripts_b=dohmscripts_j(dohmscripts_e(dohmscripts_h,dohmscripts_a,dohmscripts_a),36)dohmscripts_a=dohmscripts_a+1;local dohmscripts_c=dohmscripts_j(dohmscripts_e(dohmscripts_h,dohmscripts_a,dohmscripts_a+dohmscripts_b-1),36)dohmscripts_a=dohmscripts_a+dohmscripts_b;return dohmscripts_c end;dohmscripts_b=dohmscripts_l(dohmscripts_i())dohmscripts_d[1]=dohmscripts_b;while dohmscripts_a<#dohmscripts_h do local dohmscripts_a=dohmscripts_i()if dohmscripts_f[dohmscripts_a]then dohmscripts_c=dohmscripts_f[dohmscripts_a]else dohmscripts_c=dohmscripts_b..dohmscripts_e(dohmscripts_b,1,1)end;dohmscripts_f[dohmscripts_g]=dohmscripts_b..dohmscripts_e(dohmscripts_c,1,1)dohmscripts_d[#dohmscripts_d+1],dohmscripts_b,dohmscripts_g=dohmscripts_c,dohmscripts_c,dohmscripts_g+1 end;return table.concat(dohmscripts_d)end;local dohmscripts_j=dohmscripts_p('21J23827523A23B275238141O1623A2342791J1L1P1H23A23I27921F1H102131H16121T1N27K2372792101O1L1D27S1723A23J27921K1R1N1L1O28028227S23A23E27921L1H1P1M2841S1T141W1D1427K27F27521D1Q111P23A27Y2752101628L1T29027E27921M1R1Q1H27827L27921H1N1N1R111Q1021H1J1H27927926S21121G23A22U28J1L161V27P27B1L27W27R27T27V27K28I27527O102951R1G111N1021P1Q1I1R29227Z28127W21P1G23A23G2792AM2AO28S28U23A23529I171727P23A23C2791S10101421729615111H1710277279171D1Q2AQ2752BH2BJ2BL28627921321D21M1W21P21M21D21K2171Y21Y2BN2751X161O23A22R2BB2BD141722622J22J2BC2BE1M1T1Q22I1R161J22J29R2BM23628J27P1S2AH2CA23821F21D1W29A27521I2AH1D2BX27521O2CI2A827U27W29H27521Q21321N21M21C1H29L1G27K23F2BY2BQ22H21E2CR29R1614162CR2BM2BA28X1C27B1R1T1022H21F111T2AV22P27Z161R101R22H1X2B71622H2AU1H29O1T1I1T28G22O2BY2EX102CR1H1O2E02E227S2E52E72DA2381S132EJ23A29T2FF29E1C2BM2932FG1H1L2DV162851C2CH2BE2CK2CM1G1T1729L161G22I29L1P22J1L141T22J131H1M2D31R1V1722J21V22522422522521V21Y21X22521X21S21Y22521Y21U2GY21V22J21T21K1P1Z21P1121Z1W27H1R1I21R21Z1R1U1621Z1021I1V111I21Q171Z1X1E2181X21L1E1E2171V1P1R21J1M1021A21Z1U1G21C2171G1Q1321E21V21N21F1X217213111Y151U2892171J2111421S2132BS23829L29O2F523A2D027528L28N1G2852B42752F6101O27K23D27921721722M22M21O2H921C2262JM2JK2DF2382DV2G42E6142F629D2FF1028T28V2792E61N1S2B327929L1O2CU2AW2792EP28Z28M27S29T22C22D1L1H21H2J52792F02F82JA2FM27I27K23H2792ES27S1Q2KX2262KA2751228C2BJ2FF21F2KX2FF21M2LD2J62382CR1O2F723B2392DM2D62KX22C21K2CR1V2L52312FY2CJ2CL22J2EN1M2KD1C2G81R2GA27H27J2GM23A23927922J2LO2LC27J22C2LF27J2L528W23829Q1H2L52AX2942961P2981P2ML29I21K1W2L527M2DN2DP2C41Q2DU27K2E92J129D102F522H2K32B222S2792GC27B27V1L2K01Q22J1U172K12MM21021N2132D92FQ21O2FS2FU1726527922U2262792FK27522C29T27527829Z2382FK2MM2OB2FK2FK2OA2OB2B42OE2752MC2OB2OR2792OQ2O42762382OU2OL2OJ2382D022U2FK2782FQ22C21V2382782782D02P72P92PE2AX23628I2FK2NH2MC27823422V2792PK2382PN2OV2OQ22J2OT2792PS2752322OX2382P32OF2Q12O92202Q42FK2P22OC2382P62QB2PB2382OL2PA2382KZ2J62FK2Q02PL2PR2PO2PZ2Q52PV2OR22A22927922X2Q127M2PY2382QY2MC2R122F2Q12Q32FK2OY2P82P028722A2282Q422E2Q12BA2R12RH2R42QQ2382R62PU2Q12OU2R82Q42O921C2Q82PE2OE27F2JI2OI2PR2Q42QH2Q428I2OE2B42O82QG2752B42B42DX2OE2D02QD2P12SJ2NH2OL2D02D022T29T2QF2FK2Q327F2OO2Q32B42RN23629Z2B421T2Q52QP2792T22MC2SW2382RN2PD27F2B42F32R12O62T72FK2B42EL2752362BA2B42252RR2T42752TP2RM2792TG2OF22H2S32OB21G2382B42OH2242SJ2OW21W2TL23822Q2382CG2U82SJ2302382LW2792S92S42SC2U22382Q02SG2RU2SB2SJ2D02OD2752AX2332OR2D02AX2OK2U92D022W2752U12AX2JC2752LW2V02UR2QC2TZ2Q22UW2R22OV2QJ23822Y2VJ27M22Z2VJ2872OL29T27Y2872T72QY2AX2RH27522U22D2382AX2W22W02VH2R62OB2KZ2FQ27927M2N22VF23821B2Q12PD2JI2D02RF23821Y2382JI2JI2BA2SZ2WP2WG2T32R12WH2MC2WJ2SJ2WM2WO2WQ2382BA22U22B2WU2W52TR2382152Q123622L2W32382132Q12OG2RN2XJ2TH2XH2XA2TM2XH1L2TQ2R12XT2TU2752642R72FK2V127922C2742AX2AX2UV23827M2UY2OB2AX27M2SS2752KZ2QW2OB2WE2FK2UE27M22A2382VZ2752VV2OR2N92B42UE2BA22K2382XG2OE2JI2XA22S2VM2BA22M2WU21W2R62BA22N23822G2VG2WU22I2VJ28I2QT29T2JI2P02NH2X52382TY2S12752WK2OR2AC2PE2UE28I21X2WN2ZF2DX21S2Y32752DX2DX27F2PD31072UN22C2KZ310B2T22ZO28I21Z2382DX2ZY23821U2382P82792DX2QB2UE2DX31002U52OE2NH2TP2W62382SP2SA2OL2SP2SP2SF2W62O62OB2NH2NH29Z2Z4310K238310J2NH21W221311G310O310Q2752ZO2ZX311P23831002272US2SP278310G311S310J2SP2UE2NH311N29T2SP310T2752SP31002Q72OE29Z2OY2W629Z287311F2SP310J29Z21W2YO2SP31252VJ311R2VG3100311L2ZO29Z310J2752UE29Z312Q2752RN2782UE2PO31002222382ZO2PO310J2MC3136310N310P2ZL2T92Q1311F2BA2U82S121I2382872BA2MC311F27M2X82VR2Z72872AX223313I2WE2792872ZM29T2N9313E2752BA2U121H313I27527F2ZO2JI2UB2KZ314H2UO313Q2382UE2JI2UG313P314L2742E92U128I2OH2U12DX2ZS2382ZH2PI2Q52UG2OP2PW2752FQ2LO213102NM111721J2AH29S2OR1T29X2MM2DC1G2DE2FQ2BU2BK2BM2782CB2CD2KR27528K102D32AV29T2ZW313A2T32YL31572MC2YF2Q42MM2S52UM2OL2MM2PC2UM2QB2J62B42KZ2OU2R1316N2XB27M2VW2UN2WB29G2UN2PJ2VM2QO2O83104316A29T31562T329T2MC');local dohmscripts_a=(bit or bit32);local dohmscripts_d=dohmscripts_a and dohmscripts_a.bxor or function(dohmscripts_a,dohmscripts_c)local dohmscripts_b,dohmscripts_d,dohmscripts_e=1,0,10 while dohmscripts_a>0 and dohmscripts_c>0 do local dohmscripts_f,dohmscripts_e=dohmscripts_a%2,dohmscripts_c%2 if dohmscripts_f~=dohmscripts_e then dohmscripts_d=dohmscripts_d+dohmscripts_b end dohmscripts_a,dohmscripts_c,dohmscripts_b=(dohmscripts_a-dohmscripts_f)/2,(dohmscripts_c-dohmscripts_e)/2,dohmscripts_b*2 end if dohmscripts_a<dohmscripts_c then dohmscripts_a=dohmscripts_c end while dohmscripts_a>0 do local dohmscripts_c=dohmscripts_a%2 if dohmscripts_c>0 then dohmscripts_d=dohmscripts_d+dohmscripts_b end dohmscripts_a,dohmscripts_b=(dohmscripts_a-dohmscripts_c)/2,dohmscripts_b*2 end return dohmscripts_d end local function dohmscripts_c(dohmscripts_b,dohmscripts_a,dohmscripts_c)if dohmscripts_c then local dohmscripts_a=(dohmscripts_b/2^(dohmscripts_a-1))%2^((dohmscripts_c-1)-(dohmscripts_a-1)+1);return dohmscripts_a-dohmscripts_a%1;else local dohmscripts_a=2^(dohmscripts_a-1);return(dohmscripts_b%(dohmscripts_a+dohmscripts_a)>=dohmscripts_a)and 1 or 0;end;end;local dohmscripts_a=1;local function dohmscripts_b()local dohmscripts_f,dohmscripts_b,dohmscripts_c,dohmscripts_e=dohmscripts_i(dohmscripts_j,dohmscripts_a,dohmscripts_a+3);dohmscripts_f=dohmscripts_d(dohmscripts_f,116)dohmscripts_b=dohmscripts_d(dohmscripts_b,116)dohmscripts_c=dohmscripts_d(dohmscripts_c,116)dohmscripts_e=dohmscripts_d(dohmscripts_e,116)dohmscripts_a=dohmscripts_a+4;return(dohmscripts_e*16777216)+(dohmscripts_c*65536)+(dohmscripts_b*256)+dohmscripts_f;end;local function dohmscripts_h()local dohmscripts_b=dohmscripts_d(dohmscripts_i(dohmscripts_j,dohmscripts_a,dohmscripts_a),116);dohmscripts_a=dohmscripts_a+1;return dohmscripts_b;end;local function dohmscripts_f()local dohmscripts_c,dohmscripts_b=dohmscripts_i(dohmscripts_j,dohmscripts_a,dohmscripts_a+2);dohmscripts_c=dohmscripts_d(dohmscripts_c,116)dohmscripts_b=dohmscripts_d(dohmscripts_b,116)dohmscripts_a=dohmscripts_a+2;return(dohmscripts_b*256)+dohmscripts_c;end;local function dohmscripts_p()local dohmscripts_d=dohmscripts_b();local dohmscripts_a=dohmscripts_b();local dohmscripts_e=1;local dohmscripts_d=(dohmscripts_c(dohmscripts_a,1,20)*(2^32))+dohmscripts_d;local dohmscripts_b=dohmscripts_c(dohmscripts_a,21,31);local dohmscripts_a=((-1)^dohmscripts_c(dohmscripts_a,32));if(dohmscripts_b==0)then if(dohmscripts_d==0)then return dohmscripts_a*0;else dohmscripts_b=1;dohmscripts_e=0;end;elseif(dohmscripts_b==2047)then return(dohmscripts_d==0)and(dohmscripts_a*(1/0))or(dohmscripts_a*(0/0));end;return dohmscripts_n(dohmscripts_a,dohmscripts_b-1023)*(dohmscripts_e+(dohmscripts_d/(2^52)));end;local dohmscripts_q=dohmscripts_b;local function dohmscripts_n(dohmscripts_b)local dohmscripts_c;if(not dohmscripts_b)then dohmscripts_b=dohmscripts_q();if(dohmscripts_b==0)then return'';end;end;dohmscripts_c=dohmscripts_e(dohmscripts_j,dohmscripts_a,dohmscripts_a+dohmscripts_b-1);dohmscripts_a=dohmscripts_a+dohmscripts_b;local dohmscripts_b={}for dohmscripts_a=1,#dohmscripts_c do dohmscripts_b[dohmscripts_a]=dohmscripts_l(dohmscripts_d(dohmscripts_i(dohmscripts_e(dohmscripts_c,dohmscripts_a,dohmscripts_a)),116))end return dohmscripts_o(dohmscripts_b);end;local dohmscripts_a=dohmscripts_b;local function dohmscripts_o(...)return{...},dohmscripts_m('#',...)end local function dohmscripts_j()local dohmscripts_i={};local dohmscripts_l={};local dohmscripts_a={};local dohmscripts_k={[#{{601;790;979;611};"1 + 1 = 111";}]=dohmscripts_l,[#{{802;267;760;307};"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";"1 + 1 = 111";{928;317;316;845};{267;275;893;611};}]=dohmscripts_a,[#{"1 + 1 = 111";}]=dohmscripts_i,};local dohmscripts_a=dohmscripts_b()local dohmscripts_d={}for dohmscripts_c=1,dohmscripts_a do local dohmscripts_b=dohmscripts_h();local dohmscripts_a;if(dohmscripts_b==3)then dohmscripts_a=(dohmscripts_h()~=0);elseif(dohmscripts_b==0)then dohmscripts_a=dohmscripts_p();elseif(dohmscripts_b==2)then dohmscripts_a=dohmscripts_n();end;dohmscripts_d[dohmscripts_c]=dohmscripts_a;end;for dohmscripts_j=1,dohmscripts_b()do local dohmscripts_a=dohmscripts_h();if(dohmscripts_c(dohmscripts_a,1,1)==0)then local dohmscripts_e=dohmscripts_c(dohmscripts_a,2,3);local dohmscripts_g=dohmscripts_c(dohmscripts_a,4,6);local dohmscripts_a={dohmscripts_f(),dohmscripts_f(),nil,nil};if(dohmscripts_e==0)then dohmscripts_a[3]=dohmscripts_f();dohmscripts_a[4]=dohmscripts_f();elseif(dohmscripts_e==1)then dohmscripts_a[3]=dohmscripts_b();elseif(dohmscripts_e==2)then dohmscripts_a[3]=dohmscripts_b()-(2^16)elseif(dohmscripts_e==3)then dohmscripts_a[3]=dohmscripts_b()-(2^16)dohmscripts_a[4]=dohmscripts_f();end;if(dohmscripts_c(dohmscripts_g,1,1)==1)then dohmscripts_a[2]=dohmscripts_d[dohmscripts_a[2]]end if(dohmscripts_c(dohmscripts_g,2,2)==1)then dohmscripts_a[3]=dohmscripts_d[dohmscripts_a[3]]end if(dohmscripts_c(dohmscripts_g,3,3)==1)then dohmscripts_a[4]=dohmscripts_d[dohmscripts_a[4]]end dohmscripts_i[dohmscripts_j]=dohmscripts_a;end end;for dohmscripts_a=1,dohmscripts_b()do dohmscripts_l[dohmscripts_a-1]=dohmscripts_j();end;dohmscripts_k[3]=dohmscripts_h();return dohmscripts_k;end;local function dohmscripts_i(dohmscripts_a,dohmscripts_b,dohmscripts_f)dohmscripts_a=(dohmscripts_a==true and dohmscripts_j())or dohmscripts_a;return(function(...)local dohmscripts_d=dohmscripts_a[1];local dohmscripts_e=dohmscripts_a[3];local dohmscripts_j=dohmscripts_a[2];local dohmscripts_a=dohmscripts_o local dohmscripts_b=1;local dohmscripts_a=-1;local dohmscripts_n={};local dohmscripts_h={...};local dohmscripts_l=dohmscripts_m('#',...)-1;local dohmscripts_a={};local dohmscripts_c={};for dohmscripts_a=0,dohmscripts_l do if(dohmscripts_a>=dohmscripts_e)then dohmscripts_n[dohmscripts_a-dohmscripts_e]=dohmscripts_h[dohmscripts_a+1];else dohmscripts_c[dohmscripts_a]=dohmscripts_h[dohmscripts_a+#{"1 + 1 = 111";}];end;end;local dohmscripts_a=dohmscripts_l-dohmscripts_e+1 local dohmscripts_a;local dohmscripts_e;while true do dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[1];if dohmscripts_e<=33 then if dohmscripts_e<=16 then if dohmscripts_e<=7 then if dohmscripts_e<=3 then if dohmscripts_e<=1 then if dohmscripts_e==0 then dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];else dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];end;elseif dohmscripts_e==2 then dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];else local dohmscripts_b=dohmscripts_a[2]dohmscripts_c[dohmscripts_b]=dohmscripts_c[dohmscripts_b](dohmscripts_g(dohmscripts_c,dohmscripts_b+1,dohmscripts_a[3]))end;elseif dohmscripts_e<=5 then if dohmscripts_e==4 then local dohmscripts_a=dohmscripts_a[2]dohmscripts_c[dohmscripts_a]=dohmscripts_c[dohmscripts_a](dohmscripts_c[dohmscripts_a+1])else dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];end;elseif dohmscripts_e>6 then local dohmscripts_b=dohmscripts_a[2];local dohmscripts_d=dohmscripts_c[dohmscripts_b];for dohmscripts_a=dohmscripts_b+1,dohmscripts_a[3]do dohmscripts_k(dohmscripts_d,dohmscripts_c[dohmscripts_a])end;else local dohmscripts_b=dohmscripts_a[2];local dohmscripts_d=dohmscripts_c[dohmscripts_a[3]];dohmscripts_c[dohmscripts_b+1]=dohmscripts_d;dohmscripts_c[dohmscripts_b]=dohmscripts_d[dohmscripts_a[4]];end;elseif dohmscripts_e<=11 then if dohmscripts_e<=9 then if dohmscripts_e==8 then dohmscripts_f[dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[2]];else local dohmscripts_e;local dohmscripts_g;dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_g=dohmscripts_a[3];dohmscripts_e=dohmscripts_c[dohmscripts_g]for dohmscripts_a=dohmscripts_g+1,dohmscripts_a[4]do dohmscripts_e=dohmscripts_e..dohmscripts_c[dohmscripts_a];end;dohmscripts_c[dohmscripts_a[2]]=dohmscripts_e;end;elseif dohmscripts_e>10 then if dohmscripts_c[dohmscripts_a[2]]then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;else dohmscripts_c[dohmscripts_a[2]]=dohmscripts_i(dohmscripts_j[dohmscripts_a[3]],nil,dohmscripts_f);end;elseif dohmscripts_e<=13 then if dohmscripts_e>12 then local dohmscripts_a=dohmscripts_a[2]dohmscripts_c[dohmscripts_a](dohmscripts_c[dohmscripts_a+1])else if not dohmscripts_c[dohmscripts_a[2]]then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;end;elseif dohmscripts_e<=14 then if(dohmscripts_c[dohmscripts_a[2]]~=dohmscripts_c[dohmscripts_a[4]])then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;elseif dohmscripts_e==15 then for dohmscripts_a=dohmscripts_a[2],dohmscripts_a[3]do dohmscripts_c[dohmscripts_a]=nil;end;else dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];if dohmscripts_c[dohmscripts_a[2]]then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;end;elseif dohmscripts_e<=24 then if dohmscripts_e<=20 then if dohmscripts_e<=18 then if dohmscripts_e>17 then if dohmscripts_c[dohmscripts_a[2]]then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;else if(dohmscripts_c[dohmscripts_a[2]]==dohmscripts_c[dohmscripts_a[4]])then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;end;elseif dohmscripts_e==19 then dohmscripts_b=dohmscripts_a[3];else dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];end;elseif dohmscripts_e<=22 then if dohmscripts_e==21 then dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]];else dohmscripts_c[dohmscripts_a[2]]={};end;elseif dohmscripts_e>23 then do return end;else dohmscripts_c[dohmscripts_a[2]]={};end;elseif dohmscripts_e<=28 then if dohmscripts_e<=26 then if dohmscripts_e==25 then local dohmscripts_f;local dohmscripts_e;dohmscripts_e=dohmscripts_a[2]dohmscripts_c[dohmscripts_e]=dohmscripts_c[dohmscripts_e](dohmscripts_g(dohmscripts_c,dohmscripts_e+1,dohmscripts_a[3]))dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2];dohmscripts_f=dohmscripts_c[dohmscripts_e];for dohmscripts_a=dohmscripts_e+1,dohmscripts_a[3]do dohmscripts_k(dohmscripts_f,dohmscripts_c[dohmscripts_a])end;else dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_c[dohmscripts_a[4]]];end;elseif dohmscripts_e>27 then do return end;else local dohmscripts_a=dohmscripts_a[2]dohmscripts_c[dohmscripts_a]=dohmscripts_c[dohmscripts_a](dohmscripts_c[dohmscripts_a+1])end;elseif dohmscripts_e<=30 then if dohmscripts_e==29 then dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];else dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];end;elseif dohmscripts_e<=31 then dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];elseif dohmscripts_e==32 then if(dohmscripts_c[dohmscripts_a[2]]<=dohmscripts_a[4])then dohmscripts_b=dohmscripts_a[3];else dohmscripts_b=dohmscripts_b+1;end;else dohmscripts_f[dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[2]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];for dohmscripts_a=dohmscripts_a[2],dohmscripts_a[3]do dohmscripts_c[dohmscripts_a]=nil;end;dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_b=dohmscripts_a[3];end;elseif dohmscripts_e<=50 then if dohmscripts_e<=41 then if dohmscripts_e<=37 then if dohmscripts_e<=35 then if dohmscripts_e==34 then local dohmscripts_d=dohmscripts_a[3];local dohmscripts_b=dohmscripts_c[dohmscripts_d]for dohmscripts_a=dohmscripts_d+1,dohmscripts_a[4]do dohmscripts_b=dohmscripts_b..dohmscripts_c[dohmscripts_a];end;dohmscripts_c[dohmscripts_a[2]]=dohmscripts_b;else local dohmscripts_e;dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2]dohmscripts_c[dohmscripts_e]=dohmscripts_c[dohmscripts_e](dohmscripts_c[dohmscripts_e+1])dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];end;elseif dohmscripts_e>36 then if(dohmscripts_c[dohmscripts_a[2]]~=dohmscripts_a[4])then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;else if(dohmscripts_c[dohmscripts_a[2]]<=dohmscripts_a[4])then dohmscripts_b=dohmscripts_a[3];else dohmscripts_b=dohmscripts_b+1;end;end;elseif dohmscripts_e<=39 then if dohmscripts_e==38 then local dohmscripts_f;local dohmscripts_e;dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2];dohmscripts_f=dohmscripts_c[dohmscripts_e];for dohmscripts_a=dohmscripts_e+1,dohmscripts_a[3]do dohmscripts_k(dohmscripts_f,dohmscripts_c[dohmscripts_a])end;else dohmscripts_f[dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[2]];end;elseif dohmscripts_e==40 then local dohmscripts_b=dohmscripts_a[2];local dohmscripts_d=dohmscripts_c[dohmscripts_a[3]];dohmscripts_c[dohmscripts_b+1]=dohmscripts_d;dohmscripts_c[dohmscripts_b]=dohmscripts_d[dohmscripts_a[4]];else local dohmscripts_d=dohmscripts_a[2];local dohmscripts_f=dohmscripts_a[4];local dohmscripts_e=dohmscripts_d+2 local dohmscripts_d={dohmscripts_c[dohmscripts_d](dohmscripts_c[dohmscripts_d+1],dohmscripts_c[dohmscripts_e])};for dohmscripts_a=1,dohmscripts_f do dohmscripts_c[dohmscripts_e+dohmscripts_a]=dohmscripts_d[dohmscripts_a];end;local dohmscripts_d=dohmscripts_d[1]if dohmscripts_d then dohmscripts_c[dohmscripts_e]=dohmscripts_d dohmscripts_b=dohmscripts_a[3];else dohmscripts_b=dohmscripts_b+1;end;end;elseif dohmscripts_e<=45 then if dohmscripts_e<=43 then if dohmscripts_e==42 then local dohmscripts_f;local dohmscripts_e;dohmscripts_e=dohmscripts_a[2];dohmscripts_f=dohmscripts_c[dohmscripts_a[3]];dohmscripts_c[dohmscripts_e+1]=dohmscripts_f;dohmscripts_c[dohmscripts_e]=dohmscripts_f[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2]dohmscripts_c[dohmscripts_e]=dohmscripts_c[dohmscripts_e](dohmscripts_g(dohmscripts_c,dohmscripts_e+1,dohmscripts_a[3]))dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];else dohmscripts_c[dohmscripts_a[2]]=(dohmscripts_a[3]~=0);end;elseif dohmscripts_e==44 then if(dohmscripts_c[dohmscripts_a[2]]==dohmscripts_c[dohmscripts_a[4]])then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;else dohmscripts_c[dohmscripts_a[2]]=dohmscripts_i(dohmscripts_j[dohmscripts_a[3]],nil,dohmscripts_f);end;elseif dohmscripts_e<=47 then if dohmscripts_e>46 then dohmscripts_c[dohmscripts_a[2]]=(dohmscripts_a[3]~=0);else local dohmscripts_a=dohmscripts_a[2]dohmscripts_c[dohmscripts_a](dohmscripts_c[dohmscripts_a+1])end;elseif dohmscripts_e<=48 then if not dohmscripts_c[dohmscripts_a[2]]then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;elseif dohmscripts_e==49 then local dohmscripts_d=dohmscripts_a[2];local dohmscripts_f=dohmscripts_a[4];local dohmscripts_e=dohmscripts_d+2 local dohmscripts_d={dohmscripts_c[dohmscripts_d](dohmscripts_c[dohmscripts_d+1],dohmscripts_c[dohmscripts_e])};for dohmscripts_a=1,dohmscripts_f do dohmscripts_c[dohmscripts_e+dohmscripts_a]=dohmscripts_d[dohmscripts_a];end;local dohmscripts_d=dohmscripts_d[1]if dohmscripts_d then dohmscripts_c[dohmscripts_e]=dohmscripts_d dohmscripts_b=dohmscripts_a[3];else dohmscripts_b=dohmscripts_b+1;end;else dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_c[dohmscripts_a[4]]];end;elseif dohmscripts_e<=59 then if dohmscripts_e<=54 then if dohmscripts_e<=52 then if dohmscripts_e==51 then if(dohmscripts_c[dohmscripts_a[2]]~=dohmscripts_a[4])then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;else do return dohmscripts_c[dohmscripts_a[2]]end end;elseif dohmscripts_e==53 then local dohmscripts_d=dohmscripts_a[3];local dohmscripts_b=dohmscripts_c[dohmscripts_d]for dohmscripts_a=dohmscripts_d+1,dohmscripts_a[4]do dohmscripts_b=dohmscripts_b..dohmscripts_c[dohmscripts_a];end;dohmscripts_c[dohmscripts_a[2]]=dohmscripts_b;else for dohmscripts_a=dohmscripts_a[2],dohmscripts_a[3]do dohmscripts_c[dohmscripts_a]=nil;end;end;elseif dohmscripts_e<=56 then if dohmscripts_e>55 then local dohmscripts_h;local dohmscripts_e;dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2]dohmscripts_c[dohmscripts_e]=dohmscripts_c[dohmscripts_e](dohmscripts_c[dohmscripts_e+1])dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2];dohmscripts_h=dohmscripts_c[dohmscripts_a[3]];dohmscripts_c[dohmscripts_e+1]=dohmscripts_h;dohmscripts_c[dohmscripts_e]=dohmscripts_h[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2]dohmscripts_c[dohmscripts_e]=dohmscripts_c[dohmscripts_e](dohmscripts_g(dohmscripts_c,dohmscripts_e+1,dohmscripts_a[3]))dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2];dohmscripts_h=dohmscripts_c[dohmscripts_a[3]];dohmscripts_c[dohmscripts_e+1]=dohmscripts_h;dohmscripts_c[dohmscripts_e]=dohmscripts_h[dohmscripts_a[4]];else dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];end;elseif dohmscripts_e<=57 then if(dohmscripts_c[dohmscripts_a[2]]~=dohmscripts_c[dohmscripts_a[4]])then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;elseif dohmscripts_e>58 then dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];else local dohmscripts_h;local dohmscripts_e;dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2];dohmscripts_h=dohmscripts_c[dohmscripts_a[3]];dohmscripts_c[dohmscripts_e+1]=dohmscripts_h;dohmscripts_c[dohmscripts_e]=dohmscripts_h[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2]dohmscripts_c[dohmscripts_e]=dohmscripts_c[dohmscripts_e](dohmscripts_g(dohmscripts_c,dohmscripts_e+1,dohmscripts_a[3]))dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_f[dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[2]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=(dohmscripts_a[3]~=0);dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=(dohmscripts_a[3]~=0);dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];end;elseif dohmscripts_e<=63 then if dohmscripts_e<=61 then if dohmscripts_e==60 then dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];if(dohmscripts_c[dohmscripts_a[2]]==dohmscripts_c[dohmscripts_a[4]])then dohmscripts_b=dohmscripts_b+1;else dohmscripts_b=dohmscripts_a[3];end;else dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_c[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];end;elseif dohmscripts_e==62 then local dohmscripts_b=dohmscripts_a[2]dohmscripts_c[dohmscripts_b]=dohmscripts_c[dohmscripts_b](dohmscripts_g(dohmscripts_c,dohmscripts_b+1,dohmscripts_a[3]))else dohmscripts_b=dohmscripts_a[3];end;elseif dohmscripts_e<=65 then if dohmscripts_e>64 then do return dohmscripts_c[dohmscripts_a[2]]end else dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]];end;elseif dohmscripts_e<=66 then local dohmscripts_b=dohmscripts_a[2];local dohmscripts_d=dohmscripts_c[dohmscripts_b];for dohmscripts_a=dohmscripts_b+1,dohmscripts_a[3]do dohmscripts_k(dohmscripts_d,dohmscripts_c[dohmscripts_a])end;elseif dohmscripts_e==67 then local dohmscripts_h;local dohmscripts_e;dohmscripts_e=dohmscripts_a[2];dohmscripts_h=dohmscripts_c[dohmscripts_a[3]];dohmscripts_c[dohmscripts_e+1]=dohmscripts_h;dohmscripts_c[dohmscripts_e]=dohmscripts_h[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2]dohmscripts_c[dohmscripts_e]=dohmscripts_c[dohmscripts_e](dohmscripts_g(dohmscripts_c,dohmscripts_e+1,dohmscripts_a[3]))dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]={};dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]][dohmscripts_a[3]]=dohmscripts_a[4];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];else local dohmscripts_h;local dohmscripts_e;dohmscripts_e=dohmscripts_a[2];dohmscripts_h=dohmscripts_c[dohmscripts_a[3]];dohmscripts_c[dohmscripts_e+1]=dohmscripts_h;dohmscripts_c[dohmscripts_e]=dohmscripts_h[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_a[3];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2]dohmscripts_c[dohmscripts_e]=dohmscripts_c[dohmscripts_e](dohmscripts_g(dohmscripts_c,dohmscripts_e+1,dohmscripts_a[3]))dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2];dohmscripts_h=dohmscripts_c[dohmscripts_a[3]];dohmscripts_c[dohmscripts_e+1]=dohmscripts_h;dohmscripts_c[dohmscripts_e]=dohmscripts_h[dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_f[dohmscripts_a[3]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_c[dohmscripts_a[2]]=dohmscripts_c[dohmscripts_a[3]][dohmscripts_a[4]];dohmscripts_b=dohmscripts_b+1;dohmscripts_a=dohmscripts_d[dohmscripts_b];dohmscripts_e=dohmscripts_a[2]dohmscripts_c[dohmscripts_e]=dohmscripts_c[dohmscripts_e](dohmscripts_g(dohmscripts_c,dohmscripts_e+1,dohmscripts_a[3]))end;dohmscripts_b=dohmscripts_b+1;end;end);end;return dohmscripts_i(true,{},dohmscripts_r())();end)(string.byte,table.insert,setmetatable);