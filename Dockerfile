FROM apache/airflow:2.9.1
USER airflow
RUN pip install --no-cache-dir requests \
    apache-airflow-providers-snowflake \
    snowflake-connector-python \
    dbt-snowflake \
    dbt-core
