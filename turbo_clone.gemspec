require_relative 'lib/turbo_clone/version'

Gem::Specification.new do |spec|
  spec.name        = 'turbo_clone'
  spec.version     = TurboClone::VERSION
  spec.authors     = ['overnet']
  spec.email       = ['tokvbok@yahoo.co.uk']
  spec.summary     = 'Turbo-rails clone'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'rails', '>= 7.0.4'
end
