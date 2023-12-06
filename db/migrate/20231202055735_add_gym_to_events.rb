class AddGymToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :gym, null: false, foreign_key: true
  end
end
