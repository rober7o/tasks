#!/bin/bash
#$(( ( RANDOM % 10 )  + 1 ))


# I declared the firts variables
cont=0;
cont2=0;
notas[0]=8;
x=0;

#the firts while show the 10 numbers
while [ $cont -lt 10 ]; do     

#Store the random numbers into a variables called tempo
 tempo=$(( ( RANDOM % 10 )  + 1 ));
 
 
 #the second while check the array if the number already exist
 while [ $cont2 -lt 10 ]; do
 # echo ${alea[$cont2]}
   if [ "${alea[$cont2]}" = "$tempo" ]; then
   y=1;
   else
   x=$(($y+0));
   
   
  # echo ${alea[$cont2]}
   fi
   
  cont2=$(($cont2+1));
  
 
 done
 
   ##########
   #If the number no exist into array it can be showed and store into array
   if [ "$x" = 0 ]; then  
  alea[$cont]=$tempo;
  echo $tempo;
  #echo "pasa"$cont;
  else
  #if the number exist it rest 1 -1 to the counter
  cont=$(($cont-1));
  fi
  ############ 
 
 
 y=0;
 x=0;
 
cont2=0;
 
  
# echo ${alea[$cont]}
 cont=$(($cont+1));
#echo echo ${alea[$cont2]}

done
#clear the array
  cont3=0;
  while [ $cont3 -lt 10 ]; do
 
   alea[$cont3]=0;
   cont3=$(($cont3+1));
  
  done


