#! /bin/bash

path="$(dirname "$PWD")"/SAT_RPNI_FIXED/rational_safety
path1="$(dirname "$PWD")"/scripts/data
echo "$path"
echo "$path1"
run_the_test() {
  cd $path
  ant
  cp $path1/Algorithm.java $path/src/edu/illinois/automaticsafetygames/finitelybranching/main/Algorithm.java
  sed -i '227s/.*/IGame game = new GridWorldSequence1D(50);/' $path/src/edu/illinois/automaticsafetygames/finitelybranching/main/Algorithm.java
  ant
  echo "Test over."
}
run_the_test
