for one in $(ls *.cxx)
do
    echo "-- F -- " ${one} ;
#    echo "from " ${one%%.*}.cpp " to " ${one%%.*}.cxx
    grep -rn "${one%%.*}.cpp" ${one%%.*}.h 2>&1 | grep "include" # ${one%%.*}.cxx
done

