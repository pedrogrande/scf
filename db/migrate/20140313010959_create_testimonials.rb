class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
