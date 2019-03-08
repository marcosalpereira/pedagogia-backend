#!/bin/bash

psql -d pedagogia -U na -f 01-reset.sql
psql -d pedagogia -U na -f 02-create.sql
psql -d pedagogia -U na -f 02-dados.sql
