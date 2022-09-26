from sqlalchemy.orm import Query, sessionmaker
from sqlalchemy import Column, Integer, String, create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import Query


Base = declarative_base()


class Animals(Base):
    __tablename__ = 'animals'

    id = Column(Integer, primary_key=True)
    petname = Column(String(30))
    age = Column(Integer)
    weight = Column(Integer)


# pass mapped class to Query constructor
# return an query object
query = Query(Animals)

print(query)
# SELECT animals.id AS animals_id,
# animals.petname AS animals_petname,
# animals.age AS animals_age,
# animals.weight AS animals_weight
# FROM animals


#################################################################################################################
# SELECTING FROM TABLE
##################################################################################################################

#  create session
engine = create_engine("sqlite:///:memory:", echo=True)
Base.metadata.create_all(engine)

Session = sessionmaker(bind=engine)
session = Session()

# 2 ways to specify session
# 1. specify session
query = Query(Animals, session)
# 1. (alternative) The code above is equivalent to:
query = Query(Animals)
query = query.with_session(session)
# 2.
query = session.query(Animals)


# add values
session.add(Animals(petname="Billy", age=1, weight=8))
session.add(Animals(petname="Susan", age=4, weight=12))

session.commit()


# get all values
# returns a list of tuples with the values from our query
all_rows = query.all()
for row in all_rows:
    print(f"Pet name: {row.petname}, age: {row.age}, weight: {row.weight}")
# Pet name: Billy, age: 1, weight: 8
# Pet name: Susan, age: 4, weight: 12
