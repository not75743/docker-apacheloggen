# これはなに？
ダミーログを生成するツール、apache-loggenをdocker-composeで動かすようにしました。  
apache-loggenのGitHubリポジトリはこちらです。  
https://github.com/tamtam180/apache_log_gen

# 注意
- 上記GitHubリポジトリを参考にコマンドを作成しています。
- ログの生成を停止したいときは`Ctrl + C`を押下して下さい。

# apache-loggenコマンド集
## 標準出力
```bash
# 標準出力
$ docker compose exec apacheloggen apache-loggen

# ファイルにリダイレクト
$ docker compose exec apacheloggen apache-loggen >> test.log
```

## jsonで標準出力
```bash
$ docker compose exec apacheloggen apache-loggen --json
```

## 毎秒100レコードの速度でファイル「abc.log」に出力（`logs`フォルダに格納される）
```bash
$ docker compose exec apacheloggen apache-loggen --rate=100 abc.log
```

## 10秒ごとにファイルのローテーションを行う（`logs`フォルダに格納される）
```bash
$ docker compose exec apacheloggen apache-loggen --rotate=10 abc.log
```