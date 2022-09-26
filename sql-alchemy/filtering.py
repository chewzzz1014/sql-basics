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
# Filtering the table
##################################################################################################################

#  create session
engine = create_engine("sqlite:///:memory:", echo=True)
Base.metadata.create_all(engine)

Session = sessionmaker(bind=engine)
session = Session()


query = Query(Animals, session)


# add values
session.add(Animals(petname="Billy", age=1, weight=8))
session.add(Animals(petname="Susan", age=4, weight=12))

session.commit()


query = session.query(Animals)
for row in query.filter(Animals.petname == "Billy"):
    print(row.petname, row.age, row.weight)  # Billy 1 8
