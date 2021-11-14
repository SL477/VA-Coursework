#import pyodbc
import dask.dataframe as dd
from dotenv import load_dotenv
import os
from sqlalchemy import create_engine
from sqlalchemy.sql import text

# Load the data
def loadData()->dd.DataFrame:
    '''Load the data from the csv file and return a Dask dataframe'''
    df = dd.read_csv('data/data.csv')
    # Sort out the formating of data to take up less room
    df['starttime'] = dd.to_datetime(df['starttime'])
    df['stoptime'] = dd.to_datetime(df['stoptime'])
    df['gender'] = df['gender'].astype('category')
    df['usertype'] = df['usertype'].astype('category') # only Customer and Dependent
    df['events'] = df['events'].astype('category')
    df['from_station_name'] = df['from_station_name'].astype('category') # 656 stations
    df['to_station_name'] = df['to_station_name'].astype('category')
    return df

def getSqlAlchemyConnectionString():
    '''Returns the SQL connection string for SQL Alchemy'''
    # from https://stackoverflow.com/questions/24085352/how-do-i-connect-to-sql-server-via-sqlalchemy-using-windows-authentication
    return 'mssql+pyodbc://' + os.getenv('SQLSERVER') + '/ChicagoBikeData?trusted_connection=yes&driver=ODBC+Driver+17+for+SQL+Server' 

if __name__ == '__main__':
    # Load the database server name
    _ = load_dotenv()

    # Make the database connection
    #con = pyodbc.connect("Driver={{SQL Server Native Client 11.0}};Server={};Database=ChicagoBikeData;Trusted_Connection=yes;".format(os.getenv('SQLSERVER')))

    # Load the data
    df = loadData()
    #db = 'mssql://{}/ChicagoBikeData?trusted_connection=yes&Driver={{SQL Server Native Client 11.0}}'.format(os.getenv('SQLSERVER'))
    #db = 'mssql+pyodbc://' + os.getenv('SQLSERVER') + '/ChicagoBikeData?trusted_connection=yes&driver=ODBC+Driver+17+for+SQL+Server' # from https://stackoverflow.com/questions/24085352/how-do-i-connect-to-sql-server-via-sqlalchemy-using-windows-authentication
    db = getSqlAlchemyConnectionString()
    print('db connection: ',db)

    # Save to SQL
    df.to_sql('bikedata', db)
    print('Written to SQL')

    # Run the SQL files
    engine = create_engine(db)
    with engine.connect() as con:
        for f in ['CreateGenderTable.sql','PopulateGenderTable.sql','UpdateBikeDataForGender.sql','CreateBikeStationTable.sql','PopulateBikeStationData.sql','CreateUserType.sql','PopulateUserType.sql','CreateEventsTable.sql','PopulateEventsTable.sql','AlterColumnTypes.sql']:
            file = open(os.path.join('sql', f))
            query = text(file.read())

            con.execute(query)
            print('ran :', f)