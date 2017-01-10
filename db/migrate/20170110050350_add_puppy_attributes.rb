class AddPuppyAttributes < ActiveRecord::Migration[5.0]
  def change
    add_column :puppies, :name, :string
    add_column :puppies, :breed, :string
    add_column :puppies, :cutness, :integer
  end
end
