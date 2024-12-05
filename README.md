# Bitcoin Data Engineering & Analytics Project

## Overview
This project is an end-to-end data engineering and analytics solution that fetches real-time Bitcoin data from CoinAPI, processes and stores the data in a database, and performs analytics for insightful reporting and forecasting.

## Table of Contents
1. [Introduction](#introduction)
2. [Project Structure](#project-structure)
3. [Technologies Used](#technologies-used)
4. [Data Pipeline Flow](#data-pipeline-flow)
5. [Setup Instructions](#setup-instructions)
6. [Running the Project](#running-the-project)
7. [Analytics](#analytics)
8. [License](#license)

## Introduction
This project uses CoinAPI to collect Bitcoin price data and build a data pipeline that processes, stores, and analyzes the information. The solution includes data extraction, transformation, and loading (ETL), followed by analytics and visualizations to provide valuable insights into Bitcoin's price fluctuations over time.

## Project Structure
```
bitcoin-data-engineering/
├── data/
│   ├── raw_data/
│   └── processed_data/
├── notebooks/
│   ├── analysis.ipynb
│   └── visualization.ipynb
├── scripts/
│   ├── extract_data.py
│   ├── transform_data.py
│   └── load_data.py
├── config/
│   └── config.json
└── README.md
```
## Technologies Used
- **CoinAPI**: A real-time cryptocurrency data provider.
- **Python**: The primary language for data processing and scripting.
- **Pandas**: Data manipulation and analysis.
- **Matplotlib**: Visualization of data trends.
- **Snowflake**: Storage of processed Bitcoin price data.

## Data Pipeline Flow
1. **Extract**: Data is pulled from CoinAPI using their RESTful API, fetching real-time Bitcoin prices and historical data.
2. **Transform**: Raw data is cleaned, normalized, and transformed into a usable format for analysis.
3. **Load**: Transformed data is stored into a relational database for easy querying and retrieval.
4. **Analyze**: Data is analyzed for patterns, trends, and statistical insights. Visualization tools are used to display Bitcoin price movements.

## Setup Instructions

### Prerequisites
Ensure you have the following installed:
- Python 3.x
- Snowflake
- Required Python libraries (`requests`, `pandas`, `matplotlib`, `sqlalchemy`, `coinapi_v1`, etc.)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/bitcoin-data-engineering.git
   cd bitcoin-data-engineering
   ```

2. Set up your database (MySQL/PostgreSQL). Make sure to update your database credentials in `config/config.json`.

3. Obtain an API key from CoinAPI and add it to the `config/config.json` file:
   ```json
   {
     "api_key": "your_coinapi_key",
     "db_username": "your_db_username",
     "db_password": "your_db_password",
     "db_name": "your_db_name"
   }
   ``
