class AddImageToFilm < ActiveRecord::Migration[7.0]
  def change
    add_column :films, :image, :string
  end
end
