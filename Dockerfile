FROM microsoft/mssql-server-linux:latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=yourStrong!Password

WORKDIR /opt/mssql-tools/bin/

COPY ./Airport-database/Data/ ./
COPY ./Airport-database/Query/ ./
COPY ./Airport-database/Tables/ ./

# First 100 seconds are reserved for starting SQL Server
RUN /opt/mssql/bin/sqlservr --accept-eula & sleep 100 \ 
  && ./sqlcmd -S localhost -U SA -P 'yourStrong!Password' -i ./Initialize_Database.sql \
  && ./sqlcmd -S localhost -U SA -d Airport -P 'yourStrong!Password' -i ./Pilot.sql \
  && ./sqlcmd -S localhost -U SA -d Airport -P 'yourStrong!Password' -i ./Airplane.sql \
  && ./sqlcmd -S localhost -U SA -d Airport -P 'yourStrong!Password' -i ./Flight.sql \
  && ./sqlcmd -S localhost -U SA -d Airport -P 'yourStrong!Password' -i ./License.sql \
  && ./sqlcmd -S localhost -U SA -d Airport -P 'yourStrong!Password' -i ./Flight_History.sql \
  && ./sqlcmd -S localhost -U SA -d Airport -P 'yourStrong!Password' -i ./Default_Data.sql \
  && pkill sqlservr

EXPOSE 1433
