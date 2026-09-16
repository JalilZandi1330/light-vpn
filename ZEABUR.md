# Deploy to Zeabur — وقتی onrender.com از ایران باز نمیشه

Zeabur دامنه `*.zeabur.app` میده که معمولاً از ایران تمیزتره. بدون کارت، با GitHub لاگین.

### دیپلوی
1. https://zeabur.com → Sign up با GitHub
2. Create Project → Deploy from GitHub → انتخاب `JalilZandi1330/light-vpn`
3. خودش Dockerfile را می‌خواند. Variables:
   - `VLESS_UUID` = همان UUID قبلی (`2045cc78-e44f-c50e-9579-c6c0994f4041`) یا یکی جدید
   - `PORT` را خود Zeabur میدهد (entrypoint خودکار می‌خواند)
4. Networking → Generate Domain → میده: `light-vpn-xxx.zeabur.app`
5. Deploy → بعد 1-2 دقیقه بالا میاد

### لینک کلاینت
```
vless://UUID@light-vpn-xxx.zeabur.app:443?encryption=none&security=tls&sni=light-vpn-xxx.zeabur.app&type=ws&path=%2Fvless-ws#light-vpn-ws
```

### تست مسیر (قبل از v2rayN)
اول تو مرورگر بزن `https://light-vpn-xxx.zeabur.app/vless-ws` — اگر باز شد (حتی Bad Request)، مسیر بازه و v2rayN وصل میشه.
