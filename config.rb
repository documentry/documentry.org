activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
  #activate :asset_hash
  #activate :asset_host, :host => '//YOURDOMAIN.cloudfront.net'
end

configure :development do
  set :css_dir, 'stylesheets'
  set :js_dir, 'javascripts'
  set :images_dir, 'images'
  set :fonts_dir, 'fonts'

  set :livereload_css_target, 'stylesheets/application'

  activate :livereload
end

activate :i18n
