class CreateSrMasters < ActiveRecord::Migration[5.1]
  def change
    create_table :sr_masters do |t|
      t.string :name
      t.integer :interval
      t.timestamps
      t.timestamp :deleted_at
    end
  end
end
