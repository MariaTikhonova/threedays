class AddImagesToCity < ActiveRecord::Migration[5.1]

	def up
		add_attachment :cities, :images
	end

	def down
		remove_attachment :cities, :images
	end

  def change
  	add_column :cities, :image_file_name, :string
  	add_column :cities, :image_content_type, :string
  	add_column :cities, :image_file_size, :integer
  	add_column :cities, :image_updated_at, :datetime
  end
end
