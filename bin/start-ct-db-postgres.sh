#!/bin/bash
#
CT_ENGINE=$(which podman)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
#
"$CT_ENGINE" run -d -p '5432:5432' --name db-postgres \
	--replace --tz America/Sao_Paulo \
	--hostuser onofre \
	-e POSTGRES_HOST_AUTH_METHOD=trust \
	-e POSTGRES_PASSWORD=adm1234567 \
	docker.io/library/postgres:16-alpine;

