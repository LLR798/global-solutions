import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job

args = getResolvedOptions(sys.argv, ['JOB_NAME'])

sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)

datasource = glueContext.create_dynamic_frame.from_catalog(
    database = "globalsolutions_db", 
    table_name = "iot_data"
)

df = datasource.toDF()

output_path = "s3://global-solutions-data/iot_parquet/"
df.write.mode("overwrite").partitionBy("partition_0", "partition_1", "partition_2").parquet(output_path)

job.commit()
