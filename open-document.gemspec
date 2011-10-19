# encoding: utf-8
Gem::Specification.new do |s|
  s.name = "open-document"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brice Texier"]
  s.date = "2011-09-19"
  s.summary = "OpenDocument reader/writer"
  s.description = "Low-level OpenDocument reader/writer"
  s.email = "brice.texier@ekylibre.org"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = `git ls-files`.split("\n")
  s.homepage = "http://github.com/burisu/open-document"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]

  if s.respond_to? :specification_version then
    s.specification_version = 3
    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency("libxml-ruby", ["~> 3"])
      s.add_runtime_dependency("rubyzip", [">= 0.9.4"])
    else
      s.add_dependency("libxml-ruby", ["~> 3"])
      s.add_dependency("rubyzip", [">= 0.9.4"])
    end
  else
    s.add_dependency("libxml-ruby", ["~> 3"])
    s.add_dependency("rubyzip", [">= 0.9.4"])
  end
end

