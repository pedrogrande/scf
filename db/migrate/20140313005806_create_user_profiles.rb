class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :phone
      t.string :tagline
      t.text :about
      t.string :image
      t.string :facebook
      t.string :linkedin
      t.string :googlegithub
      t.string :twitter
      t.string :blog
      t.boolean :show_email
      t.references :user, index: true

      t.timestamps
    end
  end
end
