# Deployment Guide

This Jekyll site is set up to automatically deploy to your server using GitHub Actions whenever changes are pushed to the main branch.

## Setting Up GitHub Actions Deployment

### 1. Generate an SSH key for deployment

First, you need to generate a dedicated SSH key for deployment:

```bash
ssh-keygen -t ed25519 -f ~/.ssh/deployment_key -C "github-actions-deploy"
```

### 2. Add the public key to your server

Copy the content of `~/.ssh/deployment_key.pub` and add it to the `~/.ssh/authorized_keys` file on your web server.

```bash
cat ~/.ssh/deployment_key.pub
# Copy the output and add it to ~/.ssh/authorized_keys on your server
```

### 3. Add the private key and other secrets to GitHub

In your GitHub repository, go to Settings → Secrets and Variables → Actions, and add the following secrets:

1. `DEPLOY_KEY`: The content of your private key file (`~/.ssh/deployment_key`)
2. `DEPLOY_HOST`: Your server hostname or IP address (e.g., `example.com` or `123.456.789.0`)
3. `DEPLOY_USER`: SSH username on your server
4. `DEPLOY_PATH`: The full path where the site should be deployed (e.g., `/var/www/anfaengerkrebs.de/html`)

### 4. Push to the main branch

Once you've set up all the secrets, the GitHub Actions workflow will automatically deploy your site whenever you push to the main branch.

## Manual Deployment

To trigger a deployment manually, go to the "Actions" tab in your GitHub repository, select the "Build and Deploy Jekyll Site" workflow, and click "Run workflow".

## Local Development

To run the site locally:

```bash
# Install dependencies
bundle install

# Serve the site locally
bundle exec jekyll serve
```

With Ruby 3.4.2 you need to specify the bundler version:

```bash
/Users/stefan/.asdf/installs/ruby/3.4.2/bin/bundle _2.6.5_ exec jekyll serve
```

Or create an alias in your shell profile:

```bash
alias jekyll-serve='/Users/stefan/.asdf/installs/ruby/3.4.2/bin/bundle _2.6.5_ exec jekyll serve'
``` 