return(function(h,a,o)local k=string.char;local e=string.sub;local p=table.concat;local n=math.ldexp;local r=getfenv or function()return _ENV end;local m=select;local g=unpack or table.unpack;local j=tonumber;local function l(h)local b,c,g="","",{}local f=256;local d={}for a=0,f-1 do d[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())g[1]=b;while a<#h do local a=i()if d[a]then c=d[a]else c=b..e(b,1,1)end;d[f]=b..e(c,1,1)g[#g+1],b,f=c,c,f+1 end;return table.concat(g)end;local j=l('21S1R2751R1V27623G23E23A23I1R1H27622K23I23322023I22X23123623C27D1S27622323B23E22Q27L22W1R1G27622F23823C23E23B27T27V27L1R1I27622423822X23422W22Z23E27P1R27R27522722Q23C23823823927Y1U27622722X23E22W23727727622E23823D27Y1M27S27U27W22X22023C22X23622Z23327Y1K27622L28R23J22K23623127L22G23B23623I23923329227529M23823J27E29928822X22N23E23323E1R28V27529423923I22Q2AC27622528523227D1J27622A28T2AA23928K1O2762AG23028A27629D22X23I29W22K23223627Z2AQ23A23E23G23I22H23223323328S2AJ2A028Y27C1R1C27622622A22I28H23I23C2332212A923623822G28S22W23328Y23629X29Z1R22D27B27D27827522B2382BN1T27S23E2B32C828B27528729B2B62B81P2BQ22A1R29K2AE23E2C72CQ27L22L2BM2CD28123I23H29Y2CJ27522I2BW29Q23I1P1Q1R1B27622H28J23423G22X23823223923J2C223B28E2141R2DB1R2DV2DX28L27623H2DQ23A22122K22H2DI2761R26Z23822J1R1D2DL2DN2DP2DR2DT28X23E28T28I2CM23C22Q2EC2ED26J2101R2AP2CP23822W2362332C02392BK1R22622N23623A2151Q23H2FH2FI2712102EW2ED1R1Q22N24P25U25G23T2482722EZ2CE1R22023622P23I1Q23W1023L1422Z26D25K2FL25L22K23T24B25X25224K2EZ2AD1R22A2BB2BD2BO27622X23D22R28Z22W27I23623J1X21G21G21921B2191Y2151Z21A2191Z2181R1N27623829H2F722W2D42CC1Q23F21D24N1422M24125I2FL101K25J23O23V24K26S2FL2FN1324922J2FM1R2632212EH28M1R2252362F423D23B2DG2752CO2E12II2EQ22328R22Z1Q22B1W26R1R24T26422024K1Q26Z1D1B24B25P24A24Z2J02FN24B21X2I62FN22J2272EH21D2762372BH22Z2H021G2302JP21H2DQ2IH23822R21H28Q23A21G2GV27I21G2102GY2122H321821621621421821A21821B2B027529D28523I28O22Z2D627522M23923223A2C92272362II2A427529T23I2EQ2EP2901Q1925U26C1R22M25X25Z2FL2101A23H24K1C24W23M2I22ED22J2222JH2JJ2JL2JN2JP2302JR2952DW2JV2JX2JZ22W2GW2332K22K42K62162152172181Y2H92E42DC2BG2382BF2EV21E25Y25J26C25B112HT1R2JI2752JK2332JM2H12LR2LT2JT2LW2CH2LY2M02M223J2K521B2K72151Y2H42142KE2F11R22I2MD22L2B423J1Q21123K1Q2571626C2FW1Q21024225U24K24A22D23K2EZ2MP1R2MR2MT2JO2JQ2JS2LV2JW2MZ2K02M12K32N32K621B21B1Y1Z2K92NB29323829R27C29X1Q1I25Z1426Z1V23G26U2NZ2LO2MS2LQ2O52LU2JU2O82JY2OA2N22N42KD21A21721721B2172162B92DC2BU2BW2BY2F62381Q23223S131V2251L26I2EZ1A2OL2322GW2BF2BH28S21629T27O2342MB2E128S2AG2BW2KF1R2BD23328O28Q2BJ2HE27528Q23B2II2BW2L12912802QL2382QN2BV2332IP2HG2CX27927I22C2302AG23J22I2392FD28527Y1L2792DF2R72R923B2A12A32DK27523H2NH2R32R52RF2BB23B29727623328P28R2392NE2BI2MF2C92302D029Y2QS1R27H23322G2372KU23J2CM2F928H23E2R42I71R21122J2472EC192172762EW21N2FN1R2CU192752CU2AW2SU2SV2T22ST2FN2782SX2FO2T82752T42DI2DI2SW2752AW2GL2SR1R2AW2CU2TB2T82CJ2T72CU2SS2SY2T22TE2922TH2TS2782TL2TS2CU27R2T72AW2TR2TJ2U62TU28V2TW2U628V2TZ2U62AW2AP2T42FY28B2UH29227F2UK2782802T42GL2HE2UQ2AJ2982UT28V2RC2762E02FN2IC2FN2NC2FN2IL2FN27F2T12S62FN2QK2SU2982T12UY2SU2CY2762T72DK2VI2T42DK2VO1R2T72PX2PX2FN2DK2CU2TU2PX2VM2752VS2DJ2VQ2752SX2T72ED2PX2VW2W32W32VZ2W32SX2DK2T7181R2WH2FN2SX2W92WG2R02TA2752WH2WH2WF2751F2WA2ED2WH2WM2WU2WO1R2T42WV2WV2WT1R1E2WW2762WV2WZ2X72X12T42X82X82X62EJ2W62762X82XC2EJ2WC2EJ2EJ2X62BP2XK2752EJ2XC2BP2WC2BP2BP2X6132X92752BP2XC2Y32WC2Y32Y32X6121R2WV2I32TT1R2SQ1R2PX2X82XR2W02GQ2YC2T92X22752YD2YD2AW2T42YU2922YX1R2YD2Y32Z02YY2Z41R112X21Z2Z12ZB102DJ2SX2PX2BP2YD2YJ2PX171R162WA2YD142762Z62ST2T72Z821M2VJ2752ZD2ZW2W42752ZL31002ED2YD2ZL2CU2RK2PX152ZB2ZJ1R21L1R21K2ZO1R21Q2ZR2YT2ZB2X62Z821P2ZX1R2ZD21O310R2ZL21F310R2ZN310U2FN2YD2ZN31082YO21R2ZB2T72YD310K2WP2ZB2YD310O2MO310R310T310V1R21C310Y1R311031052ZM2T231091R21E310C2YO21J1R21I2YI31012X821H2W22W32BP2PX31181R2ZQ311B2Z52WA2ZV311G1R31042T731032SU3106311Q3101310B2ZI3101310F310H3127311A2YS311C2W22ZU1R21G312E311N312H311Z3101311P311N2763112312L2W331162YD312S310L312V311E31312ZY1R2PG31342ZL313H311P215312J311P31142W3311T312O2W32DY2KE2YJ2WH2X821A31232WH2XT310I3129312U312B312X312G313I314B1R312I3111314E31392WH312N31332WH312Q310I312T2Z6311E2193130311I2HC3134310Z313Q311331431R313B314O313E2YY313G312E2ZA313L311M311L1Y314Y314I311S310C2Z82WH311W1X2VQ22D2ZB21331542ZB1W31482ZB2123150315R313V2WV2X821131232WV3145312731472ZS312C312F312E314D314F311O310731611R314K2YJ2WV314N313D312A310N31672EZ3134311H31592EH314W315A314G314Z2RK2WV3152316K315S311D3167313N2ZD31582WA313M311L22I315D313S2WV313U31332WV311W22H310I315O316L2YD315R2Z6315U316X1R315W31332XG2E131232X83163310M3165310M2YD2ZT275312D316P3168315931043137314H313S2X8316G2752X8316J310M314P3181312W31841R22N314T316R311L3136310M316W318F31513117318I315P3172312X31741R31763132313N2ZN317A316V31392X8317E2YJ2X8311W22M317J318Z317R31711R317P318V317S2YJ2EJ2X822L31232EJ317Y2ZB3180312V31832Z731872WA2ZZ311I3189310M316D2RK2EJ318E2EI310E310G3153317L318L31A022K318P2VQ21X314H22B318R317B319T318W313C318Y31AF3156318631943102316U2WA31972ED317S316W2DK2EJ319C2XV1R311W2CW3127317K319K317N318K319M31AB319O2Y52XD22931232Y02WD317Z319I2ZT22431A0312G317A31A33188313Q31A731BK31AA2BP318H2ZB318J313F316722831AJ313231AN2W431BT314X2UZ2ZB318U2GQ316Z31AT319K31AV31A23193311I31962ND31AP2RK2BP319C2Z82BP311W22F2VQ312Z2YD31BD2Z631BF312V31BH2BP317S2RK2Y3312531332Y322E2CA315S2PX22C319K2232DZ21V310S2TI2T0315U2752V031DS2X931DV2VT2WP2YD2ZD2DI21N2ZA2YD2WH31DK21N31C92YY31DM1T31DO31E12T831DR2762V231DV2WJ27531DV2VE31DZ31DP31E231E42YE1R31E731E92ZB31EB31ED2T22DI31EG2752V431DV2YF31EL2762VC2YS31E02T831E32ZB2X831EU312V31EX31DP2U42U6319L2762V631DV2X827631DV2VI31F931EP2Z92ZB2EJ31FF31EA31DN31DP27831F031F62752V831G431AB31FQ2762VG31FT31EE31FC2YD2BP31FY31EW31G02ZD28V31G331FL2752VA31DV2BP31G92T12ST31FA2DI31EC2ZB2CJ2TD31G72FM31DV2ED192RC2YD2222UZ31DO2YD27R2TC31G72CU2W431H61R2212761P31602YD2NC31H52ZB22031H92ZB28B31H031GN31FK31G731H431HH22731HS2YD27F31HV31DV2FY31HW31HZ2ZB22631I22B931I52762T031HY2VJ31HH22531HK31HM2HD31II2ZB31BT2W4317I2YD31DO2762PG2YD31H01T31BM2YD2351Q31HD1V31DY31J22DI31J527624031J32DZ23D31IN23331JC27531J927531JG31E231EV2CU21U2752JI2YD2W9314H2YY2751L311H31JL2ZB31JJ1R31JZ1931IS1R21T2VJ317I2Z831HJ276311Y31JS2TN31BM29823031JC31J831DY31KI31KK27622P31JC31K42ZB31K731IR31A031HR31KC2ZB2TQ31JD1R2RC22S31JH27731DY31L32DI31KR2YD31KT2VQ31K92ID2ED31KD31EZ2DZ31BM29K24931KJ31L527631LL31KN2752G331L831K531IU2VQ31BT2Z827427631JR2YH1T31JE2YD31LS27631K131M631L931K631K831A031IQ27531LG31KZ31M831JH23C2TI27631EN2E031HF2IC2IE2IG2KV2GL2GN2BC27D31GR1R2GS2GU2LZ2GX2GZ2H12M42172M62142M92DH2GQ27531N02OA2GY2JN2H32H52H72H92HB31MY31IN2SU21P2FY31G22T831K131NS31K12DK2EC2VC2SS31762TS31NQ31FM2T831LQ2B031O631NX2752VC31HF2YI31DG2TF2C931ML2T131OI2EW2YJ2TS28V31I72EJ31NY31HK27621731IK31OF2V031OI31OX31OH31OL31LH1R31MK2752SJ31OA31OR2F931MV2GP31MY31NE31N22F631N42H22N52K82142OI2M72C927A2BN31G62S827K27M27O27D31DY22123I22Z29U28423323I23J2202BI28Y2GP2VG22H2C723J23E2IH23I22M29R29X27Y2RK2FZ29W23J22D2382F623H27O2BZ2BJ2FY22L2362B331B927621S22N23823723A2B229G29I1X21Y21N2RZ23821N2QY22Z21N2DV2QO31Q531RA2DE2312A931Q231NC31MZ2GT31NF31PF2M42K92KB2KD1R312227531R031R231R429E31R622W31R831RA2MD31RD2IQ31RG2QU31RI28E21N22N2KZ31RL31RN23J311631F72T131O331JI31O531LN31SQ31O62WV31OQ31P431OS2IL2SZ2SU31P531OY31T231OC2XK2FY2T42ED28V2TP2DZ31OI2W931T831EH312U2ED2UG2SU28B31TB31G62FN31MH31DY310H31SW2YR21731SZ2PH31OY31TX31OY31T52ED31T72SU31TA2TS31OW31OR2UD2ED27R31TF31F231TH31O431TB31F82ED31KZ31P231OH2VB31P731MU2GO31MX2GR31RR31PD31NG31N52N521521421921A1Z2OI31PM2CC2KW2S727I31PR27N28K31PV31PX31PZ31SK31Q428E31MW31L12DL31QA31QC2II31QF29W29I312331QK2DT31QN31QP31QR2PM2F831QU31QW27D311Y31S031R131R331R529H31S631R931RB21N2QQ31SC2QV2BW31SF2DD2F631RM31Q12A331PB31UR2M031UT31PG2N62M72M9314S31RZ1R31S131W331S431W531S731W831RE31WB31SE22X31SG31SI31WG31SK31SM31P631NP31NR31SR31NU31NT31DY31SV31XA31TT31TV31IG31UK31TY2YR31TO310R31SQ311B31T92WA2CU31U62U031UD27531UA2SU31TJ2V531XU31V431XP31O631TR31XI31OK31TV2VA31XN31YD2TS313431XR31XY2AJ31TB31XW2YH31UB2E431YN31Y22ED31TL2TS31UG31OR2EC31P331XO2ED31OB27531UN31VG31WK31N131WM31RT31UV21B2M5214215313P2FY31PN27D31PP31V627L31V831PU27631PW31PY31VU31Q231VE31Q627D31Q831VJ31QD31VM31QH31VP27K31VR31QO23631QQ31Q02F72C931QV31QX310431WV31S329F31WY31W731S92MF31RK31X731WI31RP31PC31Z631NH31PH2N72N92KE310H31W131S231W431R7320F2BI21N320H31SH28J320J31Q2320T31XI2ED21P316S2WI31XD31DY2WH31TS31YA31OR31XL31SX31YE31YY31P72X931U22FN31U42T231YL31TE2SU31Y02V331YI31YS2T231TN31UH31XF276310F321F31SY31OR31YC321K31TY31U031M7313E31XT31YK31TD2T3321U31YI31YQ31UE31YT322G31YW31XM31SN31YF31Z231PA31UQ31Z531N3320O2KD2OG2KB2PF31V231PO27G31ZI31PS31V931ZM31VB31ZP31Q331Q531VG31ZU2DT31VK31QE31QG31VO31QJ320031QM3202320431QS31VW29L31VY31QY320U31WW320D320X31S8320Z2NG31Q231X22QW31WE31SJ320K31Z431RS322X2OF2OH2OJ31RY31QZ31W2320C31S531WZ31S9324023J324231WD31X432123245321531YZ31SO321A321E32222WQ2T931NZ32262TS321I321L31TX31T431XQ2C931YN321Q31XV322G31U831TG31YP321X31Y4322031YV31SS31AC322527531TU32273229321K322B31YH325831Y4321S322H2V1322J325F31UF322N2QL322P2YO322R2BA31Z3322U324831UU322Y2OH21831UW323231ZG323427J31ZJ31PT2YK323831ZO31Q031ZQ323C31Q731VI323F31ZW323I31QI2B131QL31VS320331VU320631VX31QX31X9320B320W31W621N21522R21N2942ON31VN320I29Q31SK2QD2SA2CL32132892NC22B2KQ2EQ2382GY2QD2242852342202KL31Q22SJ22A2EH324731US31Z72PA2PC2PE2PG310Q323U324G320E3279327B327D23I2OO23331X53213327H31WI2SJ21722J310X322Q2FN31SP29231J431DY31NV31DY31OP31Y931OS2VI31T02FN31T231H431U1322D276325931TC2T1321T325X325E31YN321Y2CU325H2TS2SJ31OC31YN2UP2SU2HE31P02982RC31K1310U325L2YI32942X1321K31T6329A31Z1325U325B31YI321V31TI325Z2TS31QJ31Y62SU329O2SU329Q31UL329T326L31UJ321J322I329B27628I31QW27Y2S62S82SA2SC2SE31IG22A22W317A2E029M23B23J2892FY2CB2BN2NC2BI2C429F23923G329D2FA2GW22X22A23J2EJ2W431DM32AN31XM2TM31HV31SX31OC329E31OG324V31E82AJ2782AW1931BT27R31I7315R28V27R31XV31JE28V324V31JI321D31FB2ZA31ON31YJ311W2CJ31U631HC313E27R32CP2ED2CJ2W92DB32CC2TN325J32CD2AP2TY2UZ31DK31DT2T82CU31K131GZ326232BQ32AA32AP27532AR22X2RB326H31SH22W27P323F31ZY32AZ32B11R31EN2Q523C23431SH31Q1324N2XD2CZ22R31WF328N2F72FC2C42EQ28K2FY2BB2332912FY2372322GP31DY31QQ2B323C31PZ23432B632DU31Q531F51932BP321L2I732BS2T22TI32BV32AF31OG2PX31JM32C02U632C32E432C62AJ32C931L028V32EY31M731DY32F931KR28V2E021N21W2AJ32C831232782U92WA28V2V432D331I732A531KZ1T32D231TC31H032D62T931YX31T231TN2GL32DD27Y2IL2QF2QH2RX2C931RE31VH2752S832DH32DJ31QB32DL2AQ32DN32DP32EI32DT324322X32DW1R22E23E32DY324532E12IF2AT32E527632E732E92JJ32EC31ZL2RL31VY32EH2Q632EK32GO31MY19314S32AN2T732BT2TI31H032ES2YW31SX31J82ED32HH32EW31I731XH32BZ32CI31TA32C432BH319J32FJ31XV31BM2UX321C31GA324W31ES31LT2AJ2NC32FG32FI2B02RK27827R321Q28V325H2CJ32FR2AJ32FT32FV2AP32FX31DY32IO32D832532Q82F932G432GC31V523332GF31QL2EQ31VO32B831V32GL2RO2892GL2AL23B2AN32BH22632BJ32BL32BH2232CL31VN31EK32EO322P32ER32HM32ET32BU31TZ31OG31O931FC32CI2AW32192AJ31O927831NW32CG32F02AD2HE32D72TA2ZA32CL31TC1T28028V31O932IJ31DY32JU32CH29228M2AP2UC32D131CG32IP32KP32IS31T231XL2GL29T28S27D2E032JI2CM29Y2NC2DM32DR28I32DR2V22V232A4321L31JT32JP311B31HD2AW32AD31UI32HO31OI31EK32IV2D032DE32IX32GE23I32DI32J131ZY32J42BN32J62R432J82AK2AM32KY2BQ32JF2A332KZ32JJ2CN2OL23D327P32BF27L32812EH31ZE31V331ZH326I323632H531HI3239326O323B31VF2GP2IC31PW23A31QO32LR32BH31ZX31VO2IC2RQ2RA32072NH31V4320823I31V732LZ32DC32BE32L229L2NH2C723G21N311T32BO32JN2FN32ES32BV32HP31XP31I7310Q31EQ32F032JX32FL2A432HN31K131I4325J32NR31FV32HU31P632K731FV32KA32CL32KD1R32O132KG27632O132JV32KK32O232I832OH32FM21P31AN28V2X82DI28B31K132OO32O02T832FD31V421N315C32FM2802T727R31YU32HZ312U32FM2UV32A532I22UW2R032PA2DK32PA2PX2T432C532IU32FJ31L832A52W62T72CJ31EK32PG32OG32PQ27R31XL32KA2V232KN31GW32FV32D732D531DY32K732G031OI31FP32A532NA2C729Y32BN2ND2BH328I2HH32BF323Y31RC2MF21H32QK32LM32AS2QD32G72RW2BJ2VI22323222X23C23728Z2BE2BG2BI28T32LP27I32J032DK32J327632B927D2VC32QT32QV32QX2GW2C22C42F932JA2AN329732M632L12F027S32QU32QW32QY32BH22H31QO2BI2KR2VC2EP2ER32M72EU326F31V431PQ326J323727531ZN31VC31WI31ZR31VG2E032MY27Y2IC2Q132R127Y2VC2AR23123823432N731ZJ32MD2SU2EY311W2W42YD32HF32JR32BW32PK31IF310R32HN329632D4312U31HD28V32ES2V032NO322131I7311T32NS32CI27R31O328V29K2DI32CZ31DY32TL325J32TF32OH27828B1L31K727F324V31ON32CF31O632TR32OF2UO32OJ31IN32OF28V2UV32KJ32I232TJ31A02DI27F31K12Z832U132OU317I32TK2ZR2ZQ32FM2X627R31DY32AP32F632PA2SX32PA2WH32PA2US32P831ES32PQ32U432PS2E42T72AP32Q632AP32IR2T731GL313E32IJ2QD32IL2TN32FV28032KQ31GO32FZ32631R');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local e,f=a%2,c%2 if e~=f then d=d+b end a,c,b=(a-e)/2,(c-f)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(c,a,b)if b then local a=(c/2^(a-1))%2^((b-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(c%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local c,e,f,b=h(j,a,a+3);c=d(c,27)e=d(e,27)f=d(f,27)b=d(b,27)a=a+4;return(b*16777216)+(f*65536)+(e*256)+c;end;local function i()local b=d(h(j,a,a),27);a=a+1;return b;end;local function f()local b,c=h(j,a,a+2);b=d(b,27)c=d(c,27)a=a+2;return(c*256)+b;end;local function q()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return n(b,a-1023)*(e+(d/(2^52)));end;local l=b;local function n(b)local c;if(not b)then b=l();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(h(e(c,a,a)),27))end return p(b);end;local a=b;local function p(...)return{...},m('#',...)end local function k()local l={};local j={};local a={};local h={[#{{378;309;817;12};{551;56;537;346};}]=j,[#{{131;561;970;618};{915;523;738;84};{547;554;788;996};}]=nil,[#{{37;67;663;941};{951;855;303;340};{834;761;204;59};{879;997;524;440};}]=a,[#{"1 + 1 = 111";}]=l,};local a=b()local d={}for c=1,a do local b=i();local a;if(b==2)then a=(i()~=0);elseif(b==1)then a=q();elseif(b==0)then a=n();end;d[c]=a;end;for h=1,b()do local a=i();if(c(a,1,1)==0)then local e=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(e==0)then a[3]=f();a[4]=f();elseif(e==1)then a[3]=b();elseif(e==2)then a[3]=b()-(2^16)elseif(e==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=d[a[2]]end if(c(g,2,2)==1)then a[3]=d[a[3]]end if(c(g,3,3)==1)then a[4]=d[a[4]]end l[h]=a;end end;h[3]=i();for a=1,b()do j[a-1]=k();end;return h;end;local function l(a,h,f)a=(a==true and k())or a;return(function(...)local d=a[1];local e=a[3];local n=a[2];local k=p local b=1;local i=-1;local q={};local p={...};local j=m('#',...)-1;local m={};local c={};for a=0,j do if(a>=e)then q[a-e]=p[a+1];else c[a]=p[a+#{{695;447;105;264};}];end;end;local a=j-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=49 then if e<=24 then if e<=11 then if e<=5 then if e<=2 then if e<=0 then local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))elseif e==1 then local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])else c[a[2]][a[3]]=c[a[4]];end;elseif e<=3 then do return c[a[2]]end elseif e>4 then c[a[2]]=f[a[3]];else if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;end;elseif e<=8 then if e<=6 then local e;e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];elseif e>7 then do return c[a[2]]end else local f;local e;c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];f=c[a[3]];c[e+1]=f;c[e]=f[a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];do return end;end;elseif e<=9 then local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))elseif e==10 then local d=a[3];local b=c[d]for a=d+1,a[4]do b=b..c[a];end;c[a[2]]=b;else if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;end;elseif e<=17 then if e<=14 then if e<=12 then c[a[2]]=h[a[3]];elseif e>13 then f[a[3]]=c[a[2]];else if(c[a[2]]<a[4])then b=a[3];else b=b+1;end;end;elseif e<=15 then local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];elseif e>16 then b=a[3];else c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];end;elseif e<=20 then if e<=18 then local e;c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];elseif e>19 then local a=a[2]local d,b=k(c[a](c[a+1]))i=b+a-1 local b=0;for a=a,i do b=b+1;c[a]=d[b];end;else c[a[2]]=(a[3]~=0);end;elseif e<=22 then if e==21 then if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;else c[a[2]]=a[3];end;elseif e>23 then if(a[2]<c[a[4]])then b=a[3];else b=b+1;end;else do return end;end;elseif e<=36 then if e<=30 then if e<=27 then if e<=25 then local e;local h;local j,m;local l;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];l=c[a[3]];c[e+1]=l;c[e]=l[a[4]];b=b+1;a=d[b];e=a[2]j,m=k(c[e](c[e+1]))i=m+e-1 h=0;for a=e,i do h=h+1;c[a]=j[h];end;b=b+1;a=d[b];e=a[2]j={c[e](g(c,e+1,i))};h=0;for a=e,a[4]do h=h+1;c[a]=j[h];end b=b+1;a=d[b];b=a[3];elseif e>26 then if(a[2]<c[a[4]])then b=b+1;else b=a[3];end;else c[a[2]][a[3]]=a[4];end;elseif e<=28 then c[a[2]]=#c[a[3]];elseif e==29 then local a=a[2]c[a]=c[a]()else local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))end;elseif e<=33 then if e<=31 then local h;local e;e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])elseif e>32 then local e;local j;local l,n;local m;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];m=c[a[3]];c[e+1]=m;c[e]=m[a[4]];b=b+1;a=d[b];e=a[2]l,n=k(c[e](c[e+1]))i=n+e-1 j=0;for a=e,i do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l={c[e](g(c,e+1,i))};j=0;for a=e,a[4]do j=j+1;c[a]=l[j];end b=b+1;a=d[b];b=a[3];else local b=a[2]c[b](g(c,b+1,a[3]))end;elseif e<=34 then local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];b=a[3];elseif e>35 then local b=a[2]local e={c[b](g(c,b+1,i))};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end else f[a[3]]=c[a[2]];end;elseif e<=42 then if e<=39 then if e<=37 then c[a[2]][a[3]]=c[a[4]];elseif e>38 then c[a[2]]=c[a[3]];else c[a[2]]=c[a[3]][a[4]];end;elseif e<=40 then local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];elseif e==41 then local d=a[2]local e={c[d](g(c,d+1,i))};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end else local a=a[2]c[a]=c[a](c[a+1])end;elseif e<=45 then if e<=43 then local e;local j;local l,n;local m;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];m=c[a[3]];c[e+1]=m;c[e]=m[a[4]];b=b+1;a=d[b];e=a[2]l,n=k(c[e](c[e+1]))i=n+e-1 j=0;for a=e,i do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l={c[e](g(c,e+1,i))};j=0;for a=e,a[4]do j=j+1;c[a]=l[j];end b=b+1;a=d[b];b=a[3];elseif e==44 then local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;else local a=a[2]c[a](c[a+1])end;elseif e<=47 then if e>46 then local e;local g;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];g=a[2];e=c[a[3]];c[g+1]=e;c[g]=e[a[4]];else local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];end;elseif e==48 then local h;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];else local a=a[2]c[a]=c[a]()end;elseif e<=74 then if e<=61 then if e<=55 then if e<=52 then if e<=50 then local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];elseif e>51 then local d=a[3];local b=c[d]for a=d+1,a[4]do b=b..c[a];end;c[a[2]]=b;else local i=n[a[3]];local g;local e={};g=o({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==61 then e[f-1]={c,a[3]};else e[f-1]={h,a[3]};end;m[#m+1]=e;end;c[a[2]]=l(i,g,f);end;elseif e<=53 then local d=a[2];local f=a[4];local e=d+2 local d={c[d](c[d+1],c[e])};for a=1,f do c[e+a]=d[a];end;local d=d[1]if d then c[e]=d b=a[3];else b=b+1;end;elseif e>54 then if not c[a[2]]then b=b+1;else b=a[3];end;else local e;local h;local j,m;local l;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];l=c[a[3]];c[e+1]=l;c[e]=l[a[4]];b=b+1;a=d[b];e=a[2]j,m=k(c[e](c[e+1]))i=m+e-1 h=0;for a=e,i do h=h+1;c[a]=j[h];end;b=b+1;a=d[b];e=a[2]j={c[e](g(c,e+1,i))};h=0;for a=e,a[4]do h=h+1;c[a]=j[h];end b=b+1;a=d[b];b=a[3];end;elseif e<=58 then if e<=56 then c[a[2]]=c[a[3]][a[4]];elseif e>57 then h[a[3]]=c[a[2]];else local i;local h;local e;e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];h=a[3];i=c[h]for a=h+1,a[4]do i=i..c[a];end;c[a[2]]=i;b=b+1;a=d[b];e=a[2]c[e](c[e+1])end;elseif e<=59 then local b=a[2]c[b]=c[b](g(c,b+1,a[3]))elseif e==60 then b=a[3];else c[a[2]]=c[a[3]];end;elseif e<=67 then if e<=64 then if e<=62 then c[a[2]]=l(n[a[3]],nil,f);elseif e==63 then if c[a[2]]then b=b+1;else b=a[3];end;else if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;end;elseif e<=65 then local e;c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];elseif e>66 then local a=a[2]c[a]=c[a](c[a+1])else c[a[2]]=f[a[3]];end;elseif e<=70 then if e<=68 then c[a[2]]=#c[a[3]];elseif e==69 then if(c[a[2]]==c[a[4]])then b=b+1;else b=a[3];end;else local b=a[2]c[b]=c[b](g(c,b+1,a[3]))end;elseif e<=72 then if e>71 then if(c[a[2]]<a[4])then b=a[3];else b=b+1;end;else c[a[2]]=(a[3]~=0);end;elseif e==73 then local a=a[2]local d,b=k(c[a](c[a+1]))i=b+a-1 local b=0;for a=a,i do b=b+1;c[a]=d[b];end;else if not c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=86 then if e<=80 then if e<=77 then if e<=75 then local b=a[2];local d=c[a[3]];c[b+1]=d;c[b]=d[a[4]];elseif e>76 then c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];b=a[3];else local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];end;elseif e<=78 then local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];elseif e==79 then local e=a[2];local f=a[4];local d=e+2 local e={c[e](c[e+1],c[d])};for a=1,f do c[d+a]=e[a];end;local e=e[1]if e then c[d]=e b=a[3];else b=b+1;end;else local e;local j;local l,n;local m;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];m=c[a[3]];c[e+1]=m;c[e]=m[a[4]];b=b+1;a=d[b];e=a[2]l,n=k(c[e](c[e+1]))i=n+e-1 j=0;for a=e,i do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l={c[e](g(c,e+1,i))};j=0;for a=e,a[4]do j=j+1;c[a]=l[j];end b=b+1;a=d[b];b=a[3];end;elseif e<=83 then if e<=81 then if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;elseif e>82 then if(a[2]<c[a[4]])then b=b+1;else b=a[3];end;else local b=a[2]c[b](g(c,b+1,a[3]))end;elseif e<=84 then h[a[3]]=c[a[2]];elseif e>85 then c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=a[4];else local a=a[2]c[a](c[a+1])end;elseif e<=92 then if e<=89 then if e<=87 then c[a[2]]=a[3];elseif e==88 then local i=n[a[3]];local g;local e={};g=o({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==61 then e[f-1]={c,a[3]};else e[f-1]={h,a[3]};end;m[#m+1]=e;end;c[a[2]]=l(i,g,f);else c[a[2]][a[3]]=a[4];end;elseif e<=90 then if(a[2]<c[a[4]])then b=a[3];else b=b+1;end;elseif e==91 then c[a[2]]=l(n[a[3]],nil,f);else local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];end;elseif e<=95 then if e<=93 then c[a[2]]=h[a[3]];elseif e==94 then local e;c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];else local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])end;elseif e<=97 then if e>96 then local i;local e;c[a[2]][a[3]]=a[4];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];h[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))else local e;local j;local l,n;local m;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];m=c[a[3]];c[e+1]=m;c[e]=m[a[4]];b=b+1;a=d[b];e=a[2]l,n=k(c[e](c[e+1]))i=n+e-1 j=0;for a=e,i do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]l={c[e](g(c,e+1,i))};j=0;for a=e,a[4]do j=j+1;c[a]=l[j];end b=b+1;a=d[b];b=a[3];end;elseif e>98 then do return end;else if c[a[2]]then b=b+1;else b=a[3];end;end;b=b+1;end;end);end;return l(true,{},r())();end)(string.byte,table.insert,setmetatable);