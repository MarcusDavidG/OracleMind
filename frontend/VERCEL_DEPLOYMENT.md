# Deploying OracleMind Frontend to Vercel

## Quick Deploy Button

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/YOUR_USERNAME/OracleMind&project-name=oraclemind&root-directory=frontend)

## Manual Deployment Steps

### Option 1: Via Vercel Dashboard

1. **Push to GitHub** (if not already done)
   ```bash
   git add .
   git commit -m "Ready for Vercel deployment"
   git push origin main
   ```

2. **Import to Vercel**
   - Visit https://vercel.com/new
   - Click "Import Project"
   - Select your repository
   - Configure:
     - **Root Directory**: `frontend`
     - **Framework**: Next.js (auto-detected)
     - **Build Command**: `npm run build`
     - **Output Directory**: `.next`

3. **Deploy**
   - Click "Deploy"
   - Wait for build completion
   - Your app will be live!

### Option 2: Via Vercel CLI

```bash
# Install Vercel CLI
npm install -g vercel

# Login
vercel login

# Deploy from frontend directory
cd frontend
vercel

# For production
vercel --prod
```

## Configuration

The project is pre-configured with:
- ✅ `vercel.json` - Vercel configuration
- ✅ `.vercelignore` - Files to exclude from deployment
- ✅ `next.config.ts` - Next.js configuration

## Environment Variables

No environment variables needed! The frontend uses:
- Hardcoded contract addresses (already deployed on Somnia Testnet)
- RainbowKit with Somnia Testnet configuration
- Public RPC endpoints

## Post-Deployment

After deployment:
1. Your frontend will be live at `https://your-project.vercel.app`
2. Users can connect their wallets and interact with the oracle
3. The oracle service must be running separately to fulfill requests

## Important Notes

⚠️ **The Oracle Service Cannot Run on Vercel**
- Vercel is for serverless functions and static sites
- The oracle service is a long-running Node.js process
- Host it on: Railway, Render, DigitalOcean, AWS, or any VPS

## Troubleshooting

### Build Fails
- Check Node.js version (use 18+)
- Verify all dependencies are in package.json
- Check build logs in Vercel dashboard

### Wallet Connection Issues
- Ensure users have Somnia Testnet configured
- Chain ID: 50312
- RPC: https://dream-rpc.somnia.network/

### Data Not Loading
- Verify oracle service is running
- Check contract addresses are correct
- Ensure oracle service wallet has SOMI tokens

## Support

For issues, check:
- Main README.md
- DEPLOYMENT_GUIDE.md
- Vercel documentation: https://vercel.com/docs
