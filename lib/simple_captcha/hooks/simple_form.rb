require 'simple_form'

module SimpleCaptcha::SimpleForm
  class CkeditorInput < ::SimpleForm::Inputs::Base
    def input
      @builder.simple_captcha(input_html_options)
    end
  end
end

::SimpleForm::FormBuilder.map_type :simple_captcha, :to => SimpleCaptcha::SimpleForm::CkeditorInput
