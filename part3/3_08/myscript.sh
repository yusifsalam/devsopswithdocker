#!/bin/bash

sh -c echo "Input github link"; read gitlink; echo "Cloning.."; sleep 1;
proto="$(echo $gitlink | grep :// | sed -e's,^\(.*://\).*,\1,g')";
link="$(echo ${gitlink/$proto/})";
folder="$(echo ${link} | grep / | cut -d/ -f3)"
echo "repo name is $folder";
git clone $gitlink; cd $folder;
docker build -t insider .;
docker tag insider salamy1/insider;
docker login;
docker push salamy1/insider