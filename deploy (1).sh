#!/bin/bash

# SnapCompress Deployment Script
# This script builds and deploys the SnapCompress application

set -e

echo "🚀 SnapCompress Deployment Script"
echo "================================="

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: package.json not found. Please run this script from the SnapCompress root directory."
    exit 1
fi

# Install dependencies if node_modules doesn't exist
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    pnpm install
fi

# Build the project
echo "🔨 Building project for production..."
pnpm run build

echo "✅ Build completed successfully!"
echo ""
echo "📁 Built files are in the 'dist' directory"
echo ""
echo "🌐 Deployment Options:"
echo "======================"
echo ""
echo "1. Vercel:"
echo "   - Install: npm i -g vercel"
echo "   - Deploy: vercel --prod"
echo ""
echo "2. Netlify:"
echo "   - Install: npm i -g netlify-cli"
echo "   - Deploy: netlify deploy --prod --dir=dist"
echo ""
echo "3. Static Hosting:"
echo "   - Upload the 'dist' folder to your hosting provider"
echo ""
echo "🎉 Your SnapCompress app is ready for deployment!"

