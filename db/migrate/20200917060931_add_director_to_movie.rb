class AddDirectorToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :director, :string
    add_column :movies, :english, :boolean
  end
end
