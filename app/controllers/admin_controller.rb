class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :find_resultats
  before_action :fin_resultats_serie_d, only: %i[index serie_d]
  before_action :fin_resultats_serie_a1, only: %i[index serie_a1]
  before_action :fin_resultats_serie_a2, only: %i[index serie_a2]
  before_action :fin_resultats_serie_c, only: %i[index serie_c]
  
  def index
  end
  def serie_d
        
    @resultats_D_N = @resultats_D.where("status= ?", "Non")    
    @resultats_DH  = @resultats_D_S.where("genre= ?", "Homme")
    @resultats_DF  = @resultats_D.where("genre= ?", "Femme")
  end
  def serie_a1
       
    @resultats_A1_N = @resultats_A1.where("status= ?", "Non")    
    @resultats_A1H = @resultats_A1_S.where("genre= ?", "Homme")    
    @resultats_A1F = @resultats_A1_S.where("genre= ?", "Femme")    
  end
  def serie_a2
       
    @resultats_A2_N = @resultats_A2.where("status= ?", "Non")    
    @resultats_A2H = @resultats_A2_S.where("genre= ?", "Homme")    
    @resultats_A2F = @resultats_A2_S.where("genre= ?", "Femme")    
  end
  def serie_c
       
    @resultats_C_N  = @resultats_C.where("status= ?", "Non")    
    @resultats_CH  = @resultats_C_S.where("genre= ?", "Homme")    
    @resultats_CF  = @resultats_C_S.where("genre= ?", "Femme")    
  end

  private
    def find_resultats
      @resultats    = Resultat.all.order(created_at: :desc)
    end

    def fin_resultats_serie_d
      @resultats_D  = @resultats.where("serie= ?", "D")
    @resultats_D_S = @resultats_D.where("status= ?", "Succes")
    end
    def fin_resultats_serie_a1
      @resultats_A1 = @resultats.where("serie= ?", "A1")    
    @resultats_A1_S = @resultats_A1.where("status= ?", "Succes") 
    end
    def fin_resultats_serie_a2
      @resultats_A2 = @resultats.where("serie= ?", "A2")    
    @resultats_A2_S = @resultats_A2.where("status= ?", "Succes") 
    end
    def fin_resultats_serie_c
      @resultats_C  = @resultats.where("serie= ?", "C")    
    @resultats_C_S  = @resultats_C.where("status= ?", "Succes") 
    end
   
end
