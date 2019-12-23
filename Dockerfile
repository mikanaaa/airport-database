FROM microsoft/mssql-server-linux:latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=yourStrong!Password

WORKDIR /opt/mssql-tools/bin/

COPY ./Airport-database/Data/ ./
COPY ./Airport-database/Query/ ./
COPY ./Airport-database/Tables/ ./

RUN /opt/mssql/bin/sqlservr --accept-eula & sleep 10

RUN ./sqlcmd -S localhost -U SA -P 'yourStrong!Password' -i ./Pilot.sql
RUN ./sqlcmd -S localhost -U SA -P 'yourStrong!Password' -i ./Airplane.sql
RUN ./sqlcmd -S localhost -U SA -P 'yourStrong!Password' -i ./Flight.sql
RUN ./sqlcmd -S localhost -U SA -P 'yourStrong!Password' -i ./Default_Data.sql

EXPOSE 1433