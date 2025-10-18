# 🚀 OracleMind - Quick Start Guide

## ⚡ TL;DR - Get Running in 3 Steps

### 1️⃣ Start Oracle Service
```bash
cd contracts/oracle-service
npm run start
```

### 2️⃣ Start Frontend
```bash
cd frontend
npm run dev
```

### 3️⃣ Open Browser
Visit: http://localhost:3000

---

## 🌐 Deploy to Vercel (2 Steps)

### 1️⃣ Push to GitHub
```bash
git add .
git commit -m "Deploy to Vercel"
git push origin main
```

### 2️⃣ Deploy
- Go to https://vercel.com/new
- Import your repository
- Set **Root Directory**: `frontend`
- Click **Deploy**

**Done!** 🎉

---

## 📋 What's Already Set Up

✅ Smart contracts compiled  
✅ Oracle service configured (.env file ready)  
✅ Frontend dependencies installed  
✅ Production build tested  
✅ Vercel configuration ready  

---

## 🔧 Troubleshooting

### Oracle Service Won't Start
```bash
cd contracts/oracle-service
npm install
npm run start
```

### Frontend Won't Start
```bash
cd frontend
npm install
npm run dev
```

### Build Fails
```bash
cd frontend
rm -rf .next node_modules
npm install
npm run build
```

---

## 📚 More Info

- **Full Setup**: See `DEPLOYMENT_GUIDE.md`
- **Project Status**: See `PROJECT_STATUS.md`
- **Vercel Deploy**: See `frontend/VERCEL_DEPLOYMENT.md`

---

## 🎯 What Each Component Does

### Oracle Service
- Listens for blockchain events
- Fetches real-world data (weather, prices, etc.)
- Sends data back to blockchain

### Frontend
- User interface for requesting data
- Wallet connection (RainbowKit)
- Displays received data

### Smart Contracts
- Handle data requests
- Store and validate data
- Emit events for oracle service

---

## 🌟 Key URLs

- **Local Frontend**: http://localhost:3000
- **Somnia RPC**: https://dream-rpc.somnia.network/
- **Chain ID**: 50312
- **Oracle Contract**: `0x94E7b61ACfdDA06c74A8e56Fc55261AF94bda9f6`
- **AI Agent Contract**: `0xE398011BfD41E94e4BF40E1Df64e0960F1E37A2C`

---

**Need help?** Check the full guides in the repository! 📖
