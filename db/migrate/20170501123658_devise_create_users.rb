class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :battle_tag
      t.string :battle_id
    end
  end
end
