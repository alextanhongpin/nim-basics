from sequtils import foldl
from moduleA import a
from moduleB.submoduleB import b

echo a
echo b

var c: seq[int]
c = @[1,2,3,4]
echo c
echo c[1..2]

# Simple Moving Average for 20 last values
proc sma20(arr: seq[int]): float =
    const days = 20
    result = foldl(arr[1..days], a + b) / days

var data: seq[int] = @[]

for i in 1..100:
    data.add(i)

echo sma20(data)