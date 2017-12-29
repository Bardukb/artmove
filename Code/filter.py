# -*- coding: utf-8 -*-
import os
import csv

with open('train_info.csv') as f:
  reader = csv.reader(f)
  for row in reader:
    filename = row[0]
    artist = row[1]
    title = row[2]
    style = row[3]
    genre = row[4]
    date = row[5]
    print (filename)

    if (style == "Impressionism" or style == "Realism" or
        style == "Romanticism" or style == "Expressionism" or
        style == "Post-Impressionism" or style == "Surrealism" or
        style == "Art Nouveau (Modern)" or style == "Baroque" or
        style == "Symbolism" or style == "Abstract Expressionism" or
        style == "Naïve Art (Primitivism)" or style == "Neoclassicism" or
        style == "Cubism" or style == "Northern Renaissance" or style == "Rococo"):

        for file in os.listdir("train/"):
            if file == filename:
                os.rename("train/" + filename, "train/" + style + "/" + filename)
