class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :find_resultats
  before_action :serie_d
  before_action :serie_a1
  before_action :serie_a2
  before_action :serie_c
  def index
  end
  private
  def find_resultats
    @resultats    = Resultat.all.order(created_at: :desc)
  end
  def serie_d
    @resultats_D  = @resultats.where("serie= ?", "D")
  end
  def serie_a1
    @resultats_A1 = @resultats.where("serie= ?", "A1")    
  end
  def serie_a2
    @resultats_A2 = @resultats.where("serie= ?", "A2")    
  end
  def serie_c
    @resultats_C  = @resultats.where("serie= ?", "C")    
  end
end
