# Deploy to Fly.io (جایگزین Railway)

Railway VPN را به خاطر ToS می‌بندد — Fly.io مجاز است.

### 1. نصب flyctl
```
# ویندوز (PowerShell)
powershell -Command "iwr https://fly.io/install.ps1 -useb | iex"
# یا linux/mac
curl -L https://fly.io/install.sh | sh
```

### 2. لاگین و دیپلوی
```
fly auth login
fly launch --no-deploy --copy-config  # اگر app name جدید میخوای
fly secrets set SS_PASSWORD=$(openssl rand -base64 12 | tr -dc A-Za-z0-9 | head -c16)
fly deploy
```

### 3. گرفتن آدرس
```
fly status
fly ips list
# دامنه: light-vpn.fly.dev:3000
```

### 4. لینک ss://
```
./generate-link.sh light-vpn.fly.dev 3000 YOUR_PASSWORD
```
را در Matsuri (اندروید) یا Nekoray (ویندوز) وارد کن.

نکته: region را به `fra` یا `ams` بگذار برای پینگ بهتر از ایران.
