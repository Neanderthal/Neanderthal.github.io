# Site Management Guide

This document outlines how to update, deploy and check statistics for our site.

## Website Content Structure
The website consists of these main components:
- `_quarto.yml`: Configuration file for site settings and navigation
- `about.qmd`: Main content page with personal information and CV links
- `styles.css`: Custom CSS styles (currently empty)
- `README.md`: This documentation file
- `family.jpg`: Hero banner image displayed on the about page (1200x800 recommended)
- CV files in `cv/` directory (referenced from about.qmd)

### About Page Formatting
The about.qmd file uses:
1. YAML front matter for page metadata and links
```yaml
title: "About"
image: family.jpg 
about:
  template: marquee
  links: [...]
```
2. Markdown content with:
   - Headings (#, ##, ###)
   - Bold text (**)
   - Links in Markdown and badge format
   ```markdown
   [![text](https://img.shields.io/badge/...)](link)
   ```
3. Contact section at the bottom

## Updating Site Content
1. Modify site files directly in the project root
2. Run the site generator:
```bash
quarto render content/
```

## Deployment
1. After verifying changes locally, commit them:
```bash
git add .
git commit -m "Update site content" 
git push
```
2. The site will automatically deploy through our CI/CD pipeline

## Checking Statistics
1. Access GoatCounter analytics at [neanderthal.goatcounter.com](https://neanderthal.goatcounter.com)
2. View real-time visitor statistics and referrers

## Common Issues
- Missing dependencies? Run:
```bash
quarto install
```
- Build errors? Check logs in `.quarto/`

For any other issues, contact the site maintainer.
