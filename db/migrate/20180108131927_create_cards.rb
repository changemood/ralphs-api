class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.string :body
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
