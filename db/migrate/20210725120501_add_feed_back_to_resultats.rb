class AddFeedBackToResultats < ActiveRecord::Migration[6.1]
  def change
    add_column :resultats, :feedback, :text
  end
end
