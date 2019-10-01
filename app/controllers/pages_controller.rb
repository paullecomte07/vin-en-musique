class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :crus, :environnement, :terroir, :histoire, :innovation, :art]

  def home
  end

  def crus
  end

  def environnement
  end

  def terroir
  end

  def histoire
  end

  def innovation
  end

  def art
  end

end
