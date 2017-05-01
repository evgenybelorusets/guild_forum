class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :battle_tag
      t.string :battle_id
      t.string :encrypted_password, null: false, default: ""
    end
  end
end
