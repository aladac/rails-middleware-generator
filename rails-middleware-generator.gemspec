# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'rails/middleware/generator/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'rails-middleware-generator'
  spec.version     = Rails::Middleware::Generator::VERSION
  spec.authors     = ['Adam Ladachowski']
  spec.email       = ['adam@saiden.pl']
  spec.homepage    = 'https://github.com/aladac/rails-middleware-generator'
  spec.summary     = 'Generate rack middleware for Rails'
  spec.description = spec.summary
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  spec.add_dependency 'rails', '~> 5.2.3'
  spec.add_development_dependency 'sqlite3'
end
