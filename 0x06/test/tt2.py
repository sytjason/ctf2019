#!/usr/bin/python
import pickle

with open('./ser_obj', 'rb') as file:
    res = file.readline()

# print(res)
pickle.loads(res)
