from constants import DATA_PATH, DATABASE_PATH
from database import Database


def setup_schema():
    with Database(DATABASE_PATH) as db: 
        db.query(f"CREATE SCHEMA IF NOT EXISTS supplier_invoice;")

def ingest_data():
    for csv_path in DATA_PATH.glob("Lev*.csv"):
        invoice_name = csv_path.name.split(".")[0][-6:]
        print(invoice_name)
        with Database(DATABASE_PATH) as db: 
            db.query(f"""
                     CREATE TABLE IF NOT EXISTS supplier_invoice.invoice_{invoice_name} 
                     AS SELECT 
                     * FROM read_csv_auto('{csv_path}', types={{'Organisationsnummer': 'VARCHAR'}});
                     """)

if __name__ == '__main__':
    setup_schema()
    ingest_data()