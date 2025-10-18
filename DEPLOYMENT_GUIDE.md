# OracleMind Deployment Guide

## ✅ Setup Complete!

All components have been successfully set up:

### 1. Smart Contracts ✓
- Foundry dependencies installed
- Contracts compiled successfully
- Located in: `contracts/`

### 2. Oracle Service ✓
- Dependencies installed
- Environment variables configured in `contracts/oracle-service/.env`
- Ready to run with: `npm run start`

### 3. Frontend dApp ✓
- Dependencies installed
- Development server running at http://localhost:3000
- Configured for Vercel deployment

---

## 🚀 Deploying to Vercel

### Prerequisites
- Vercel account (sign up at https://vercel.com)
- Vercel CLI installed (optional but recommended)

### Method 1: Deploy via Vercel Dashboard (Recommended)

1. **Push your code to GitHub** (if not already done):
   ```bash
   git add .
   git commit -m "Prepare for Vercel deployment"
   git push origin main
   ```

2. **Import to Vercel**:
   - Go to https://vercel.com/new
   - Click "Import Project"
   - Select your GitHub repository
   - Vercel will auto-detect Next.js

3. **Configure Project**:
   - **Framework Preset**: Next.js (auto-detected)
   - **Root Directory**: `frontend`
   - **Build Command**: `npm run build` (default)
   - **Output Directory**: `.next` (default)
   - **Install Command**: `npm install` (default)

4. **Deploy**:
   - Click "Deploy"
   - Wait for the build to complete
   - Your app will be live at `https://your-project.vercel.app`

### Method 2: Deploy via Vercel CLI

1. **Install Vercel CLI** (if not installed):
   ```bash
   npm install -g vercel
   ```

2. **Login to Vercel**:
   ```bash
   vercel login
   ```

3. **Deploy from the frontend directory**:
   ```bash
   cd frontend
   vercel
   ```

4. **Follow the prompts**:
   - Set up and deploy? Yes
   - Which scope? Select your account
   - Link to existing project? No (for first deployment)
   - What's your project's name? oraclemind (or your choice)
   - In which directory is your code located? ./ (current directory)
   - Want to override the settings? No

5. **Production Deployment**:
   ```bash
   vercel --prod
   ```

---

## 🔧 Running the Complete System Locally

### Terminal 1: Oracle Service
```bash
cd contracts/oracle-service
npm run start
```

The oracle service will:
- Listen for DataRequested events on Somnia Testnet
- Fetch data from external APIs (weather, crypto prices, exchange rates)
- Fulfill requests back to the blockchain

### Terminal 2: Frontend
```bash
cd frontend
npm run dev
```

Access the dApp at: http://localhost:3000

### How to Use:
1. Connect your wallet (must have Somnia Testnet configured)
2. Select a data source (Weather, Crypto Price, or Currency Exchange)
3. Choose parameters (city, cryptocurrency, or currency)
4. Click "Request Data"
5. Wait for the oracle service to fulfill the request
6. View the received data and validation status

---

## 📝 Important Notes

### Oracle Service Hosting
- **The oracle service CANNOT run on Vercel** (it's a long-running Node.js process)
- For production, host the oracle service on:
  - **Railway**: https://railway.app
  - **Render**: https://render.com
  - **DigitalOcean App Platform**: https://www.digitalocean.com/products/app-platform
  - **AWS EC2** or any VPS
  - **Heroku** (with worker dyno)

### Environment Variables
- The frontend doesn't need environment variables (contract addresses are hardcoded)
- The oracle service requires the `.env` file with:
  - `SOMNIA_RPC_URL`
  - `ORACLE_SERVICE_PRIVATE_KEY`
  - `OPENWEATHER_API_KEY`
  - `SOMNIA_ORACLE_CONTRACT_ADDRESS`

### Security Considerations
- **Never commit** the `.env` file with real private keys to public repositories
- The `.env` file is already in `.gitignore`
- For production oracle service, use environment variables from your hosting platform

---

## 🌐 Deployed Contracts (Somnia Testnet)

- **SomniaOracle**: `0x94E7b61ACfdDA06c74A8e56Fc55261AF94bda9f6`
- **MockAIAgent**: `0xE398011BfD41E94e4BF40E1Df64e0960F1E37A2C`
- **Network**: Somnia Testnet (Chain ID: 50312)
- **RPC URL**: https://dream-rpc.somnia.network/

---

## 🐛 Troubleshooting

### Frontend Build Issues
If you encounter build errors on Vercel:
1. Check that all dependencies are in `package.json`
2. Ensure Node.js version compatibility (use Node 18+)
3. Check build logs in Vercel dashboard

### Oracle Service Not Fulfilling Requests
1. Verify the oracle service is running
2. Check that the private key has sufficient SOMI tokens for gas
3. Verify API keys are valid (OpenWeatherMap)
4. Check console logs for errors

### Wallet Connection Issues
1. Ensure Somnia Testnet is added to your wallet
2. Network details:
   - Chain ID: 50312
   - RPC URL: https://dream-rpc.somnia.network/
   - Currency Symbol: SOMI

---

## 📚 Additional Resources

- [Next.js Deployment Documentation](https://nextjs.org/docs/deployment)
- [Vercel Documentation](https://vercel.com/docs)
- [Somnia Documentation](https://docs.somnia.network/)

---

## ✨ Next Steps

1. ✅ Test the application locally
2. ✅ Deploy frontend to Vercel
3. 🔄 Set up oracle service on a hosting platform
4. 🎉 Share your deployed dApp!

---

**Need Help?** Check the project README.md or open an issue on GitHub.
