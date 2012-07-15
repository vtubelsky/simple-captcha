# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "simple_captcha/version"

Gem::Specification.new do |s|
  s.name = "wolcanus-simple_captcha"
  s.version = SimpleCaptcha::VERSION.dup
  s.platform = Gem::Platform::RUBY 
  s.summary = "A fork of galetahub SimpleCaptcha for mongoid support."
  s.description = "SimpleCaptcha is available to be used with Rails 3 or above and also it provides the backward compatibility with previous versions of Rails."
  s.authors = ["Weverton do Couto Timoteo"]
  s.email = "weverton@wolcan.us"
  s.homepage = "http://github.com/wolcanus/simple-captcha"

  s.add_dependency("mongoid", ["~> 3.0.0"])
  
  s.files = Dir["{lib}/**/*"] + ["Rakefile", "README.rdoc"]
  s.test_files = Dir["{test}/**/*"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.require_paths = ["lib"]
end
