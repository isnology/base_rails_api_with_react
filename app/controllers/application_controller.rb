class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ::ActionController::Serialization
  respond_to :json
end
