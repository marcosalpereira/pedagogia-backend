#!/bin/bash

#psql -d pedagogia -U na -f 01-reset.sql
psql -d pedagogia -U na -f 02-create.sql
psql -d pedagogia -U na -f 04-basic.sql
psql -d pedagogia -U na -f 20-alunos.sql
psql -d pedagogia -U na -f 20-turmas.sql
psql -d pedagogia -U na -f 30-alunos_turmas.sql
