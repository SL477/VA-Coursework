# VA-Coursework
 Visual Analytics Coursework

## Setup
1. Download data from https://www.kaggle.com/yingwurenjian/chicago-divvy-bicycle-sharing-data

2. install dask/plotly using 

```
conda install -c plotly plotly=5.3.1
```

or 

```
pip install -r requirements.txt
```

Then python-dotenv:

```
conda install -c conda-forge python-dotenv
```

In the .env file setup the file:

```
SQLSERVER=SERVERNAME
```

Run the SQL files:
1. CreateDatabase.sql
2. Run loadToSql.py
