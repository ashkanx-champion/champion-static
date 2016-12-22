#!/bin/sh

DIR=$(cd "$(dirname "$0")"; pwd)
cd "$DIR"
echo "Update translated text for js\n";

carton exec perl -Ilib -Ibin -MGenerateStaticData -e "GenerateStaticData::generate_data_files('../src/javascript/autogenerated')"
