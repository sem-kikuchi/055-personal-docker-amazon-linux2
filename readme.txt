## 作成手順

- docker-compose build
- docker-compose up -d
- docker-compose exec amzn-linux-2 /share/make_lib.sh

完了すると build 配下に生成されます




docker exec -it --user=ec2-user amzn-linux-2 /bin/bash