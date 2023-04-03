#!/bin/bash
files=("index" "persona/negative_persona" "persona/primary_persona" "persona/secondary_persona" "browser/browsh" "browser/links" "browser/lynx")
for file in "${files[@]}";
do
    pandoc ${file}.md -s -o ${file}.html
done