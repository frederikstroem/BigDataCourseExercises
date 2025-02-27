from hdfs import InsecureClient
from collections import Counter
import pyarrow.parquet as pq
import pandas as pd
import pyarrow as pa

client = InsecureClient('http://namenode:9870', user='root')

# Make wordcount reachable outside of the with-statement
wordcount = None

with client.read('/alice-in-wonderland.txt', encoding='utf-8') as reader:
    wordcount = Counter(reader.read().split()).most_common(10)


# To-Do: Save the wordcount in a Parquet file and read it again!
print(wordcount)

df = pd.DataFrame(wordcount, columns=['word', 'count'])

table = pa.Table.from_pandas(df)
pq.write_table(table, 'greatest_data.parquet')

# Read the parquet file
table = pq.read_table('greatest_data.parquet')
print(table.to_pandas())
