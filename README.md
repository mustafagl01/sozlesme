# MGL Sözleşme Platformu

Dijital sözleşme imzalama ve PDF oluşturma platformu.

## Özellikler

- 🔐 Dijital imza desteği
- 📄 Otomatik PDF oluşturma
- 🌍 Çoklu dil desteği (TR/EN)
- 💰 Çoklu para birimi (GBP, USD, EUR, TRY)
- 📱 Responsive tasarım
- 🚀 Nginx ile optimize edilmiş

## Deployment

### Coolify Deployment (Önerilen)

1. **GitHub Reposunu Bağlayın**
2. **Ayarlar:**
   - Build Method: `Dockerfile`
   - Port: `80`
   - Health Check Path: `/health`
3. **Domainleri Ekleyin:**
   - mgl-ai.uk
   - mgldigitalmedia.com
   - glassora.co.uk
4. **Deploy Edin**

### Docker ile Yerel Test

```bash
# Build
docker build -t mgl-sozlesme .

# Run
docker run -d -p 8080:80 --name mgl-sozlesme mgl-sozlesme

# Test
curl http://localhost:8080/health
```

### Docker Compose ile Test

```bash
docker-compose up -d
```

Tarayıcıda: http://localhost:80

## Teknik Detaylar

- **Web Server:** Nginx Alpine
- **Container Port:** 80
- **Health Check:** /health endpoint
- **Image Size:** ~25MB

## Domains

- http://mgl-ai.uk
- http://mgldigitalmedia.com
- http://glassora.co.uk

## Troubleshooting

### Container çalışmıyor
```bash
docker logs <container-id>
```

### Nginx testi
```bash
docker exec -it <container-id> nginx -t
```

### Port kontrolü
```bash
docker exec -it <container-id> netstat -tulpn | grep 80
```
