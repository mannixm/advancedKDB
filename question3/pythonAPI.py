import csv
import numpy as np
from qpython import qconnection
from qpython.qcollection import qlist
from qpython.qtype import QException, QTIME_LIST, QSYMBOL_LIST, QFLOAT_LIST, QLONG_LIST

q=qconnection.QConnection(host='kxtraining', port=6000)
file=open("C:/Users/mmcalister/Downloads/trade.csv", "r")
reader = csv.reader(file, delimiter=",")
for line in enumerate(reader):
    time=line[1][0]
    sym=line[1][1]
    price=float(line[1][2])
    size=int(line[1][3])
    q.sendSync(('.u.upd[`trade;(`%;%;%)]')) % (sym,price,size)
