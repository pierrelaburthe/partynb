class PagesController < ApplicationController
  def home
    @parties = Party.all
  end
end
