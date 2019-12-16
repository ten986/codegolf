read h
read w
f(){
printf \\$[++i%w/2*c?40:i>w?c=h--%h,i=0,12:52];f
}
f

SHELL=bash
a:
	@read h w<<<'$(STDIN:\n= )';f(){ printf \\$$[++i%w/2*c?40:i>w?c=h--%h,i=0,12:52];f;};f

IFS=
f(){
read -n1 x
x=`printf %o \'$x`
printf \\$[1/(~c[i]&5),i=i%51+1,x?a=c[i]|=x|a&1:12]
f
}
f

SHELL=bash
a:
	IFS=f(){@read -n1 x<<<'$(STDIN:\n= )';x=`printf %o \'$x`;printf \\$[1/(~c[i]&5),i=i%51+1,x?a=c[i]|=x|a&1:12];f;};f


	IFS=
	f(){
	read -n1 x
	x=`printf %o \'$x`
	printf \\$[1/(~c[i]&5),i=i%51+1,x?a=c[i]|=x|a&1:12]
	f
	}
	f
