class CreateShefs < ActiveRecord::Migration
  def change
    create_table :shefs do |t|
      t.string :chefname
      t.string :email
      t.timestamps
    end
  end
end
