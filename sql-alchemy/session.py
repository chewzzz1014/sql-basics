from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String

# constructs a base class for defining a declarative class
Base = declarative_base()


# Declarative_base() contains the built-in __init__

class Animals(Base):
    __tablename__ = "animals"

    id = Column(Integer, primary_key=True)
    petname = Column(String(30))
    age = Column(Integer)
    weight = Column(Integer)


# engine to deal with the table create

engine = create_engine("sqlite://", echo=True)
# saves table in SQLite format
Base.metadata.create_all(engine)


###################################################################################################################################################
# modifying table create in classical_mapping.py and declarative_mapping.py

# mapper() and declarative extensions are primary interfaces for ORM


# session is primary interface: to communiciate w/ database and ensures that all operations run smoothly


# Session class is defined with sessionmaker(), a configurable session factory method that is bound to the engine object.
Session = sessionmaker(bind=engine)

# default constructor
# remains connected to the engine until we commit the changes or close the session object.
session = Session()


animal_1 = Animals(petname='Timmy', age=2, weight=12)
animal_2 = Animals(petname='Tommy', age=3, weight=10)
animal_3 = Animals(petname='Kitty', age=4, weight=14)
# add entries
session.add(animal_1)
session.add(animal_2)
session.add(animal_3)
# save changes
session.commit()
