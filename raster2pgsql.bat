REM Parametre de connections
set PGPORT=5432 
set PGHOST=localhost
set PGUSER=postgres
set PGPASSWORD=postgres 

REM chercher le propgramme 
cd "C:\Program Files\PostgreSQL\9.5\bin" 

REM Transformer en SQL l'image dans le schema raster
  raster2pgsql   -d -I -C -e -Y   -s 4326   -t 128x128    "C:\monalisa\mona_lisa.jpg"  raster.monalisa >   "C:\raster\monalisa.sql" 
 
REM Importer le SQL dans la base de donnee raster
psql -d raster -f "C:\raster\monalisa.sql"  
 pause
