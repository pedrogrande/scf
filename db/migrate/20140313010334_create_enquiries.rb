class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :subject
      t.text :message
      t.references :user, index: true
      t.boolean :followed_up

      t.timestamps
    end
  end
end
