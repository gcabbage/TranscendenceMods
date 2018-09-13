sed 's/^..\/..\/.... ..\:..\:...//' ../../../Debug.log > temp.txt
sed '/^_FL#0/,/^_FL#1/!d;//d' temp.txt > function_list.txt
sed '/^_FL#1/,/^_FL#2/!d;//d' temp.txt > function_list.rst
rm temp.txt

# Extra substitutions for cases which TLisp regex does not support.
# slightly more complicated as we have to avoid messing up the formatting already done by TLisp...

# Indented line starting with any character other than "-". First word followed by 2+ spaces
sed -Ei 's/(^\s\s+)([^ \t-][^ \t]*)(\s\s+.*$)/\1- ``\2``\3/' function_list.rst
# Indented line starting with single quote and text word: bullet and monospace word
sed -Ei 's/(^\s\s+)('\''\w+)(.*)/\1- ``\2``\3/' function_list.rst
