#!/bin/bash
repo_name_space="341742934190.dkr.ecr.ap-southeast-1.amazonaws.com/ex-test3"
# docker build -t create_ex_image .
images_tags=("1.0.6", "1.1.1" "1.1.2" "1.1.3" "1.1.4" "1.1.6" "1.2.0" "1.2.1" "1.2.2" "1.2.3" "1.2.4")

for i in {1..10}
do
    echo "build image ${repo_name_space}:${images_tags[i]}"
    docker build -t ${repo_name_space}:${images_tags[i]} --build-arg="magic_number=${i}" --progress=plain .
done

docker push -a ${repo_name_space}