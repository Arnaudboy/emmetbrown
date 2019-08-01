class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :doctor, :speciality		 do |t|

    end
  end
end
