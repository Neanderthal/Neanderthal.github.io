# Site Management Guide

This document outlines how to update, deploy and check statistics for our site.

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
