# Nginx tabanlı hafif bir web sunucusu kullan
FROM nginx:alpine

# HTML dosyalarını nginx'in varsayılan dizinine kopyala
COPY mgl-sozlesme-platformu.html /usr/share/nginx/html/
COPY logo.png /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/

# Özel nginx konfigürasyonunu kopyala
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Nginx'in 80 portunu aç
EXPOSE 80

# Nginx'i başlat
CMD ["nginx", "-g", "daemon off;"]
