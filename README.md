# Monitoring and Registry System

This repository contains a **Prometheus + Alertmanager monitoring setup** along with a **self-hosted Docker registry**. It is designed to monitor system metrics and handle Docker image storage locally.

## Components

- **Prometheus**: Collects metrics from the system and node-exporter.
- **Alertmanager**: Handles alerts from Prometheus and can notify via email.
- **Node Exporter**: Exposes host system metrics to Prometheus.
- **Docker Registry**: Self-hosted registry to push/pull Docker images locally.

## Prerequisites

- Docker Desktop (macOS) or Docker Engine (Linux)
- Docker Compose

## Setup

1. Clone the repository:

```bash
git clone git@github.com:SailezaA/monitoring_system.git
cd monitoring_system
```
2. Start all containers:
```
docker compose up -d
```

3. Verify all containers are running
```
docker ps
```
Expected containers:
```
prometheus

alertmanager

node-exporter

docker-registry
```
## Prometheus
Web UI: http://localhost:9090

Check targets: http://localhost:9090/targets

## Alertmanager
Web UI: http://localhost:9093

Configure receivers in alertmanager.yml.

Test alerts can be added in prometheus/alert.rules.yml.

## Docker registry
Host port: 5001 → Container port 5000

Push an image:
```
docker pull busybox
docker tag busybox localhost:5001/busybox
docker push localhost:5001/busybox
```

Pull an image:
```
docker pull localhost:5001/busybox
```

Check available images:
```
curl http://localhost:5001/v2/_catalog
curl http://localhost:5001/v2/busybox/tags/list
```