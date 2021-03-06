###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

class NetlifyHeaders < Middleman::Extension
  def after_build(builder)

    builder.thor.source_paths << File.dirname(__FILE__)
    ["_headers","_redirects"].each do |f|
      src = File.join(app.config[:source],f)
      dst = File.join(app.config[:build_dir],f)
      next unless File.exists? src
      builder.thor.copy_file(src,dst)
    end
  end
end

::Middleman::Extensions.register(:netlify_headers, NetlifyHeaders)

activate :netlify_headers

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
