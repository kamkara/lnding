class Resultat < ApplicationRecord
     ################## VALIDATES  ###############
  validates :username, :serie, :contact, :status,  presence: true
  
  ################## SLUG ###############
  extend FriendlyId
    friendly_id :username, use: :slugged

  def should_generate_new_friendly_id?
    username_changed?
  end
end
