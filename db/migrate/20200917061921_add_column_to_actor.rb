class AddColumnToActor < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :gender, :string
    add_column :actors, :age, :integer
  end
end
