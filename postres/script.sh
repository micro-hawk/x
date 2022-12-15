#!/bin/bash
read -p "databaseName: " DATABASE
read -p "host: " HOST
read -p "username: " USERNAME
read -p "password: " PGPASSWORD
PORT=5432

export PGPASSWORD=$PGPASSWORD
psql -d $DATABASE --host=$HOST --port=$PORT --username=$USERNAME -f ./db.sql
