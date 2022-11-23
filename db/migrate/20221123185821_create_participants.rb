class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.string :registre_id, null: false, index: true
      t.string :name, null: false, index: true
      t.string :gender, null: false, index: true
      t.string :dob, null: false, index: true

      t.timestamps
    end
  end
end
