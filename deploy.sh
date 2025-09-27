#!/bin/bash

# Portfolio Website Deployment Script
# This script helps you deploy your portfolio to GitHub Pages

echo "🚀 Portfolio Website Deployment Script"
echo "======================================"

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
fi

# Add all files
echo "📝 Adding files to Git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Deploy portfolio website"

# Check if remote exists
if ! git remote | grep -q origin; then
    echo "⚠️  No remote repository found!"
    echo "Please add your GitHub repository as origin:"
    echo "git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git"
    echo ""
    echo "Then run this script again."
    exit 1
fi

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push origin main

echo ""
echo "✅ Deployment complete!"
echo ""
echo "Next steps:"
echo "1. Go to your GitHub repository"
echo "2. Click on 'Settings' tab"
echo "3. Scroll to 'Pages' section"
echo "4. Select 'Deploy from a branch'"
echo "5. Choose 'main' branch and '/ (root)' folder"
echo "6. Click 'Save'"
echo "7. Wait a few minutes for GitHub to build your site"
echo "8. Your website will be available at: https://YOUR-USERNAME.github.io/YOUR-REPO-NAME"
echo ""
echo "🎉 Your portfolio is now live!"
