#!/usr/bin/lua
math.randomseed(os.time())R=math.random E=os.execute E"stty cbreak -echo min 0"
W=io.write W"\027[?25l\027[2J"F=math.floor
f={}t,z,u=0,0,1
for i=1,265,12 do f[i]=3 f[i+11]=3 end
for i=266,275 do f[i]=3 end
repeat if not a then repeat
			o=p r=g
			p=({{0,0,0,0,0,15,15,0,0,15,15},{0,0,10,0,5,5,15,5,0,0,10,0,0,0,10},
			{0,0,5,0,0,0,15,15,0,10,10,5},{0,0,0,5,0,10,15,5,0,0,15,10},
			{0,4,5,8,0,10,15,10,0,2,5,1},{0,8,5,1,0,10,15,10,0,4,5,2},
			{0,0,11,0,0,13,15,7,0,0,14}})[R(7)]g=({1,2,4,8})[R(4)]
		until o
		a={}c=c or 0
		for i=1,16 do a[F((i-1)/4)*12+(i-1)%4+5]=o[i]end
	end
	if c then
		for i=1,16 do W(i%4==1 and"\027["..2+F(i/4)..";27H"or"",p[i]and
			p[i]/g%2>=1 and"\027[44m"or"","  \027[m")end
		W("\027[7;27HLevel: ",u,"\027[9;27HLines: ",z,"\027[;H")
		for i=25,276 do W(f[i]and"\027["..44+f[i].."m"or a[i]and a[i]/r%2>=1 and
			"\027[44m"or"","  \027[m",i%12<1 and"\n"or"")end
	else E"sleep .009"t=t+1 end
	e=c=="q"h,s,b=0,r,a
	if c==" "then E"sleep .005"else c=io.read(1)end
	r=c=="x"and r*2%15 or(c=="y"or"A"==c)and(r<2 and 8 or r/2)or r
	if c=="B"or c==" "or t>53-u*5 then t,h,c=0,12,c or 0 end
	a,l={},a
	for i,q in pairs(l)do a[i+(c=="C"and 1 or 0)-(c=="D"and 1 or 0)+h]=q end
	for i=1,276 do
		if f[i]and a[i]and a[i]/r%2>=1 then
			r,a=s,b
			if h>0 then
				E"sleep .2"
				repeat c=io.read(1)until not c
				for i,q in pairs(a)do
					c=i<25 and"q"or c
					f[i]=f[i]or q/r%2>=1 and 0
				end
				a=N
				if not c then
					for i=24,252,12 do
						q=0 for j=2,11 do q=q+(f[i+j]and 1 or 0)end
						if q>9 then
							u=1+F(z/10)
							z=z+1
							for k=i,25,-1 do if f[k]~=3 then f[k+12]=f[k]end end
				end end end
				break
end end end until e
W"Game Over.\n\027[?25h"E"stty sane"
