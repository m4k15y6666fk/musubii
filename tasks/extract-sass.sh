#!/bin/sh

# Paths

extractTemplatePath='./src/assets/extracts/templates'
settingTempPath='./src/assets/extracts/.temp/settings'
simpleTempPath='./src/assets/extracts/.temp/simple'
lightTempPath='./src/assets/extracts/.temp/light'
darkTempPath='./src/assets/extracts/.temp/dark'


# Copy All

cpx './src/scss/configs/**/!(_import.scss)' $settingTempPath
cpx './src/assets/extracts/switchings/**/*' "$settingTempPath/switchings"

cpx './src/scss/**/!(musubii.scss|_import.scss)' $simpleTempPath
cpx './src/scss/**/!(musubii.scss|_import.scss)' $lightTempPath
cpx './src/scss/**/!(musubii.scss|_import.scss)' $darkTempPath

# Extract Setting for Simple

simpleTempFiles=`find $simpleTempPath -maxdepth 3 -type f -name *.scss`

for i in $simpleTempFiles;
do
  concat -o $i "$extractTemplatePath/template-simple.scss" $i
done

# Extract Setting for Light

lightTempFiles=`find $lightTempPath -maxdepth 3 -type f -name *.scss`

for i in $lightTempFiles;
do
  concat -o $i "$extractTemplatePath/template-light.scss" $i
done

# Extract Setting for Dark

darkTempFiles=`find $darkTempPath -maxdepth 3 -type f -name *.scss`

for i in $darkTempFiles;
do
  concat -o $i "$extractTemplatePath/template-dark.scss" $i
done