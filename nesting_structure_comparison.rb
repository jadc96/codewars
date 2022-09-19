class Array
  def same_structure_as(input)
    if self.class == Array && input.class == Array
      return false if self.length != input.length
    elsif self.class == Array || input.class == Array
      return false
    end

    for i in (0..self.length - 1)
      if self[i].class == Array && input[i].class == Array
        return false if self[i].length != input[i].length
        return false if !(self[i].same_structure_as(input[i]))
      elsif self[i].class == Array || input[i].class == Array
        return false
      end
    end
    return true
  end
end

# En fait les seules exigences concernent les tableaux :
#   - ils doivent être de même longueur
#   - et aux mêmes index
# Pour les données elles-mêmes, peut importe leur valeur ou même leur type
