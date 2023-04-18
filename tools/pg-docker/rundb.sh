#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker run -d \
	--name peppermint-postgres \
	-e POSTGRES_PASSWORD=postgres \
	-e PGDATA=/var/lib/postgresql/data/pgdata \
	-v ${SCRIPT_DIR}/data:/var/lib/postgresql/data \
  -p 54320:5432 \
	postgres
