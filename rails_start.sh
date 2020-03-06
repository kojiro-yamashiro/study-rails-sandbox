# #!/usr/bin/env bash
docker-compose up -d &

wait
sleep 1

bin/rails db:drop db:create
bin/rails db:migrate
bin/rails s --port=3000 -b 0.0.0.0
