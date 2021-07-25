json.extract! resultat, :id, :username, :ville, :ecole, :serie, :genre, :age, :contact, :contact_parent, :status, :slug, :created_at, :updated_at
json.url resultat_url(resultat, format: :json)
