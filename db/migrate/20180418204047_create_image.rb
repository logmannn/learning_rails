class CreateImage < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :image, :string
  end
end
