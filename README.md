- コンテナ一覧表示
```
docker ps -a
```
- コンテナの起動
```
docker start <コンテナID or コンテナ名>
```
- コンテナの停止
```
docker stop <コンテナID or コンテナ名>
```
- コンテナを削除
```
docker rm <コンテナID or コンテナ名>
```
### ci-setup

- golang-migrate setup
[参考にしたサイト](https://www.takayasugiyama.com/entry/2022/04/08/001033)

- simplebank コンテナ
```
docker run --name simplebank --network bank-network -p 8080:8080 -e GIN_MODE=release -e DB_SOURCE="postgresql://root:password@postgres16:5432/simple_bank?sslmode=disable" simplebank:latest
```