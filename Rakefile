require "bundler/gem_tasks"

task :test_images do
  require 'fileutils'
  require 'active_support/all'
  require File.join(File.dirname(__FILE__), "lib", "simple_captcha")

  SimpleCaptcha::Utils # autoload

  module SimpleCaptcha #:nodoc
    module Utils #:nodoc
      def self.simple_captcha_new_value(key) #:nodoc
        self.random_str
      end
    end

    class Test #:nodoc
      include SimpleCaptcha::ImageHelpers

      def run
        generate_simple_captcha_image('test')
      end
    end
  end

  tmp_path = File.join(File.dirname(__FILE__), 'test_images')

  Dir.mkdir(tmp_path, 0777) unless File.directory?(tmp_path)

  tmp_file = SimpleCaptcha::Test.new.run
  FileUtils.mv(tmp_file, File.join(tmp_path, '130x40_font30.png'))

  SimpleCaptcha.setup do |sc|
    sc.image_size = '120x60'
    sc.length = 5
    sc.image_color = "#31203C"
    sc.image_style = 'distorted_black'
    sc.distortion = 'medium'
  end

  tmp_file = SimpleCaptcha::Test.new.run
  FileUtils.mv(tmp_file, File.join(tmp_path, "#{SimpleCaptcha.image_size}_font#{SimpleCaptcha.pointsize}.png"))

  SimpleCaptcha.setup do |sc|
    sc.image_size = '120x40'
    # sc.image_color = "#31203C"
    sc.image_style = 'distorted_black'
    sc.distortion = 'medium'
  end

  tmp_file = SimpleCaptcha::Test.new.run
  FileUtils.mv(tmp_file, File.join(tmp_path, "#{SimpleCaptcha.image_size}_font#{SimpleCaptcha.pointsize}.png"))


  SimpleCaptcha.setup do |sc|
    sc.pointsize = 20
    sc.image_color = '#666666'
    sc.image_size = '100x30'
  end
  tmp_file = SimpleCaptcha::Test.new.run
  FileUtils.mv(tmp_file, File.join(tmp_path, "#{SimpleCaptcha.image_size}_font#{SimpleCaptcha.pointsize}.png"))

  SimpleCaptcha.setup do |sc|
    sc.pointsize = 40
    sc.image_color = '#666666'
    sc.image_size = '150x60'
  end
  tmp_file = SimpleCaptcha::Test.new.run
  FileUtils.mv(tmp_file, File.join(tmp_path, "#{SimpleCaptcha.image_size}_font#{SimpleCaptcha.pointsize}.png"))


  SimpleCaptcha.setup do |sc|
    sc.pointsize = 16
    sc.image_color = '#0000ff'
    sc.image_size = '80x20'
  end
  tmp_file = SimpleCaptcha::Test.new.run
  FileUtils.mv(tmp_file, File.join(tmp_path, "#{SimpleCaptcha.image_size}_font#{SimpleCaptcha.pointsize}.png"))

  SimpleCaptcha.setup do |sc|
    sc.pointsize = 14
    sc.image_color = '#0000ff'
    sc.image_size = '70x16'
  end
  tmp_file = SimpleCaptcha::Test.new.run
  FileUtils.mv(tmp_file, File.join(tmp_path, "#{SimpleCaptcha.image_size}_font#{SimpleCaptcha.pointsize}.png"))

  SimpleCaptcha.setup do |sc|
    sc.pointsize = 16
    sc.image_color = '#0000ff'
    sc.image_size = '80x20'
  end
  tmp_file = SimpleCaptcha::Test.new.run
  FileUtils.mv(tmp_file, File.join(tmp_path, "#{SimpleCaptcha.image_size}_font#{SimpleCaptcha.pointsize}.png"))


  SimpleCaptcha.setup do |sc|
    sc.pointsize = 40
    sc.distortion = 'high'
    sc.image_color = '#666666'
    sc.image_size = '150x60'
  end
  tmp_file = SimpleCaptcha::Test.new.run
  FileUtils.mv(tmp_file, File.join(tmp_path, "distorted.png"))
end
