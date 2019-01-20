#! /bin/bash

path="$(dirname "$PWD")"/TuLiP
echo "$path"

run_the_test() {
  touch Output.txt
  rm Output.txt
  FileNames=$(ls $path/GridWorldSequence1D.py)
  python $FileNames
  echo "Size, Time(ms), Size"> tabulated_tulip_scalability_results.csv
  while read p; do
    echo  "$p" >> tabulated_tulip_scalability_results.csv
  done < Output.txt
  cat tabulated_tulip_scalability_results.csv
  echo "Test over."
}
run_the_test
