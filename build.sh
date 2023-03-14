docker build -t victorhugojt/devops_rampup_users .

docker build -t victorhugojt/devops_rampup_log_processor .

docker build -t victorhugojt/devops_rampup_todos .

docker build -t victorhugojt/devops_rampup_front .

docker build -t victorhugojt/devops_rampup_auth .

docker rmi -f `docker image ls | grep '<none>' | awk '{print $3}'`

docker build -t victorhugojt/devops_rampup_redis .