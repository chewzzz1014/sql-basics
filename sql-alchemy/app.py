from sqlalchemy import create_engine, MetaData, Table
from sqlalchemy.pool import StaticPool

# ceate engine and select database dialect
# echo attributes enables logging using standard logging module
engine = create_engine(
    "sqlite:///Buildings Database.sqlite",
    echo=True,
    poolclass=StaticPool
)

# connect to database
connection = engine.connect()

# print names of all database tables
print(engine.table_names())

# 2022-09-26 16: 06: 01, 929 INFO sqlalchemy.engine.Engine SELECT name FROM sqlite_master WHERE type = 'table' ORDER BY name
# 2022-09-26 16: 06: 01, 929 INFO sqlalchemy.engine.Engine[raw sql]()
# []


# reflection: get access to database and get information on any SQL table objects ady existing within database

metadata = MetaData()

# table "Buildings" is ady defined in databade
# see this table's structure
buildings = Table("Buildings", metadata, autoload=True, autoload_with=engine)

# view view data about table
print(repr(buildings))
