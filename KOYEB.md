# Deploy to Koyeb — بدون کارت اعتباری (بهترین جایگزین Railway)

Koyeb مثل Railway هست ولی VPN/Proxy رو بن نمی‌کنه و برای پلن Free کارت نمی‌خواد.

### دیپلوی یک‌کلیکی
1. برو به https://app.koyeb.com/auth/signup — با GitHub لاگین کن
2. Create Service → GitHub → انتخاب `JalilZandi1330/light-vpn`
3. Builder: `Dockerfile` (خودکار تشخیص میده)
4. Instance: `Nano` (رایگان)
5. Environment Variables:
   - `SS_PASSWORD` = یک رشته 16 حرفی (مثلا `MyPass1234AbCdEf`)
   - `PORT` را خالی بگذار — Koyeb خودش 8000 میده، entrypoint خودکار می‌خواند
6. Exposed Port: `3000` → Public
7. Deploy → بعد از 1 دقیقه دامنه `https://xxx-xxx.koyeb.app` میده

### گرفتن لینک ss://
```bash
./generate-link.sh xxx-xxx.koyeb.app 443 MyPass1234AbCdEf
# خروجی: ss://... 
```

در Matsuri (اندروید) یا Nekoray (ویندوز) وارد کن.

### نکته
- Koyeb دامنه را با TLS میده، Shadowsocks روی همان پورت کار میکند (نیازی به TCP جداگانه نیست)
- اگر پورت کار نکرد، در Koyeb Service → Networking → Port را روی `3000` و Protocol `TCP` بگذار
