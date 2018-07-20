$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'hustle_mailer/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'hustle_mailer'
  s.version     = HustleMailer::VERSION
  s.authors     = ['kawamura.hryk']
  s.email       = ['kawamura.hryk@gmail.com']
  s.homepage    = 'https://github.com/dqnch/hustle_mailer'
  s.summary     = 'HustleMailer extends ActionMailer.'
  s.description = 'HustleMailer extends ActionMailer.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
end
