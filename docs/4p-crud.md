### DATABSE/SQL

ADVANTAGE

- 早くて直感的

DISADVANTAGE

- 機械的にフィールドと変数をマッピングする必要がある<br>
  -> 退屈、ミスの誘発、実行時のバグの顕在化

### GORM

ADVANTAGE

- CRUD 関数が用意されていて、簡潔に書ける

DISADVANTAGE

- 記法を学ぶ必要性
- 複雑なクエリは遅い

### SQLX

ADVANTAGE

- 高速で使うのが簡単
- 構造体などでクエリのマッピングをする
- 実行時にエラーが起きない

DISADVANTAGE

- 記法を学ぶ必要性
- 複雑なクエリは遅い

### SQLC

- 高速で簡易
- 自動でコード生成
- エラーを即座に報告してくれる
