class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :status, default: false
      t.references :user, foreign_key: true
      t.boolean :visible, default: false

      t.timestamps
    end
  end
end
