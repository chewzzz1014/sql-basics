# configuration of a mapped class that was created with the mapper() function

# classical mapping is a base mapping system provided by ORM

'''
1. define a database table 
2. defined a corresponding Python class seperately
3. link 1 and 2 with mapper()
4. all changes to table and class made via SQLAlchemy are saved in database
'''

from sqlalchemy import Table, MetaData, Column, Integer, String
from sqlalchemy.orm import mapper

metadata = MetaData()

# create database table
# instance of Table class
animals = Table(
    "animals", metadata,
    Column("id", Integer, primary_key=True),
    Column("petname", String(30)),
    Column("age", Integer),
    Column("weight", Integer)
)

# python class


class Animals(object):
    def __init__(self, petname, age, weight):
        self.petname = petname
        self.age = age
        self.weight = weight


# mapper: associate table with class
mapper(Animals, animals)
