lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "method_cache"
  gem.version       = "0.8.2.2"
  gem.authors       = ["Justin Balthrop"]
  gem.email         = ["git@justinbalthrop.com"]
  gem.description   = %q{Simple memcache-based memoization library for Ruby}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/IFTTT/method_cache"
  gem.license       = 'MIT'

  gem.add_development_dependency 'shoulda'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'dalli'
  gem.add_development_dependency 'activesupport', '~> 2.3.9'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end