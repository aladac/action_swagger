# frozen_string_literal: true

require_relative 'lib/action_swagger/version'

Gem::Specification.new do |spec|
  spec.name        = 'action_swagger'
  spec.version     = ActionSwagger::VERSION
  spec.authors     = ['aladac']
  spec.email       = ['adam.ladachowski@gmail.com']
  spec.homepage    = 'https://github.com/aladac'
  spec.summary     = 'ActionSwagger'
  spec.description = spec.summary
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'rails', '>= 7.0.2.3'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
