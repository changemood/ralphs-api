class CreateSrEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :sr_events do |t|
      t.integer :interval
      t.integer :review_count
      t.timestamp :next_review_at
      t.timestamp :reviewed_at
      t.belongs_to :user, foreign_key: true
      t.belongs_to :card, foreign_key: true
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
