class AddAssociationToCards < ActiveRecord::Migration[5.1]
  def change
    # add board_id in card table.
    add_reference :cards, :board, foreign_key: true
  end
end
