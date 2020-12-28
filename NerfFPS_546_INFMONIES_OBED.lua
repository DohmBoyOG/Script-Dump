
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(i,q,r)local k=string.char;local e=string.sub;local p=table.concat;local m=math.ldexp;local t=getfenv or function()return _ENV end;local l=select;local g=unpack or table.unpack;local j=tonumber;local function n(h)local b,c,g="","",{}local d=256;local f={}for a=0,d-1 do f[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())g[1]=b;while a<#h do local a=i()if f[a]then c=f[a]else c=b..e(b,1,1)end;f[d]=b..e(c,1,1)g[#g+1],b,d=c,c,d+1 end;return table.concat(g)end;local j=n('22L2242752272202752242172191X21522721Y2791B21521K1V21521Q21M21121B27E2232791S1W21921H27M21R22721S2791V2111X21O21R1Z1Y21R141Z1X21Q22721Z2791W21521921427Y21K21921K27Z22127921O21921121Q27Z28G27527I21K1F2102111W21421Q2151Y2272272791521R1D28F2791221L1X21A27M1Q2191W21L27E2782751Y27C27E21X2791F21921R2101128821521H22728R27529N29P21522627924C25G23Z2241E22721V27921727J21Q21921N27D28N28N21A28I27F2791J1J29U27D21B29O1W29G27521R2AO28J2142881W2A628Y2241Y21521N21B21B1W1Z21R21L2972252792222792272742752AN21K2B12152B31W1W2AS2101Z2142AX2751A28V21527L27N27M27729H29V22727S2751V21L21A29Z2A12A728S21Q2111Y21K22722B2791O21Q21H2CV21723021K1Z2D62192132152302B32A123021621Q28C23027D230121323127922422J2DQ2742AD2DQ22428129B2DW22V2242DV2242BR22M27829B2BR2792352242E82E222422Y22C2EC22421W2E42EE2202DZ2EJ2EL2EN2792742BR23023422429S2EI2EG2EX2DX2EQ2EX2EO2812BR2ER2752ET2242E62F12A82FB22G22428R2BT27922K2F12AD2E922P2F12EY2242362FM2DW2F12DW2CZ2FE2DW2FJ2FV2FR2DQ2G32DW2E92E422S27922M2G72G72302FV2AD22M2752AD2EO2DW2AD2AD2GE2DW2782GO2DQ28R2GH2EL2G12GO2E32CL2GI2EI2G62BU2F42792FG2EU22W2242BT28R2EK22M2FG2EK29X27922E2H92EP2AD22223G2HJ2H62792F82242HP2EV2HJ28R27G22Y21U2HO2EL28G2HR2HP23G22H2FH2F221T2H927G2BR28G2BR2AD2HR2ID2FB2782BR2HZ27522M2DS2FN2FV2IE2EE2GX2EL2AL2GU29B2FL2GP2EL2DW2FZ2DQ29B28R2E52762242BW2H923E2FW2EL2E92372792E322423A2EI2GM2242IY2BR2AL29B2IW2JM2G22J02GS2JU2H32J52IQ2DQ');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local e,f=a%2,c%2 if e~=f then d=d+b end a,c,b=(a-e)/2,(c-f)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(c,a,b)if b then local a=(c/2^(a-1))%2^((b-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(c%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local e,f,c,b=i(j,a,a+3);e=d(e,76)f=d(f,76)c=d(c,76)b=d(b,76)a=a+4;return(b*16777216)+(c*65536)+(f*256)+e;end;local function h()local b=d(i(j,a,a),76);a=a+1;return b;end;local function f()local b,c=i(j,a,a+2);b=d(b,76)c=d(c,76)a=a+2;return(c*256)+b;end;local function o()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return m(b,a-1023)*(e+(d/(2^52)));end;local m=b;local function n(b)local c;if(not b)then b=m();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(i(e(c,a,a)),76))end return p(b);end;local a=b;local function m(...)return{...},l('#',...)end local function j()local k={};local e={};local a={};local i={[#{{506;786;914;437};{526;995;872;294};}]=e,[#{"1 + 1 = 111";"1 + 1 = 111";{932;567;695;299};}]=nil,[#{{569;580;559;548};{625;823;738;512};{860;585;167;207};{332;106;500;184};}]=a,[#{"1 + 1 = 111";}]=k,};local a=b()local d={}for c=1,a do local b=h();local a;if(b==0)then a=(h()~=0);elseif(b==2)then a=o();elseif(b==3)then a=n();end;d[c]=a;end;for a=1,b()do e[a-1]=j();end;for i=1,b()do local a=h();if(c(a,1,1)==0)then local e=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(e==0)then a[3]=f();a[4]=f();elseif(e==1)then a[3]=b();elseif(e==2)then a[3]=b()-(2^16)elseif(e==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=d[a[2]]end if(c(g,2,2)==1)then a[3]=d[a[3]]end if(c(g,3,3)==1)then a[4]=d[a[4]]end k[i]=a;end end;i[3]=h();return i;end;local function o(a,k,h)a=(a==true and j())or a;return(function(...)local e=a[1];local d=a[3];local s=a[2];local p=m local c=1;local f=-1;local m={};local i={...};local j=l('#',...)-1;local l={};local b={};for a=0,j do if(a>=d)then m[a-d]=i[a+1];else b[a]=i[a+#{{686;872;520;475};}];end;end;local n=j-d+1 local a;local d;while true do a=e[c];d=a[1];if d<=31 then if d<=15 then if d<=7 then if d<=3 then if d<=1 then if d==0 then b[a[2]]=k[a[3]];else local d;local i;local k,l;local j;local d;b[a[2]]=h[a[3]];c=c+1;a=e[c];d=a[2];j=b[a[3]];b[d+1]=j;b[d]=j[a[4]];c=c+1;a=e[c];b[a[2]]=a[3];c=c+1;a=e[c];d=a[2]b[d]=b[d](g(b,d+1,a[3]))c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=h[a[3]];c=c+1;a=e[c];d=a[2];j=b[a[3]];b[d+1]=j;b[d]=j[a[4]];c=c+1;a=e[c];d=a[2]k,l=p(b[d](b[d+1]))f=l+d-1 i=0;for a=d,f do i=i+1;b[a]=k[i];end;c=c+1;a=e[c];d=a[2]k={b[d](g(b,d+1,f))};i=0;for a=d,a[4]do i=i+1;b[a]=k[i];end end;elseif d>2 then c=a[3];else b[a[2]][a[3]]=b[a[4]];end;elseif d<=5 then if d>4 then b[a[2]]=(a[3]~=0);else b[a[2]]=h[a[3]];end;elseif d==6 then local a=a[2];f=a+n-1;for c=a,f do local a=m[c-a];b[c]=a;end;else local a=a[2]b[a]=b[a]()end;elseif d<=11 then if d<=9 then if d==8 then local d=a[2]local e={b[d](g(b,d+1,f))};local c=0;for a=d,a[4]do c=c+1;b[a]=e[c];end else b[a[2]]=(a[3]~=0);end;elseif d>10 then local a=a[2]local d,c=p(b[a](b[a+1]))f=c+a-1 local c=0;for a=a,f do c=c+1;b[a]=d[c];end;else local e=a[2];local f=a[4];local d=e+2 local e={b[e](b[e+1],b[d])};for a=1,f do b[d+a]=e[a];end;local e=e[1]if e then b[d]=e c=a[3];else c=c+1;end;end;elseif d<=13 then if d==12 then local a=a[2];f=a+n-1;for c=a,f do local a=m[c-a];b[c]=a;end;else b[a[2]]=k[a[3]];end;elseif d>14 then local a=a[2]b[a]=b[a](b[a+1])else if(b[a[2]]==a[4])then c=c+1;else c=a[3];end;end;elseif d<=23 then if d<=19 then if d<=17 then if d>16 then b[a[2]]={};else local a=a[2]b[a](b[a+1])end;elseif d>18 then local a=a[2];local c=b[a];for a=a+1,f do q(c,b[a])end;else local c=a[2]b[c]=b[c](g(b,c+1,a[3]))end;elseif d<=21 then if d==20 then b[a[2]]=a[3];else b[a[2]][a[3]]=a[4];end;elseif d>22 then local d;b[a[2]]=h[a[3]];c=c+1;a=e[c];d=a[2]b[d]=b[d](b[d+1])c=c+1;a=e[c];b[a[2]]=b[a[3]][a[4]];c=c+1;a=e[c];b[a[2]]=h[a[3]];c=c+1;a=e[c];b[a[2]]=b[a[3]];c=c+1;a=e[c];b[a[2]]=(a[3]~=0);c=c+1;a=e[c];d=a[2]b[d](g(b,d+1,a[3]))c=c+1;a=e[c];b[a[2]]=h[a[3]];else b[a[2]][a[3]]=b[a[4]];end;elseif d<=27 then if d<=25 then if d>24 then if(b[a[2]]~=a[4])then c=c+1;else c=a[3];end;else if(b[a[2]]~=a[4])then c=c+1;else c=a[3];end;end;elseif d>26 then local c=a[2]b[c](g(b,c+1,a[3]))else local c=a[2]b[c]=b[c](g(b,c+1,a[3]))end;elseif d<=29 then if d==28 then local a=a[2];do return g(b,a,f)end;else b[a[2]]={};end;elseif d>30 then local h;local d;b[a[2]]=b[a[3]];c=c+1;a=e[c];d=a[2];f=d+n-1;for a=d,f do h=m[a-d];b[a]=h;end;c=c+1;a=e[c];d=a[2];do return b[d](g(b,d+1,f))end;c=c+1;a=e[c];d=a[2];do return g(b,d,f)end;c=c+1;a=e[c];do return end;else local e=a[2];local f=a[4];local d=e+2 local e={b[e](b[e+1],b[d])};for a=1,f do b[d+a]=e[a];end;local e=e[1]if e then b[d]=e c=a[3];else c=c+1;end;end;elseif d<=47 then if d<=39 then if d<=35 then if d<=33 then if d>32 then c=a[3];else do return end;end;elseif d==34 then local a=a[2]b[a]=b[a](b[a+1])else b[a[2]]=b[a[3]];end;elseif d<=37 then if d==36 then local c=a[2];local d=b[a[3]];b[c+1]=d;b[c]=d[a[4]];else if b[a[2]]then c=c+1;else c=a[3];end;end;elseif d==38 then local d=a[2]local e={b[d](g(b,d+1,f))};local c=0;for a=d,a[4]do c=c+1;b[a]=e[c];end else local a=a[2];do return b[a](g(b,a+1,f))end;end;elseif d<=43 then if d<=41 then if d==40 then b[a[2]][a[3]]=a[4];else local c=a[2];local d=b[a[3]];b[c+1]=d;b[c]=d[a[4]];end;elseif d==42 then local a=a[2]local d,c=p(b[a](b[a+1]))f=c+a-1 local c=0;for a=a,f do c=c+1;b[a]=d[c];end;else local a=a[2];local c=b[a];for a=a+1,f do q(c,b[a])end;end;elseif d<=45 then if d==44 then do return end;else for a=a[2],a[3]do b[a]=nil;end;end;elseif d==46 then local a=a[2]b[a](b[a+1])else local a=a[2];do return g(b,a,f)end;end;elseif d<=55 then if d<=51 then if d<=49 then if d>48 then b[a[2]]=b[a[3]][a[4]];else if b[a[2]]then c=c+1;else c=a[3];end;end;elseif d==50 then local c=a[2]b[c](g(b,c+1,a[3]))else local a=a[2];do return b[a](g(b,a+1,f))end;end;elseif d<=53 then if d==52 then local i=s[a[3]];local g;local d={};g=r({},{__index=function(b,a)local a=d[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=d[a]a[1][a[2]]=b;end;});for f=1,a[4]do c=c+1;local a=e[c];if a[1]==63 then d[f-1]={b,a[3]};else d[f-1]={k,a[3]};end;l[#l+1]=d;end;b[a[2]]=o(i,g,h);else if(b[a[2]]==a[4])then c=c+1;else c=a[3];end;end;elseif d==54 then local g=s[a[3]];local f;local d={};f=r({},{__index=function(b,a)local a=d[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=d[a]a[1][a[2]]=b;end;});for f=1,a[4]do c=c+1;local a=e[c];if a[1]==63 then d[f-1]={b,a[3]};else d[f-1]={k,a[3]};end;l[#l+1]=d;end;b[a[2]]=o(g,f,h);else for a=a[2],a[3]do b[a]=nil;end;end;elseif d<=59 then if d<=57 then if d>56 then b[a[2]]=h[a[3]];else b[a[2]]=a[3];end;elseif d>58 then do return b[a[2]]end else local d;d=a[2]b[d]=b[d](b[d+1])c=c+1;a=e[c];b[a[2]][a[3]]=b[a[4]];c=c+1;a=e[c];b[a[2]]=h[a[3]];c=c+1;a=e[c];b[a[2]]=b[a[3]];c=c+1;a=e[c];b[a[2]]=(a[3]~=0);c=c+1;a=e[c];d=a[2]b[d](g(b,d+1,a[3]))c=c+1;a=e[c];do return end;end;elseif d<=61 then if d>60 then local a=a[2]b[a]=b[a]()else b[a[2]]=b[a[3]][a[4]];end;elseif d==62 then do return b[a[2]]end else b[a[2]]=b[a[3]];end;c=c+1;end;end);end;return o(true,{},t())();end)(string.byte,table.insert,setmetatable);
