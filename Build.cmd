pushd %CD%
ant -Dnb.internal.action.name=build jar
cd dist
rm -f README.TXT
curl -k -L http://kuribo64.net/whitehole/objectdb.php -o objectdb.xml
7z a ../Build.zip *.* -r
popd
echo Complete.