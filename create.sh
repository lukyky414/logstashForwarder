for f in $(ls *.yml); do
    oc apply -f $f;
done;
