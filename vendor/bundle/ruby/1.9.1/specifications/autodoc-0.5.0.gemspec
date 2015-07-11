# -*- encoding: utf-8 -*-
# stub: autodoc 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "autodoc"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryo Nakamura"]
  s.date = "2015-04-22"
  s.email = ["r7kamura@gmail.com"]
  s.homepage = "https://github.com/r7kamura/autodoc"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Auto-generate JSON API documents from your request-specs."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<actionpack>, [">= 0"])
      s.add_runtime_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rails>, ["= 4.2.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<actionpack>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rails>, ["= 4.2.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<actionpack>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rails>, ["= 4.2.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
