class CreateSecurities < ActiveRecord::Migration[5.2]
  def change
    create_table :securities do |t|

      t.timestamps
    end
  end
end
