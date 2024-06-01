import math
import statistics
import sys
import time

print(sys.version)
num_runs = 3


def task():
    start = time.time()
    for i in range(10_000_000):

        if i < 7000:
            num = math.factorial(i)
        else:
            num = i
        _list = ["Nasseh" + "Khodaie" for _ in range(20)]
        _ = {"key1": num, "key2": _list}
    end = time.time()
    return end - start


execution_times = [task() for _ in range(3)]

mean = statistics.mean(execution_times)
stdv = statistics.stdev(execution_times)
# print(f"execution time = {mean} +- {stdv/mean*100}%")
print("\t", mean)
