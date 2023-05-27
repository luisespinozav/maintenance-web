# Maintenance - Home

## Stage: Development
1. Copy `env.example` to `.env`:
```bash
cp env.example .env
```
2. Deploy app:
```bash
docker compose up -d
```

## Stage: Production

### Option 1
1. Copy `env.example` to `.env`:
```bash
cp env.example .env
```
2. Deploy app:
```bash
docker compose -f docker-compose-prod.yml up -d
```

### Option 2
1. Build the image:
```bash
docker build -t <app_image_name>:<tag> .
```

2. Run the container:
```bash
docker run -d --name <app_name> -it -p 8000:80 \
-e ENVIRONMENT=production \
--restart unless-stopped <app_image_name>:<tag>
```
