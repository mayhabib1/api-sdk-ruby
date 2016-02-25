Gem::Specification.new do |s|
  s.name        = 'qordoba'
  s.version     = '1.0'
  s.summary     = 'qordoba'
  s.description = 'This API SDK was automatically by Qordoba Beta 2.0'
  s.authors     = ["Qordoba", ""]
  s.email       = 'hello@qordoba.com'
  s.homepage    = 'https://qordoba.com'
  s.license     = 'MIT'
  
  s.add_dependency('unirest', '~> 1.1.2')
  s.required_ruby_version = '~> 2.0'

  s.files       = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']  
  s.require_paths = ['lib']
  
end