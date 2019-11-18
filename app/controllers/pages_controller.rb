class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :vin, :engagement, :terroir, :histoire, :art, :cgv, :donneepersonnelles, :mentionslegales, :nous]

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

  def cgv
  end

  def donneespersonnelles
  end

  def mentionslegales
  end

  def nous
  end

end
