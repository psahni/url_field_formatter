Gem::Specification.new do |spec|
  
  spec.name          = "url_field_formatter"
  spec.version       = '1.1'
  spec.authors       = ["Prashant Sahni"]
  spec.email         = ["prashant.sahni5@gmail.com"]
  spec.platform      = Gem::Platform::RUBY
  spec.homepage      = "http://prashantsahni.in"
  spec.description   = "Formats the url field before save, prepends http:// before the url field if not given"
  spec.summary       = "Formats the url before save"
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.require_path = 'lib'  

end
