#!/bin/bash

echo "🚀 OracleMind Setup Script"
echo "=========================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Step 1: Smart Contracts
echo -e "${BLUE}Step 1: Setting up Smart Contracts...${NC}"
cd contracts
if command -v forge &> /dev/null; then
    echo "Installing Foundry dependencies..."
    forge install
    echo "Compiling contracts..."
    forge build
    echo -e "${GREEN}✓ Smart contracts setup complete!${NC}"
else
    echo "⚠️  Foundry not found. Please install Foundry first:"
    echo "   curl -L https://foundry.paradigm.xyz | bash"
    echo "   foundryup"
fi
cd ..
echo ""

# Step 2: Oracle Service
echo -e "${BLUE}Step 2: Setting up Oracle Service...${NC}"
cd contracts/oracle-service
if [ -f ".env" ]; then
    echo -e "${GREEN}✓ .env file already exists${NC}"
else
    echo "⚠️  .env file not found. Please create one with your API keys."
fi
echo "Installing dependencies..."
npm install
echo -e "${GREEN}✓ Oracle service setup complete!${NC}"
cd ../..
echo ""

# Step 3: Frontend
echo -e "${BLUE}Step 3: Setting up Frontend...${NC}"
cd frontend
echo "Installing dependencies..."
npm install
echo -e "${GREEN}✓ Frontend setup complete!${NC}"
cd ..
echo ""

echo -e "${GREEN}=========================="
echo "✅ Setup Complete!"
echo "==========================${NC}"
echo ""
echo "To run the project:"
echo ""
echo "Terminal 1 - Oracle Service:"
echo "  cd contracts/oracle-service && npm run start"
echo ""
echo "Terminal 2 - Frontend:"
echo "  cd frontend && npm run dev"
echo ""
echo "Then open http://localhost:3000 in your browser"
echo ""
echo "For deployment instructions, see DEPLOYMENT_GUIDE.md"
