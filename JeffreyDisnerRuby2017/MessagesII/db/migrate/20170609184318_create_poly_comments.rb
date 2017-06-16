class CreatePolyComments < ActiveRecord::Migration
  def change
    create_table :poly_comments do |t|
      t.references :commentable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
