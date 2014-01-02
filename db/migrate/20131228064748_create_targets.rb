class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :source_type
      t.string :source_location
      t.string :data
      t.string :source_info

      t.timestamps
    end
  end
end
