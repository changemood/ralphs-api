class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
