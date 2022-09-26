# do not need to specify a class and table seperately, just do it all in one class

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
