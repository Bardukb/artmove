import csv
csvfile = open('train_info.csv')
trainReader = csv.reader(csvfile)
trainData = list(trainReader)
names = list()
i = 1;
while i <= len(trainData):
    print(i)
    print(trainData[i][0])
    names.append(trainData[1][i])
    i = i + 1
print(names)
