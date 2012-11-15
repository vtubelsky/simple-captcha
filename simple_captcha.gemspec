# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "simple_captcha/version"

Gem::Specification.new do |s|
  s.name = "glebtv-simple_captcha"
  s.version = SimpleCaptcha::VERSION.dup
  s.platform = Gem::Platform::RUBY
  s.summary = "A fork of a wolcanus fork of galetahub SimpleCaptcha for mongoid support."
  s.description = "."
  s.authors = ["Weverton do Couto Timoteo"]
  s.email = "weverton@wolcan.us"
  s.homepage = "http://github.com/glebtv/simple-captcha"

  s.add_dependency("mongoid", ["~> 3.0.0"])

  s.files = Dir["{lib}/**/*"] + %w(Rakefile README.rdoc)
  s.test_files = Dir["{test}/**/*"]
  s.extra_rdoc_files = %w(README.rdoc)
  s.require_paths = %w(lib)
end
