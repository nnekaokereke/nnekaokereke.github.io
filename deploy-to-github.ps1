# Deploy Portfolio Website to GitHub Pages
# Run this AFTER:
# 1. Git is installed and configured
# 2. You've created the repository on GitHub
# 3. You have a Personal Access Token

Write-Host "=== Deploying Portfolio to GitHub Pages ===" -ForegroundColor Green
Write-Host ""

# Check if we're in a git repository
if (-not (Test-Path .git)) {
    Write-Host "Initializing Git repository..." -ForegroundColor Cyan
    git init
    git branch -M main
}

# Check if remote is already added
$remoteExists = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Adding GitHub remote..." -ForegroundColor Cyan
    Write-Host "Repository URL: https://github.com/nnekaokereke/nnekaokereke.github.io.git" -ForegroundColor Yellow
    $confirm = Read-Host "Is this correct? (y/n)"
    if ($confirm -eq "y") {
        git remote add origin https://github.com/nnekaokereke/nnekaokereke.github.io.git
    } else {
        $repoUrl = Read-Host "Enter your repository URL"
        git remote add origin $repoUrl
    }
}

Write-Host ""
Write-Host "Adding files..." -ForegroundColor Cyan
git add .

Write-Host ""
Write-Host "Creating commit..." -ForegroundColor Cyan
git commit -m "Initial commit: Portfolio website"

Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
Write-Host "You'll be prompted for credentials:" -ForegroundColor Yellow
Write-Host "- Username: nnekaokereke" -ForegroundColor Yellow
Write-Host "- Password: Use your Personal Access Token (not your GitHub password)" -ForegroundColor Yellow
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "=== Success! ===" -ForegroundColor Green
    Write-Host "Your code has been pushed to GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Cyan
    Write-Host "1. Go to: https://github.com/nnekaokereke/nnekaokereke.github.io/settings/pages" -ForegroundColor Yellow
    Write-Host "2. Under 'Source', select:" -ForegroundColor Yellow
    Write-Host "   - Branch: main" -ForegroundColor Yellow
    Write-Host "   - Folder: / (root)" -ForegroundColor Yellow
    Write-Host "3. Click 'Save'" -ForegroundColor Yellow
    Write-Host "4. Your site will be live at: https://nnekaokereke.github.io" -ForegroundColor Green
    Write-Host "   (It may take a few minutes to deploy)" -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "=== Error ===" -ForegroundColor Red
    Write-Host "There was an error pushing to GitHub." -ForegroundColor Red
    Write-Host "Make sure you:" -ForegroundColor Yellow
    Write-Host "1. Have created the repository on GitHub" -ForegroundColor Yellow
    Write-Host "2. Have a Personal Access Token" -ForegroundColor Yellow
    Write-Host "3. Used the token as your password" -ForegroundColor Yellow
}

