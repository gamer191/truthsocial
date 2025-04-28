rm -rf source
rm -rf source_tmp

pipx install yt-dlp[main]
yt-dlp --impersonate chrome https://opensource.truthsocial.com/mastodon-current.zip -o "mastodon-current.zip" --compat-options allow-unsafe-ext
unzip mastodon-current.zip -d source_tmp

mv source_tmp/open\ source source

# rm -rf source_tmp
# rm mastodon-current.zip
