class CreateDirectors < ActiveRecord::Migration[7.0]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :nascionalidade
      t.date :birth
      t.string :favorite_genere

      t.timestamps
    end
  end
end
