# Coolify Siteler – Durum ve Yapılanlar

**Tarih:** 12 Şubat 2026

## Yapılan İşlemler

### 1. mgldigitalmedia & cleanbluewater (GitHub)

- **Dockerfile** (her iki repo):
  - Build sonrası `dist/index.html` var mı diye kontrol eklendi. Yoksa build hata verir, böylece boş deploy önlenir.
- **.dockerignore** (her iki repo):
  - Build’i hızlandırmak ve gereksiz dosyaları hariç tutmak için eklendi.
- **CLean_Blue_Water** repo:
  - **DEPLOY.md** eklendi: cleanbluewater.uk için DNS ve Coolify ayarları yazılı.

### 2. Coolify

- mgldigitalmedia domain alanı daha önce `https://mgldigitalmedia.com` olacak şekilde düzeltildi.
- GitHub’a push yapıldı; Coolify’da **webhook** açıksa yeni deploy’lar otomatik tetiklenmiş olabilir.

---

## Sizin Kontrol Etmeniz Gerekenler

### mgldigitalmedia.com hâlâ açılmıyorsa

1. **Coolify** → mgldigitalmedia projesi → **Deployments**.
2. En son deployment’a tıklayıp **log**’a bakın.
   - **"Build failed - no index.html in dist"** görürseniz: build aşamasında hata var (ör. eksik env). Coolify’da bu uygulama için **Environment Variables**’a gidip gerekli değişkenleri (ör. Supabase) ekleyin.
   - Başka bir hata varsa: log’taki tam hata mesajına göre düzeltin.
3. Otomatik deploy olmadıysa: **Redeploy** butonuna basıp yeniden deploy alın.

### cleanbluewater.uk açılmıyorsa

1. **DNS ayarı zorunlu:**
   - Domain’in **A** kaydı: **46.224.148.239** olmalı.
   - **Cloudflare** kullanıyorsanız: `cleanbluewater.uk` (ve isterseniz `www`) için kaydı **gri bulut** (DNS only) yapın; turuncu (proxy) kapalı olsun.
2. Detaylı adımlar **CLean_Blue_Water** repo’sundaki **DEPLOY.md** dosyasında.

---

## Özet Tablo

| Site                | Durum  | Not |
|---------------------|--------|-----|
| mgl-ai.uk (sozlesme) | Çalışıyor | - |
| glassora.co.uk      | Çalışıyor | - |
| mgldigitalmedia.com | Kontrol edin | Build log’a bakın; gerekirse Redeploy. |
| cleanbluewater.uk   | DNS gerekli | A: 46.224.148.239, proxy kapalı (gri bulut). |

Telefondan ara ara bu adresleri deneyebilirsiniz; DNS / deploy tamamlandıkça siteler açılacaktır.
