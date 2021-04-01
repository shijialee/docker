
# get dependent images
for i in $(docker images -q)
do
    docker history $i | grep -q IMAGE_ID && echo $i
done | sort -u
