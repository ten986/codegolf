l=input()
i=l.index("T")
while 1:
    l=input()
    if "K"in l:
        j=l.index("K")
        print(" "*j+"K"+"*"*(i-j))
        break
    else:
        print(" "*i+"*")
