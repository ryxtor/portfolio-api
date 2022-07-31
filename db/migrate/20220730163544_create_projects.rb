class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :github_link
      t.string :live_demo

      t.timestamps
    end
  end
end
