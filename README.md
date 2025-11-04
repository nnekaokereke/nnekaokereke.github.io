# Portfolio Website

A clean, modern portfolio website built with Jekyll and GitHub Pages, inspired by academic/research portfolio designs.

## Features

- 🎨 Clean and modern design
- 🌙 Dark mode toggle
- 📱 Fully responsive
- ⚡ Fast loading with static site generation
- 🚀 Easy deployment on GitHub Pages

## Setup Instructions

### 1. Configure Your Site

Edit `_config.yml` and update the following:
- `title`: Your name or site title
- `email`: Your email address
- `description`: Your site description
- `github_username`: Your GitHub username
- `linkedin_username`: Your LinkedIn username
- `url`: Your GitHub Pages URL (e.g., `https://yourusername.github.io`)
- `baseurl`: Leave empty unless you're using a project site (e.g., `/repository-name`)

### 2. Customize Content

- **Homepage** (`index.html`): Update the hero section, portfolio highlights, and recent updates
- **Portfolio** (`portfolio.html`): Add your projects with descriptions, technologies, and links
- **CV** (`cv.html`): Update your experience, education, skills, and certifications
- **Header** (`_includes/header.html`): Update navigation if needed
- **Footer** (`_includes/footer.html`): Update contact information and social links

### 3. Local Development

1. Install Ruby and Bundler (if not already installed):
   ```bash
   # On Windows, download RubyInstaller
   # https://rubyinstaller.org/
   ```

2. Install Jekyll and dependencies:
   ```bash
   bundle install
   ```

3. Serve the site locally:
   ```bash
   bundle exec jekyll serve
   ```

4. Open your browser to `http://localhost:4000`

### 4. Deploy to GitHub Pages

1. Create a new repository on GitHub (e.g., `yourusername.github.io`)

2. Initialize git (if not already done):
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   ```

3. Add your GitHub repository as remote:
   ```bash
   git remote add origin https://github.com/yourusername/yourusername.github.io.git
   git branch -M main
   git push -u origin main
   ```

4. Enable GitHub Pages:
   - Go to your repository settings
   - Navigate to "Pages" section
   - Select the source branch (usually `main`)
   - Select the folder (`/ (root)`)
   - Click "Save"

5. Your site will be live at `https://yourusername.github.io` in a few minutes!

## Customization Tips

### Adding Projects

Edit `portfolio.html` and add new portfolio items following the existing structure:

```html
<div class="portfolio-item">
    <div class="portfolio-image">
        <img src="path/to/image.jpg" alt="Project Name">
    </div>
    <div class="portfolio-content">
        <h3>Project Title</h3>
        <p class="portfolio-tech">Technologies: React, Node.js</p>
        <p>Project description...</p>
        <div class="portfolio-links">
            <a href="#" class="btn btn-primary">View Project</a>
            <a href="#" class="btn btn-secondary">View Code</a>
        </div>
    </div>
</div>
```

### Changing Colors

Edit `assets/css/style.css` and modify the CSS variables in the `:root` selector:

```css
:root {
    --bg-color: #ffffff;
    --text-color: #333333;
    --link-color: #0066cc;
    /* ... other variables */
}
```

### Adding Images

1. Create an `assets/images/` directory
2. Add your images there
3. Reference them in your HTML: `{{ '/assets/images/photo.jpg' | relative_url }}`

## License

Feel free to use this template for your own portfolio!

