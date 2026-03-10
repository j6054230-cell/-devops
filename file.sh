$
#!/bin/bash
read -p "File: " file
ls $file > /dev/null 2> err.txt || cat err.txt#!/bin/bash

