class CreateRegistries < ActiveRecord::Migration[7.0]
  def change
    create_table :registries do |t|
      t.string :coordinator_id, null: false
      t.string :participant_id, null: false
      t.string :name, null: false
      t.string :location, null: false

      t.timestamps
    end
  end
end
