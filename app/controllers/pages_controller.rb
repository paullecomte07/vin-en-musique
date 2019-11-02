class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :vin, :engagement, :terroir, :histoire, :art]

  def home
  end

  def vin
  end

  def engagement
  end

  def terroir
  end

  def histoire
  end

end
