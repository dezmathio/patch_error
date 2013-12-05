class HomeController < ApplicationController
  def index
  end

  def update
    respond_to do |format|
      format.js {
        render
      }
    end
  end
end
