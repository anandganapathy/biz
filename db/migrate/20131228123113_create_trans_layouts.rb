class CreateTransLayouts < ActiveRecord::Migration
  def change
    create_table :trans_layouts do |t|

      t.timestamps
    end
  end
end
