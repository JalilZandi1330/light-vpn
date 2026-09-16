# light-vpn — Light Shadowsocks for Railway

**سبک‌ترین VPN برای Railway — تک باینری sing-box (~12MB)**

### دیپلوی روی Railway
1. این ریپو رو Fork کن یا Deploy with Railway بزن
2. متغیر محیطی `SS_PASSWORD` رو ست کن (یا خودکار ۱۶ حرفی میسازه)
3. Railway خودش `PORT` رو میده — نیازی به تنظیم دستی نیست

### کانفیگ کلاینت
بعد از دیپلوی، لاگ Railway اینو نشون میده:
```
Generated SS_PASSWORD=xxxx
Listening on PORT=xxxx
```

لینک `ss://` برای اندروید/ویندوز:
```
ss://2022-blake3-aes-128-gcm:YOUR_PASSWORD@YOUR_RAILWAY_DOMAIN:443
```

- **اندروید:** SagerNet / Matsuri / sing-box
- **ویندوز:** Nekoray / sing-box for Windows (https://sing-box.sagernet.org)

### چرا این ترکیب؟
- Shadowsocks-2022 + Blake3 = سبک، سریع، مقاوم به تشخیص
- sing-box = یک باینری، بدون نیاز به دامنه جدا
- multiplex روشن = سرعت بهتر روی اینترنت ایران

### حجم
- ایمیج: ~15MB
- RAM: ~20MB
- مناسب Railway 512MB
