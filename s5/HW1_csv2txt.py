#!/usr/bin/env python

import csv
import io
from string import digits

output_txt = io.open("train.txt", "w", encoding="utf-8")

# open csv file
with io.open('train-toneless.csv', newline='', encoding="utf-8") as csvfile:

  # read csv content.
  rows = csv.DictReader(csvfile)

  # output content of each raw.
  for row in rows:
    print('Processing : ID ' + row['id'])
    text_update_1 = '0'.join(row['text'].split())
    text_update_2 = filter(str.isalnum, text_update_1)
    text_update_3 = ''.join(list(text_update_2))
    result  = str(u'\u0020').join(text_update_3.split('0'))
    result_text = row['id'] + str(u'\u0020') + result + '\n'
    output_txt.writelines(result_text.decode('utf-8'))

output_txt.close()
