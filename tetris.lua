#!/usr/bin/lua
math.randomseed(os.time())R=math.random E=os.execute E"stty cbreak -echo min 0"
W=io.write W"\027[?25l\027[2J"F=math.floor S="  \027[m"f={}t=0 z=0 u=1 c=0
for i=266,275 do f[i]=3 end
for i=1,265,12 do f[i]=3 f[i+11]=3 end
repeat
	while o==N do
		o=p r=g
		p=({{0,0,0,0,0,15,15,0,0,15,15},{0,0,10,0,5,5,15,5,0,0,10,0,0,0,10},
		{0,0,5,0,0,0,15,15,0,10,10,5},{0,0,0,5,0,10,15,5,0,0,15,10},
		{0,4,5,8,0,10,15,10,0,2,5,1},{0,8,5,1,0,10,15,10,0,4,5,2},
		{0,0,11,0,0,13,15,7,0,0,14}})[R(7)]g=2^R(0,3)
		a={}
		for i=0,15 do a[F(i/4)*12+i%4+5]=o and o[i+1]end
	end
	if c then
		for i=1,16 do
			W(i%4==1 and"\027["..2+F(i/4)..";27H"or"",1<=(p[i]or 0)/g%2 and"\027[44m"or"",S)
		end
		W("\027[7;27HLevel: ",u,"\027[9;27HLines: ",z,"\027[;H")
		for i=25,276 do
			W((f[i]or(a[i]or 0)/r%2>=1)and"\027["..44+(f[i]or 0).."m"or"",S)q=1>i%12 and W"\n"
		end
	else E"sleep .009"t=t+1 end
	e=c=="q"h=0 s=r b=a
	if c==" "then E"sleep .005"else c=io.read(1)end
	r=c=="x"and r*2%15 or(c=="y"or"A"==c)and(r<2 and 8 or r/2)or r
	if c=="B"or c==" "or t>53-u*5 then t=0 h=12 c=0 end
	l=a a={}
	for i,q in next,l do a[h+i+(c=="C"and 1 or c=="D"and-1 or 0)]=q end
	for i=1,276 do
		if f[i]and 1<=(a[i]or 0)/r%2 then
			r,a=s,b
			if h>0 then
				E"sleep .2"
				io.read(99)
				for i,q in next,a do
					c=i<25 and"q"or c
					f[i]=f[i]or 1<=q/r%2 and 0
				end
				o=N
				if c==N then
					for i=24,252,12 do
						q=0 for j=2,11 do q=f[i+j]and q+1 or q end
						if q>9 then
							u=1+F(z/10)z=z+1
							for k=i,25,-1 do if f[k]~=3 then f[k+12]=f[k]end end
				end end end
				break
end end end until e
E"stty sane"
W"Game Over.\n\027[?25h"
