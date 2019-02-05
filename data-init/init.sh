!/bin/bash

psql -d pedagogia -U na -f 1-reset.sql
psql -d pedagogia -U na -f 2-create.sql
psql -d pedagogia -U na -f 4-basic.sql
psql -d pedagogia -U na -f 20-alunos.sql
psql -d pedagogia -U na -f 20-turmas.sql
psql -d pedagogia -U na -f 30-alunos_turmas.sql
