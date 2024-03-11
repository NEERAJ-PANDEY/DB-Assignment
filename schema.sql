from sqlalchemy import create_engine, MetaData

engine = create_engine('sq:///my_database.db')
metadata = MetaData()

# Create a new schema
schema = MetaData()
schema.create_all(engine)
