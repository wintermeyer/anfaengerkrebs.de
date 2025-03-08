# Anfängerkrebs Podcast

This project uses [Jekyll](https://jekyllrb.com) to create the webpage for the Anfängerkrebs Podcast.

## Local Development

To run the site locally:

```bash
# The easy way (if you have Ruby 3.4.2)
./serve.sh

# Or manually
bundle exec jekyll serve

# With Ruby 3.4.2
/Users/stefan/.asdf/installs/ruby/3.4.2/bin/bundle _2.6.5_ exec jekyll serve
```

## Deployment

This site uses GitHub Actions for automatic deployment. See [DEPLOYMENT.md](DEPLOYMENT.md) for setup instructions.

The deployment workflow will:

1. Build the Jekyll site
2. Deploy it to your server via SSH/rsync
3. Run automatically when pushing to the main branch

### Manual Deployment

To trigger a deployment manually, go to the "Actions" tab in your GitHub repository, select the "Build and Deploy Jekyll Site" workflow, and click "Run workflow".