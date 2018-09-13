activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true
end

# activate :deploy do |deploy|
#   deploy.build_before = true
#   deploy.deploy_method = :git
# end

activate :protect_emails


# Use “pretty” URLs (without the `.html` suffix)
activate :directory_indexes


activate :deploy do |deploy|
  deploy.method   = :ftp
  deploy.host            = 'ftp.cluster021.hosting.ovh.net'
  deploy.path            = '/home/decoboutlw'
  deploy.user            = 'decoboutlw'
  deploy.password        = 'Kitesurf9463'
end


# activate :sitemap, hostname: data.settings.site.url


# activate :google_analytics do |ga|
#     ga.tracking_id = data.settings.google_analytics.tracking_code
#     ga.anonymize_ip = true
#     ga.debug = false
#     ga.development = false
#     ga.minify = true
# end
