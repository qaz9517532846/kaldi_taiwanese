# kaldi_taiwanese
Deep Learning taiwanese recognization homework 1 at NTUT.


Step1. go to kaldi workspace

``` bash
$ cd ~/kaldi/egs/kakdi_taiwanese/s5
```

Step2. create bash file with convert audo sample rate .

``` bash
$ gedit  wav22k_16k.sh
```

``` bash
$ chmod +x wav22k_16k.sh
```

``` bash
$ ./wav22k_16k.sh
```

result: generate 16k audo wave file to train/wav and test/wav.

step3. create python file: train.csv convert to train.txt

``` bash
$ chmod +x HW1_csv2text.py
```

``` bash
$ pyhton HW1_csv2text.py
```

step4. copy to lexicon dir after lexicon.txt delete last raw, copy to data/train and data/test dir after train.txt rename is text .
![image](https://github.com/qaz9517532846/kaldi_taiwanese/blob/master/s5/dir_tree.jpg)

step5. edit run_tdnn.sh, set network and gpu num.
``` bash
$ gedit local/chain/run_tdnn.sh
```

step6. run run.sh
``` bash
$ chmod +x run.sh
```

``` bash
$ ./run.sh
```
