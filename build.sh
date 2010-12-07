# This file is part of Wordman.
# 
# Wordman is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# Wordman is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with Wordman.  If not, see <http://www.gnu.org/licenses/>.

rm -rf build/
mkdir build/
mkdir build/js
coffee -c -o build/js lib/canvas.js/canvas.coffee
coffee -c -o build/js src/coffee/wordman.coffee
cp src/index.html build/index.html
