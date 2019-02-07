human_being = {
  species: "Sapiens",
  genus: "Homo",
  tribe: "Hominini",
  meaning: "wise man"
}

puts human_being.length # 4
                                       # Homo
puts "The only living species of genus #{human_being[:genus]} are
#{human_being[:species]}."
# Sapiens

puts human_being[:meaning].length # 7
