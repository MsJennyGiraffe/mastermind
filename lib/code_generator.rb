class CodeGenerator
  COLORS = ["R", "Y", "B", "G"]
#create an array of random colors (4)
  def sample_color
    COLORS.sample
  end

  def generate_colors
    color_array = []
    4.times do
      color_array << sample_color
    end
    color_array.join
  end

end
