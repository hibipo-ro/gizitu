class AddStrengthToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :strength, :integer
  end
end
