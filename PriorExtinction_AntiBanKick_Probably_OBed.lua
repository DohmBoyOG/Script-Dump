return(function(i,p,o)local k=string.char;local e=string.sub;local n=table.concat;local m=math.ldexp;local r=getfenv or function()return _ENV end;local l=select;local h=unpack or table.unpack;local j=tonumber;local function q(h)local b,c,f="","",{}local d=256;local g={}for a=0,d-1 do g[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())f[1]=b;while a<#h do local a=i()if g[a]then c=g[a]else c=b..e(b,1,1)end;g[d]=b..e(c,1,1)f[#f+1],b,d=c,c,d+1 end;return table.concat(f)end;local j=q('26826F27526E26G27526F23K23M24324523Q24023U27C23Q24323Q23P23V23M26E26B27923K23Q27H26E26L27925425423T27T23M23O23Q23V23V26E26K27924427C24523M23Q23N23S23T23V24E28727923T23M24023O23O23V23S24424228C26E26A27924724523Y23T24326E25Q27924M29223Y25J24S23Y23O23W25K24L23Q23T25J24R23S28E23M23N25N25J25327E24E25J24323Z27J25J23Y24325J24023S24523W24425I26E27927W27626U27R27C28027H28328527H29V23S23N27V27924H23Y28C25023M2452412AT27P27924P2812AN27529B29D25323V23Q24E2AW26C27929G23T26E26M2792AS2AU2AT2BC26E26N27924Z23M27N2472A329328X27528Z29129325J2BG23S27H28G23M29U29029N29U23S25J23W29C23W25J2A325J23P29H25J2422A626D27921J23321026F24L27926F25H2CT26Z26F2CM2CT26F25C26F2BA2D025I2CY2792A826T2782BA2A827926P2D326F2A82CM25D25R2DG2882DI26F26B26O2792DN26F25J2692DP2792BA2DK2DX2DT27Q2DQ2DS2DH2DP2DR2752DR2A82DV2DX2752DZ2DL27Q2782A828X2E42752EI2E72792EA2DU2DW27Q2EE26F2E027Q26S2E62ES2E826F2EY2A82EL26F2EQ2EC2ET2DG25D25M2DX2EQ2742F52EQ2F52CX2D927827Q2BM27526T27226F28X2BF27926J2DX2CM2D92FQ27Q2AA2752AC27Q2CZ27525P2ED2CT26T2FR2D02792DW2GC2G82D02F92GF2DD2DH26Q27926T2882762GN2GQ2G52D02CM2CM2BZ2E62EU2GA2D72GI2EU2GF2H22792CM27Q2D92752CM2BU26F2692BF2D42E62DD2G52GK26F25F2D72GV26F26V2CT2BA2CM2H02H72GC2HG2GH2GY2CT2HV2H92D72GE26F2H02BA2742GU2D72HK2GQ279');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local e,f=a%2,c%2 if e~=f then d=d+b end a,c,b=(a-e)/2,(c-f)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(c,a,b)if b then local a=(c/2^(a-1))%2^((b-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(c%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local b,c,e,f=i(j,a,a+3);b=d(b,231)c=d(c,231)e=d(e,231)f=d(f,231)a=a+4;return(f*16777216)+(e*65536)+(c*256)+b;end;local function g()local b=d(i(j,a,a),231);a=a+1;return b;end;local function f()local c,b=i(j,a,a+2);c=d(c,231)b=d(b,231)a=a+2;return(b*256)+c;end;local function q()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return m(b,a-1023)*(e+(d/(2^52)));end;local m=b;local function s(b)local c;if(not b)then b=m();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(i(e(c,a,a)),231))end return n(b);end;local a=b;local function k(...)return{...},l('#',...)end local function j()local h={};local e={};local a={};local i={[#{{192;716;415;258};{111;510;813;540};}]=e,[#{"1 + 1 = 111";"1 + 1 = 111";{484;295;604;344};}]=nil,[#{"1 + 1 = 111";"1 + 1 = 111";{221;252;187;645};{987;907;527;987};}]=a,[#{{839;989;911;947};}]=h,};local a=b()local d={}for c=1,a do local b=g();local a;if(b==0)then a=(g()~=0);elseif(b==2)then a=q();elseif(b==1)then a=s();end;d[c]=a;end;for a=1,b()do e[a-1]=j();end;for i=1,b()do local a=g();if(c(a,1,1)==0)then local e=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(e==0)then a[3]=f();a[4]=f();elseif(e==1)then a[3]=b();elseif(e==2)then a[3]=b()-(2^16)elseif(e==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=d[a[2]]end if(c(g,2,2)==1)then a[3]=d[a[3]]end if(c(g,3,3)==1)then a[4]=d[a[4]]end h[i]=a;end end;i[3]=g();return i;end;local function m(a,i,g)a=(a==true and j())or a;return(function(...)local e=a[1];local d=a[3];local q=a[2];local a=k local c=1;local f=-1;local j={};local n={...};local l=l('#',...)-1;local k={};local b={};for a=0,l do if(a>=d)then j[a-d]=n[a+1];else b[a]=n[a+#{{237;351;145;965};}];end;end;local l=l-d+1 local a;local d;while true do a=e[c];d=a[1];if d<=22 then if d<=10 then if d<=4 then if d<=1 then if d>0 then b[a[2]]=a[3];else local a=a[2]b[a]=b[a](b[a+1])end;elseif d<=2 then b[a[2]]=b[a[3]];elseif d>3 then b[a[2]]=g[a[3]];else b[a[2]]=b[a[3]][a[4]];end;elseif d<=7 then if d<=5 then b[a[2]][a[3]]=b[a[4]];elseif d==6 then b[a[2]]=b[a[3]][a[4]];else b[a[2]][a[3]]=b[a[4]];end;elseif d<=8 then local a=a[2];do return b[a](h(b,a+1,f))end;elseif d>9 then b[a[2]]={};else local h=q[a[3]];local f;local d={};f=o({},{__index=function(b,a)local a=d[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=d[a]a[1][a[2]]=b;end;});for f=1,a[4]do c=c+1;local a=e[c];if a[1]==2 then d[f-1]={b,a[3]};else d[f-1]={i,a[3]};end;k[#k+1]=d;end;b[a[2]]=m(h,f,g);end;elseif d<=16 then if d<=13 then if d<=11 then local d;b[a[2]]=g[a[3]];c=c+1;a=e[c];b[a[2]]=g[a[3]];c=c+1;a=e[c];d=a[2]b[d]=b[d](b[d+1])c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=g[a[3]];c=c+1;a=e[c];b[a[2]]=b[a[3]];c=c+1;a=e[c];b[a[2]]=(a[3]~=0);c=c+1;a=e[c];d=a[2]b[d](h(b,d+1,a[3]))c=c+1;a=e[c];b[a[2]]=g[a[3]];elseif d==12 then local a=a[2]b[a](b[a+1])else local h=q[a[3]];local f;local d={};f=o({},{__index=function(b,a)local a=d[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=d[a]a[1][a[2]]=b;end;});for f=1,a[4]do c=c+1;local a=e[c];if a[1]==2 then d[f-1]={b,a[3]};else d[f-1]={i,a[3]};end;k[#k+1]=d;end;b[a[2]]=m(h,f,g);end;elseif d<=14 then do return b[a[2]]end elseif d>15 then b[a[2]]=i[a[3]];else b[a[2]]=g[a[3]];end;elseif d<=19 then if d<=17 then do return b[a[2]]end elseif d>18 then do return end;else local g;local d;b[a[2]]=b[a[3]];c=c+1;a=e[c];d=a[2];f=d+l-1;for a=d,f do g=j[a-d];b[a]=g;end;c=c+1;a=e[c];d=a[2];do return b[d](h(b,d+1,f))end;c=c+1;a=e[c];d=a[2];do return h(b,d,f)end;c=c+1;a=e[c];do return end;end;elseif d<=20 then b[a[2]]=b[a[3]];elseif d>21 then local a=a[2]b[a]=b[a]()else b[a[2]]=(a[3]~=0);end;elseif d<=34 then if d<=28 then if d<=25 then if d<=23 then c=a[3];elseif d==24 then local a=a[2]b[a](b[a+1])else b[a[2]]=a[3];end;elseif d<=26 then local c=a[2]b[c](h(b,c+1,a[3]))elseif d==27 then local a=a[2];do return h(b,a,f)end;else b[a[2]]={};end;elseif d<=31 then if d<=29 then local a=a[2];do return h(b,a,f)end;elseif d==30 then do return end;else local a=a[2];local c=b[a];for a=a+1,f do p(c,b[a])end;end;elseif d<=32 then local a=a[2];do return b[a](h(b,a+1,f))end;elseif d>33 then c=a[3];else local a=a[2];local c=b[a];for a=a+1,f do p(c,b[a])end;end;elseif d<=40 then if d<=37 then if d<=35 then b[a[2]]=(a[3]~=0);elseif d==36 then local d;d=a[2]b[d]=b[d](b[d+1])c=c+1;a=e[c];b[a[2]][a[3]]=b[a[4]];c=c+1;a=e[c];b[a[2]]=g[a[3]];c=c+1;a=e[c];b[a[2]]=b[a[3]];c=c+1;a=e[c];b[a[2]]=(a[3]~=0);c=c+1;a=e[c];d=a[2]b[d](h(b,d+1,a[3]))c=c+1;a=e[c];b[a[2]]=g[a[3]];c=c+1;a=e[c];b[a[2]]=a[3];c=c+1;a=e[c];d=a[2]b[d](b[d+1])c=c+1;a=e[c];do return end;else if(b[a[2]]~=a[4])then c=c+1;else c=a[3];end;end;elseif d<=38 then if(b[a[2]]==a[4])then c=c+1;else c=a[3];end;elseif d>39 then if(b[a[2]]==a[4])then c=c+1;else c=a[3];end;else local a=a[2];f=a+l-1;for c=a,f do local a=j[c-a];b[c]=a;end;end;elseif d<=43 then if d<=41 then local a=a[2];f=a+l-1;for c=a,f do local a=j[c-a];b[c]=a;end;elseif d>42 then local c=a[2]b[c](h(b,c+1,a[3]))else b[a[2]]=i[a[3]];end;elseif d<=44 then local a=a[2]b[a]=b[a]()elseif d==45 then if(b[a[2]]~=a[4])then c=c+1;else c=a[3];end;else local a=a[2]b[a]=b[a](b[a+1])end;c=c+1;end;end);end;return m(true,{},r())();end)(string.byte,table.insert,setmetatable);
