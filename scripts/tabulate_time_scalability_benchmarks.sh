#! /bin/bash

path="$(dirname "$PWD")"/benchmarks/scalabilityBenchmarks
echo "$path"

elapsed() {

  grep "," $1 | tail -1  

}

cutter() {
  grep  $1 |  sed 's/.*scalabilityBenchmarks.//g' | sed 's/.json.*//g'
}

run_the_test() {

  FileNames=$(ls $path/*.time)

    echo "Benchmark program, Rounds, Positive, Negative, Total Time(ms)"> tabulated_scalabilityResults.csv
  for file_name in $FileNames; do
    echo $(basename $file_name) ", " $(elapsed $file_name) >> tabulated_scalabilityResults.csv
  done

  echo "Test over."
}
run_the_test
