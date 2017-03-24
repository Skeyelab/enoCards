# app/controllers/loaderio_controller.rb
class LoaderioController < ActionController::Base
  def verify
    send_data token, :type => "text/plain",
      :disposition => "inline"
  end

  private

  def token
    "loaderio-a6c8a368ec0ac4c24c199b8d6cf9aca1"
  end
end
