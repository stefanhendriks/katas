cd kata
rm -rf $1
cd ..
cp -r templates/$1 kata
cd kata/$1
sublime .
./run_autotest.sh
