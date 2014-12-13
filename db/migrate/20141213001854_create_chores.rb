class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
