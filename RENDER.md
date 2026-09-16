# Deploy to Render — بدون کارت (جایگزین Railway/Koyeb)

Render برای پلن Free کارت نمی‌خواهد و VPN را بلاک نمی‌کند.

### دیپلوی
1. https://dashboard.render.com → New → Web Service → Connect `JalilZandi1330/light-vpn`
2. Environment: `Docker`
3. Plan: `Free`
4. Advanced → Add Environment Variable:
   - `SS_PASSWORD` = یک رمز 16 حرفی (یا Generate بزن)
5. Create Web Service → بعد از 2 دقیقه URL میده: `https://light-vpn-xxxx.onrender.com`

### نکته Render
- Render پورت را از `PORT` میخواند (ما روی 10000 ست کردیم، entrypoint خودکار هندل میکند)
- Free Service بعد از 15 دقیقه بدون ترافیک sleep میشود — اولین درخواست 30 ثانیه طول میکشد تا بیدار شود (طبیعی است)
- برای همیشه روشن ماندن، میتوانی یک UptimeRobot هر 10 دقیقه به آن ping بزند

### لینک ss://
```bash
./generate-link.sh light-vpn-xxxx.onrender.com 443 YOUR_PASSWORD
```
