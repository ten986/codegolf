using S=System.Console;class A{static void Main(){for(int d=1,c;;d=c>83?1:++d%51-c%2*51){c=S.Read();S.Write("#\n "[d<1?0:c%3]);}}}
