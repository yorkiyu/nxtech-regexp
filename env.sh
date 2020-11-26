#!/bin/bash

sed -i -e 's@".gitbook\/@'\".\/.gitbook\/'@g' ./_book/index.html
sed -i -e 's@"gitbook\/@'\".\/gitbook\/'@g' ./_book/index.html
sed -i -e 's@"introduction\/@'\".\/introduction\/'@g' ./_book/index.html
sed -i -e 's@"grammar\/@'\".\/grammar\/'@g' ./_book/index.html
sed -i -e 's@"complex-regexp-analysis\/@'\".\/complex-regexp-analysis\/'@g' ./_book/index.html
sed -i -e 's@"common-regex\/@'\".\/common-regex\/'@g' ./_book/index.html
sed -i -e 's@"application-scenario\/@'\".\/application-scenario\/'@g' ./_book/index.html
sed -i -e 's@"advanced\/@'\".\/advanced\/'@g' ./_book/index.html

sed -i -e 's@book.yorkyu.cn\/@'book.yorkyu.cn\/regexp\/'@g' ./_book/sitemap.xml
