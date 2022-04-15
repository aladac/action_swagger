# frozen_string_literal: true

require_relative 'lib/active_swagger/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.6.0'
  spec.name        = 'active_swagger'
  spec.version     = ActiveSwagger::VERSION
  spec.authors     = ['aladac']
  spec.email       = ['adam.ladachowski@gmail.com']
  spec.homepage    = 'https://github.com/aladac/active_swagger'
  spec.summary     = 'ActiveSwagger'
  spec.description = spec.summary
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'rails', '>= 6'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
