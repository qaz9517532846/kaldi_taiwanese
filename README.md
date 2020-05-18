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

generate 16k audo wave file to train/wav and test/wav.
