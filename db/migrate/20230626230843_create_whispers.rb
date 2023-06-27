class CreateWhispers < ActiveRecord::Migration[7.0]
  def change
    create_table :whispers do |t|

      t.timestamps
    end
  end
end
