#!/bin/bash

docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=g4Z+y@ST2w_e" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest