class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account
      t.string :e_mail
      t.string :password_digest

      t.timestamps
    end
  end
end
