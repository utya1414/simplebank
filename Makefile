postgres:
	docker run --name --network bank-network postgres16 -p 5434:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=password -d postgres:16-alpine

bash:
	docker exec -it postgres16 bash

psql:
	docker exec -it postgres16 psql --username=root --dbname=simple_bank

createdb:
	docker exec -it postgres16 createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it postgres16 dropdb simple_bank

migrateup1:
	migrate -path db/migration -database "postgresql://root:password@localhost:5434/simple_bank?sslmode=disable" -verbose up 1

migrateup:
	migrate -path db/migration -database "postgresql://root:password@localhost:5434/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://root:password@localhost:5434/simple_bank?sslmode=disable" -verbose down

migratedown1:
	migrate -path db/migration -database "postgresql://root:password@localhost:5434/simple_bank?sslmode=disable" -verbose down 1

sqlc:
	sqlc generate

test:
	go test -v -cover ./...

server:
	go run main.go
	
mock:
	mockgen -package mockdb -destination db/mock/store.go github.com/techschool/simplebank/db/sqlc Store

.PHONY: postgres bash psql createdb dropdb migrateup migrateup1 migratedown migratedown1 sqlc test server mock