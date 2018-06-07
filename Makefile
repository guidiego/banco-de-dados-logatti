USER=root
PASS=123
CONTAINER=sql1

start:
	docker pull microsoft/mssql-server-linux:2017-latest
	docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=$(USER)!$(PASS)' \
		-p 1401:1433 --name $(CONTAINER) \
		-d microsoft/mssql-server-linux:2017-latest

end:
	docker kill $(CONTAINER)
	docker rm $(CONTAINER)

reset:
	$(MAKE) end
	$(MAKE) start

run:
	$(eval fake_name=$(shell uuidgen).sql)
	docker cp $(script) $(CONTAINER):/$(fake_name)
	docker exec -it $(CONTAINER) /opt/mssql-tools/bin/sqlcmd \
   		-S localhost -U SA -P '$(USER)!$(PASS)' \
		-i $(fake_name)

	docker exec -it $(CONTAINER) rm $(fake_name)

up:
	$(MAKE) reset
	$(MAKE) run script=$(workspace)/create.sql
	test ! -f $(workspace)/trigger.sql && $(MAKE) run script=$(workspace)/trigger.sql
	$(MAKE) run script=$(workspace)/populate.sql