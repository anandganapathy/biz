class AddColSeptColumnToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :col_sept, :string
  end
end
