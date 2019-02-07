oatmeal_raisin = {
  gluten_free: false,
  dairy_free: true,
  non_gmo: true,
  vegan: true,
  allergens: "nuts"
}

puts oatmeal_raisin.length # 5

if oatmeal_raisin[:dairy_free] # true
  puts "Oatmeal raisin cookies are dairy free."
end

oatmeal_raisin[:allergens] += ", soy"
puts oatmeal_raisin[:allergens] # nuts, soy

              # true                      # false
if !oatmeal_raisin[:gluten_free] || !oatmeal_raisin[:vegan]
  puts "The oatmeal raisin cookie is either not gluten free or not vegan."
end
