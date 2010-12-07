rm -rf build/
mkdir build/
mkdir build/js
coffee -c -o build/js lib/canvas.js/canvas.coffee
coffee -c -o build/js src/coffee/wordman.coffee
cp src/index.html build/index.html
