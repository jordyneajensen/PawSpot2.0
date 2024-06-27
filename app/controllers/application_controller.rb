class ApplicationController < ActionController::Base
    def handle_404
      head :not_found
    end
  end
  