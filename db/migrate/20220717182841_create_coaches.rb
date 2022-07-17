class CreateCoaches < ActiveRecord::Migration[7.0]
  def change

    create_table :coaches do |t|

      t.string :coach_id  

      t.string :name  

      t.string :gender  

      t.date :date_of_birth

      t.string :password  

      t.decimal :mobile_number  

      t.string :speciality

      t.timestamps

    end

  end
end