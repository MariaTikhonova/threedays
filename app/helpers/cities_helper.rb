module CitiesHelper
	def city_params
		params.require(:city).permit(:name, :description, :image)
    end
end
