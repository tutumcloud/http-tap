# http-tap

Pauses and resumes HTTP connections to allow zero downtime deployments with schema migrations. Inspired by [How Balanced does Database Migrations with Zero-Downtime](http://blog.balancedpayments.com/payments-infrastructure-suspending-traffic-zero-downtime-migrations/).


## Usage

	docker run -d --name tap -e FRONTEND_BIND="0.0.0.0:80" -e BACKEND_SERVER="127.0.0.1:8000" --net host tutum/http-tap

Will listen in `http://0.0.0.0:80` and forward requests to `http://127.0.0.1:8000`

To pause all connections:

	docker exec tap pause

To resume all paused connections:

	docker exec tap resume
