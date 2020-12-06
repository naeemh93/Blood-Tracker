class CreateGlucoseLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :glucose_levels do |t|
      t.integer :g_level
      t.string :text
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
