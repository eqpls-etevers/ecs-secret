FROM python:3.12.4-alpine3.20
RUN pip install --no-cache-dir fastapi uvicorn asyncio aiohttp aiofiles aiopath websockets python-keycloak python-multipart stringcase requests luqum pyOpenSSL
RUN mkdir -p /opt/module
WORKDIR /opt/module
ENTRYPOINT ["python", "server"]