class CreateResultats < ActiveRecord::Migration[6.1]
  def change
    create_table :resultats, id: :uuid do |t|
      t.string :username
      t.string :ville
      t.string :ecole
      t.string :serie
      t.string :genre
      t.string :age
      t.string :contact
      t.string :contact_parent
      t.string :status
      t.string :slug

      t.timestamps
    end
  end
end
