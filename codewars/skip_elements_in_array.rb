def skip_animals(animals, skip)
  new_animals = []
  animals.each_with_index do |animal, index|
    new_animals.push("#{index}:#{animal}") if index >= skip
  end
  new_animals
end

critters = ['leopard', 'bear', 'fox', 'wolf']
skipper = 2

p skip_animals(critters, skipper)
# p critters