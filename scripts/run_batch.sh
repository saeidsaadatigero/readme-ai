#!/usr/bin/env bash

#version="0.5.0"
#run_date=$(date +"%Y%m%d")
filenames=(
    #"readme-litellm"
    #"readme-fal-js"
    #gitmate-2
    #gitlab
    "readme-local"
    "readme-python"
    "readme-streamlit"
    "readme-postgres"
    "readme-typescript"
    "readme-kotlin"
    "readme-rust-c"
    "readme-go"
    "readme-java"
    "readme-fastapi-redis"
    "readme-mlops"
)
repositories=(
    #"https://github.com/BerriAI/litellm"
    #"https://github.com/fal-ai/fal-js"
    #https://gitlab.com/gitmate/open-source/gitmate-2
    #https://gitlab.com/bavarder/bavarder/
    "/Users/k01101011/Documents/GitHub/pyflink-poc"
    "https://github.com/eli64s/readme-ai"
    "https://github.com/eli64s/readme-ai-streamlit"
    "https://github.com/jwills/buenavista"
    "https://github.com/Yuberley/ChatGPT-App-React-Native-TypeScript"
    "https://github.com/rumaan/file.io-Android-Client"
    "https://github.com/DownWithUp/CallMon"
    "https://github.com/olliefr/docker-gs-ping"
    "https://github.com/avjinder/Minimal-Todo"
    "https://github.com/FerrariDG/async-ml-inference"
    "https://github.com/GokuMohandas/mlops-course"
)
align=("left" "center")
badge_styles=("default" "flat" "flat-square" "plastic" "for-the-badge" "skills" "skills-light")
image=("blue" "black" "cloud" "gradient" "grey" "purple")
badge_color=("blue" "green" "red" "yellow" "orange" "pink" "purple" "blueviolet" "white" "black" "brightgreen" "ff69b4" "999999")

for index in "${!repositories[@]}"; do
    repo="${repositories[$index]}"
    filename="${filenames[$index]}.md" #_v${version}_${run_date}.md"
    random_badge=${badge_styles[$RANDOM % ${#badge_styles[@]}]}
    random_badge_color=${badge_color[$RANDOM % ${#badge_color[@]}]}
    image_style=${image[$RANDOM % ${#image[@]}]}
    alignment=${align[$RANDOM % ${#align[@]}]}
    rand_choice=$((RANDOM % 2))

    cmd="python3 -m readmeai.cli.commands -o \"$filename\" -r \"$repo\""
    #cmd="readmeai -o \"$filename\" -r \"$repo\""

    if [ "$random_badge" != "default" ]; then
        cmd+=" -b \"$random_badge\""
    fi
    if [ "$image_style" != "blue" ]; then
        cmd+=" -i \"$image_style\""
    fi
    if [ "$alignment" != "center" ]; then
        cmd+=" -a \"$alignment\""
    fi
    if [ $rand_choice -eq 1 ]; then
        cmd+=" -e"
    fi
    if [ "$random_badge_color" != "blue" ]; then
        cmd+=" --badge-color \"$random_badge_color\""
    fi

    eval $cmd

done
