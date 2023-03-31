class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :release_year
      t.string :summary
      t.string :country
      t.integer :duration
      t.string :director
      t.string :gender

      t.timestamps
    end
  end
end
