#!/bin/bash
#java -cp /home/marc/StringHound/analysis/target/scala-2.12/deobfuscator-assembly-1.0.jar helper.AndroidJarAnalysis
#-Xrunjdwp:transport=dt_socket,address=8797,server=y,suspend=n
a=$(basename "$1")
tmp="$a.jar"
./dex2jar-2.0/d2j-dex2jar.sh --force -o "$tmp" "$1" || exit 2000
mkdir Output 2> /dev/null
java -jar /home/marc/StringHound/analysis/target/scala-2.12/deobfuscator-assembly-1.0.jar  -s -f "$tmp" -o "Output"
