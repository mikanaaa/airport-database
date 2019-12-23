# Airport database

## Project for university subject: Database Design. It consists of creating entity relationship diagram & implementing that design in concrete database, in this case SQL Server.

![Image](EntityRelationshipDiagram.svg)

## Timeline

Steps in creating this project:

- ERD entities
- ERD entity relationships
- DDL create tables
- DML inserting data
- DQL query commands
- Docker deployment

## Try it

To test this project in linux environment, make sure you have [docker](https://www.docker.com/) installed

----------
```
sudo docker build -t airportdb:1.0
sudo docker run -d -p 1433:1433 airportdb:1.0
sudo docker exec -it <container id> /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'yourStrong!Password'
```