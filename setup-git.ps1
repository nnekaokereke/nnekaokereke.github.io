# Git Setup Script for GitHub
# Run this script AFTER installing Git

Write-Host "=== Git Configuration Setup ===" -ForegroundColor Green
Write-Host ""

# Check if Git is installed
try {
    $gitVersion = git --version
    Write-Host "Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Git is not installed!" -ForegroundColor Red
    Write-Host "Please download and install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "Then run this script again." -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "Configuring Git..." -ForegroundColor Cyan

# Configure Git with your GitHub username
git config --global user.name "nnekaokereke"

# You'll need to set your email - replace with your GitHub email
Write-Host ""
$email = Read-Host "Enter your GitHub email address"
git config --global user.email $email

# Set default branch to main
git config --global init.defaultBranch main

# Verify configuration
Write-Host ""
Write-Host "=== Git Configuration ===" -ForegroundColor Green
git config --global --list

Write-Host ""
Write-Host "=== Next Steps ===" -ForegroundColor Cyan
Write-Host "1. Create a Personal Access Token at: https://github.com/settings/tokens" -ForegroundColor Yellow
Write-Host "2. Create a new repository on GitHub: https://github.com/new" -ForegroundColor Yellow
Write-Host "   - Name it: nnekaokereke.github.io" -ForegroundColor Yellow
Write-Host "   - Make it Public" -ForegroundColor Yellow
Write-Host "   - DON'T initialize with README" -ForegroundColor Yellow
Write-Host "3. Then run the commands in GITHUB_SETUP.md Step 4" -ForegroundColor Yellow
Write-Host ""
Write-Host "Or run: git init" -ForegroundColor Green
Write-Host "Then follow the rest of the setup guide." -ForegroundColor Green

