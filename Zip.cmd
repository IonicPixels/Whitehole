pushd %CD%
cd dist
rm -f README.TXT
curl -k -L http://kuribo64.net/whitehole/objectdb.php -o objectdb.xml
7z a ../Build.zip *.* -r
popd
echo Complete.