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

## Ideas
- group by hour, day of week, month, year, number of trips between bike stations
- group by bikestation, date, number of trips
- chicago gunshot events?

- Effect of chicago bomber on bike demand
- Effect of shooting incidents on bike demand
- Predict using regression bike demand
- Cluster analysis of bike stations
- PCA of the various data points
- Effect of any other pandemic on bike demand, assuming there was one between 2014-2017 there