
import duckdb

class Database:
    """Database class with connection implemented as context manager"""

    def __init__(self, db_path) -> None:
        self.db_path = db_path
        self.connection = None

    def __enter__(self):
        self.connection = duckdb.connect(self.db_path)
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        if self.connection:
            self.connection.close()

    def query(self, query):
        # Use the persistent connection for querying
        return self.connection.execute(query).fetchall()
    

class DatabaseDataFrame(Database):
    def query(self, query):
        return self.connection.execute(query).df()
