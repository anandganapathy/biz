class CreateUserStep1s < ActiveRecord::Migration
  def change
    create_table :user_step1s do |t|
      t.string :project_name
      t.string :phase_name
      t.string :project_urls
      t.string :subject_area

      t.timestamps
    end
  end
end
