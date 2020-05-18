# kaldi_taiwanese
Deep Learning taiwanese recognization homework 1 at NTUT.


Step1. go to kaldi workspace

``` bash
$ cd ~/kaldi/egs/kakdi_taiwanese/s5
```

Step2. create bash file with convert audo sample rate .

``` bash
$ cat > wav22k_16k.sh
```

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

step5. edit cmd.sh

``` bash
$ gedit cmd.sh
```

content:

---export train_cmd=run.pl

---export decode_cmd=run.pl

step6. edit run.sh
``` bash
$ gedit run.sh
```

step7. edit prepare_data.sh
``` bash
$ gedit local/prepare_data.sh
```

step8. edit prepare_dict.sh
``` bash
$ gedit local/prepare_dict.sh
```

step10. edit network and nvidia-gpu num.
``` bash
$ gedit local/chain/runt_dnn.sh
```

step11. edit run_ivector_common.sh
``` bash
$ gedit local/nnet3/run_ivector_common.sh
```

step12. run run.sh
``` bash
$ chmod +x run.sh
```

``` bash
$ ./run.sh
```
