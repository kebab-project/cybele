# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/cybele/version', __FILE__)
require 'date'
require 'English'

Gem::Specification.new do |spec|
  spec.required_ruby_version = ">= #{Cybele::RUBY_VERSION}"

  spec.name           = 'cybele'
  spec.version        = Cybele::VERSION
  spec.authors        = %w[lab2023]
  spec.email          = %w[info@lab2023.com]
  spec.description    = 'Rails 6.x App template'
  spec.summary        = 'Rails 6.x template with responder, simple form, haml, exception notification, etc etc ...'
  spec.homepage       = 'https://github.com/kebab-project/cybele'
  spec.license        = 'MIT'
  spec.date           = Date.today.strftime('%Y-%m-%d')
  spec.files          = `git ls-files`.split($RS)
  spec.executables    = %w[cybele]
  spec.test_files     = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths  = %w[lib]

  spec.add_dependency 'bundler', '~> 2.0', '>= 2.0.2'
  spec.add_runtime_dependency 'rails', Cybele::RAILS_VERSION
  spec.add_development_dependency 'pronto', '~> 0.9.5'
  spec.add_development_dependency 'pronto-fasterer', '~> 0.9.0'
  spec.add_development_dependency 'pronto-flay', '~> 0.9.0'
  spec.add_development_dependency 'pronto-rubocop', '~> 0.9.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'thor', '~> 0.19.4'

  spec.extra_rdoc_files = %w[README.md MIT-LICENSE]
end