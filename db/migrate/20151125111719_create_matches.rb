class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :uid
      t.string :winner
      t.datetime :starts_at
      t.string :mode
      t.string :first_blood
      t.string :match_type
      t.string :duration
      t.references :user, index: true

      t.timestamps
    end
  end
end
