class CreateUserStep2s < ActiveRecord::Migration
  def change
    create_table :user_step2s do |t|
      t.string :source_type
      t.string :source_location
      t.string :data
      t.string :source_info

      t.timestamps
    end
  end
end
