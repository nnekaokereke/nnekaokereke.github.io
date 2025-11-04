# GitHub Setup Guide

## Step 1: Install Git

Git is not currently installed on your system. Follow these steps:

### Download and Install Git for Windows

1. **Download Git for Windows:**
   - Visit: https://git-scm.com/download/win
   - Download the latest version (64-bit Git for Windows Setup)

2. **Install Git:**
   - Run the installer
   - Use default settings (recommended)
   - Make sure "Git Bash Here" and "Git GUI Here" options are selected
   - Choose "Use Git from the command line and also from 3rd-party software"
   - Select "Use bundled OpenSSH"
   - Choose "Use the OpenSSL library"
   - Select "Checkout Windows-style, commit Unix-style line endings"
   - Choose "Use MinTTY (the default terminal of MSYS2)"
   - Leave other options as default
   - Click "Install"

3. **Verify Installation:**
   - Open PowerShell or Command Prompt
   - Run: `git --version`
   - You should see the Git version number

## Step 2: Configure Git

After Git is installed, run these commands in PowerShell:

```powershell
# Set your name (use your GitHub username or your real name)
git config --global user.name "nnekaokereke"

# Set your email (use the email associated with your GitHub account)
git config --global user.email "your-email@example.com"

# Set default branch name to 'main'
git config --global init.defaultBranch main

# Verify your configuration
git config --global --list
```

## Step 3: Set Up Authentication

### Option A: Using Personal Access Token (Recommended for beginners)

1. **Create a Personal Access Token on GitHub:**
   - Go to: https://github.com/settings/tokens
   - Click "Generate new token" → "Generate new token (classic)"
   - Give it a name (e.g., "My Portfolio Site")
   - Select scopes: Check `repo` (full control of private repositories)
   - Click "Generate token"
   - **IMPORTANT:** Copy the token immediately (you won't see it again!)

2. **Use the token when pushing:**
   - When you push code, GitHub will ask for credentials
   - Username: `nnekaokereke`
   - Password: Use your Personal Access Token (not your GitHub password)

### Option B: Using SSH Keys (More Secure)

1. **Generate SSH Key:**
   ```powershell
   ssh-keygen -t ed25519 -C "your-email@example.com"
   ```
   - Press Enter to accept default file location
   - Enter a passphrase (optional but recommended)

2. **Copy your public key:**
   ```powershell
   cat ~/.ssh/id_ed25519.pub
   ```
   - Copy the entire output

3. **Add SSH Key to GitHub:**
   - Go to: https://github.com/settings/keys
   - Click "New SSH key"
   - Title: "My Portfolio Site"
   - Key: Paste your public key
   - Click "Add SSH key"

4. **Test SSH connection:**
   ```powershell
   ssh -T git@github.com
   ```

## Step 4: Initialize Your Repository

After Git is installed and configured, run these commands in your project directory:

```powershell
# Navigate to your project directory
cd C:\Users\44782\OneDrive\Desktop\MYPROJECT

# Initialize Git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Portfolio website"

# Add your GitHub repository as remote
# Replace with your actual repository URL
git remote add origin https://github.com/nnekaokereke/nnekaokereke.github.io.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

## Step 5: Create GitHub Repository

1. **Create a new repository on GitHub:**
   - Go to: https://github.com/new
   - Repository name: `nnekaokereke.github.io` (this will make it a GitHub Pages site!)
   - Description: "My Portfolio Website"
   - Make it Public
   - **DO NOT** initialize with README, .gitignore, or license (we already have files)
   - Click "Create repository"

2. **Follow Step 4 above** to push your code

## Step 6: Enable GitHub Pages

1. Go to your repository settings: `https://github.com/nnekaokereke/nnekaokereke.github.io/settings`
2. Click "Pages" in the left sidebar
3. Under "Source", select:
   - Branch: `main`
   - Folder: `/ (root)`
4. Click "Save"
5. Your site will be live at: `https://nnekaokereke.github.io` in a few minutes!

## Troubleshooting

### If you get "fatal: not a git repository"
- Make sure you're in the project directory
- Run `git init` first

### If you get authentication errors
- Make sure you're using a Personal Access Token (not your password)
- Or set up SSH keys as described above

### If you need to update your email
```powershell
git config --global user.email "new-email@example.com"
```

### If you want to check your current Git configuration
```powershell
git config --global --list
```

