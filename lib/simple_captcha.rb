# encoding: utf-8

module SimpleCaptcha
  autoload :Utils,             'simple_captcha/utils'

  autoload :ImageHelpers,      'simple_captcha/image'
  autoload :ViewHelper,        'simple_captcha/view'
  autoload :ControllerHelpers, 'simple_captcha/controller'

  autoload :FormBuilder,       'simple_captcha/hooks/form_builder'

  if Object.const_defined?("Formtastic")
    require "simple_captcha/hooks/formtastic"
  end

  if Object.const_defined?("SimpleForm")
    require "simple_captcha/hooks/simple_form"
  end

  if Object.const_defined?("Mongoid")
    autoload :SimpleCaptchaData, 'simple_captcha/storage/mongoid'
  else
    autoload :SimpleCaptchaData, 'simple_captcha/storage/active_record'
    autoload :ModelHelpers,      'simple_captcha/active_record'
  end

  autoload :Middleware,        'simple_captcha/middleware'

  mattr_accessor :image_size
  @@image_size = "100x28"

  mattr_accessor :length
  @@length = 5

  # 'embosed_silver',
  # 'simply_red',
  # 'simply_green',
  # 'simply_blue',
  # 'distorted_black',
  # 'all_black',
  # 'charcoal_grey',
  # 'almost_invisible'
  # 'random'
  mattr_accessor :image_style
  @@image_style = 'simply_blue'

  mattr_accessor :image_color
  @@image_color = nil

  # 'low', 'medium', 'high', 'random'
  mattr_accessor :distortion
  @@distortion = 'low'

  # command path
  mattr_accessor :image_magick_path
  @@image_magick_path = ''

  # tmp directory
  mattr_accessor :tmp_path
  @@tmp_path = nil

  mattr_accessor :pointsize
  @@pointsize = 30

  def self.add_image_style(name, params = [])
    SimpleCaptcha::ImageHelpers.image_styles.update(name.to_s => params)
  end

  def self.setup
    yield self
  end
end

require 'simple_captcha/engine' if defined?(Rails)
