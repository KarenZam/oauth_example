require 'oauth_github'

class HomeController < ApplicationController
  def index
    state = SecureRandom.hex(32)
    session[:random_oauth_token] = state
    @authorize_url = OauthGithub.authorize_url(state)
  end
end
