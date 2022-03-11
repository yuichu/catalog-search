# This shell script searches California State University Fullerton's catalog
# for the best matching Computer Science class result.
# To use, please enter a course number as an argument
#     example: $ ./catalog.sh 449
#              will search for course CPSC 449
# Created by Yujin Chung

http --form https://catalog.fullerton.edu/search_advanced.php \
cur_cat_oid="70" \
search_database="Search" \
search_db="Search" \
cpage=1 \
ecpage=1 \
ppage=1 \
spage=1 \
tpage=1 \
location=33 \
filter[keyword]="CPSC $1" \
filter[exact_match]=1 \
--ignore-stdin \
| grep "Best Match:"
