class AddDeets < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :description, :string
    add_column :lists, :githublink, :string
    add_column :lists, :livelink, :string
  end
end
