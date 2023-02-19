# Notes

- `grep -c "{{trans-top" enwiktionary-20230201-pages-articles-multistream.xml` shows how many matches you get.

- ` grep "^[^(\s)+ (<)]" firstThousand.xml` lines not starting with spaces, < characters (for XML syntax)
-  `grep "^[^[]" firstThousand.xml` lines not starting with [ (wikimarkup)

- ` grep "^[^[]\|^[*{=]\|title"`