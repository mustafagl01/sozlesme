# MGL Sözleşme Platformu

Dijital sözleşme imzalama platformu.

## Deployment

Bu proje Coolify üzerinde Docker ile deploy edilmek üzere hazırlanmıştır.

### Gereksinimler
- Docker
- Nginx

### Coolify Deployment
1. GitHub reposunu Coolify'a bağlayın
2. "Dockerfile" build method'unu seçin
3. Port: 80
4. Deploy edin

### Yerel Test
```bash
docker build -t mgl-sozlesme .
docker run -p 8080:80 mgl-sozlesme
```

Tarayıcıda: http://localhost:8080
