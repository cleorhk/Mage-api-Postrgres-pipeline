# Mage-api-Postrgres-pipeline
This project implements a data pipeline using Mage, Docker, and PostgreSQL. The pipeline fetches intraday stock data from the Alpha Vantage API, performs transformations, and exports the processed data to a PostgreSQL database. The project is designed to run automatically at specified intervals, ensuring up-to-date data collection and processing.

Here's a detailed GitHub repository description for your project:

Alpha Vantage Data Pipeline
Overview
This project implements a data pipeline using Mage, Docker, and PostgreSQL. The pipeline fetches intraday stock data from the Alpha Vantage API, performs transformations, and exports the processed data to a PostgreSQL database. The project is designed to run automatically at specified intervals, ensuring up-to-date data collection and processing.

Features
Data Fetching: Retrieves intraday stock data from the Alpha Vantage API.
Data Transformation: Renames columns and performs calculations such as average price and high-low difference.
Data Export: Exports the transformed data to a PostgreSQL database.
Automated Scheduling: Configured to run automatically at specified intervals using Mage.
Containerization: Uses Docker and Docker Compose for easy setup and deployment.
Getting Started
Prerequisites
Docker and Docker Compose
PostgreSQL
Mage

Set up environment variables:
Create a .env file in the project root and add the following:
POSTGRES_DBNAME=your_database_name
POSTGRES_USER=your_username
POSTGRES_PASSWORD=your_password
POSTGRES_HOST=postgres
POSTGRES_PORT=5432

Configure Mage:
Ensure io_config.yaml is properly configured for your PostgreSQL connection.

Running the Pipeline
Build and start the services:
docker-compose up --build

Project Structure
alpha-vantage-data-pipeline/
├── docker-compose.yml
├── Dockerfile
├── .env
├── io_config.yaml
├── fetch_alpha_vantage_data.py
├── transform_alpha_vantage_data.py
├── export_to_postgres.py
├── pipeline.yaml
├── requirements.txt
└── README.md
