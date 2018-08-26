$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "crud_jobs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "crud_jobs"
  s.version     = CrudJobs::VERSION
  s.authors     = ["Vitalii"]
  s.email       = [""]
  s.homepage    = "http://localhost:3000"
  s.summary     = "Summary of CrudJobs."
  s.description = "Description of CrudJobs."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "sqlite3"
end
