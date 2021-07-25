class Resultat < ApplicationRecord
     ################## VALIDATES  ###############
  validates :username, :contact_parent, :age, :genre, :ville, :ecole, :contact, :status,  presence: true
  validates :username, :ville, :ecole, length: { minimum:5 }
  validates :contact, :contact_parent,numericality: { only_integer: true }, uniqueness: true, length: { is: 10 }

  ################## SLUG ###############
  extend FriendlyId
    friendly_id :username, use: :slugged

  def should_generate_new_friendly_id?
    username_changed?
  end
end
