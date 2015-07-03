#1. Write a loop that calculates 12-factorial.
rs=1;
for(i in as.numeric(2:12)){rs=rs*i;} #use as.numeric to handle bigger numbers than integer, just in case of overflow
print(rs)

#2 Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.
seq(20,50,5)

#3. Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.
getQRoot<-function(a,b,c){
  a=as.complex(a)
  b=as.complex(b)
  c=as.complex(c)
  if(a==0 ){
    print("this is not a quardratic equation")
    if(b==0 && c==0){
      print("there are infinity roots to this equation")
      return(numeric(0))
    }else if(b!=0){
      return(-c/b)
    }else if(b==0 && c!=0){
      print("no root exists!")
      return(numeric(0))
    }
  }
    return(union((-b+sqrt(b^2-4*a*c))/(2*a), (-b-sqrt(b^2-4*a*c))/(2*a)))
}
