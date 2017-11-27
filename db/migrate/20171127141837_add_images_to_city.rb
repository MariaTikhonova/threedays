class AddImagesToCity < ActiveRecord::Migration[5.1]
  def change
  	add_column :cities, :image_file_name, :string
  	add_column :cities, :image_content_type, :string
  	add_column :cities, :image_file_size, :integer
  	add_column :cities, :image_updated_at, :datetime
  end
end
