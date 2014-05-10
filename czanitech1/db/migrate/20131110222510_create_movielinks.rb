class CreateMovielinks < ActiveRecord::Migration
  def change
    create_table :movielinks do |t|
      t.string :moviename
      t.string :movielink
      t.text :moviedescription

      t.timestamps
    end
  end
end
