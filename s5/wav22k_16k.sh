#!/usr/bin/env bash

input_train_wav=/mnt/d/Taipei_Tech/Deep_Learning_audio/taiwanese/train
input_test_wav=/mnt/d/Taipei_Tech/Deep_Learning_audio/taiwanese/test

output_train_wav=/home/zmtech/kaldi/egs/zm1/s5/train/wav
ouput_test_wav=/home/zmtech/kaldi/egs/zm1/s5/test/wav

for train_wav in $(seq 1 3119)
do
      echo "Proceessing wave file train ${train_wav}.wav ."
      sox ${input_train_wav}/${train_wav}.wav -c 1 -r 16000 -b 16 ${output_train_wav}/${train_wav}.wav
done

for test_wav in $(seq 1 346)
do
      echo "Proceessing wave file test ${test_wav}.wav ."
      sox ${input_test_wav}/${test_wav}.wav -c 1 -r 16000 -b 16 ${ouput_test_wav}/${test_wav}.wav
done

echo "Completed All wave file processed."
