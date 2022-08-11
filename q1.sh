cd $1
filename=`ls -l|awk '{print $9}'`
linenum=`cat $filename | wc -l`
middleline=$(($linenum/2))
mid_mod=$(($linenum%2))
middleline=$(($middleline+$mid_mod))
cat $filename | head -$middleline    | tail -1 
cd ..
