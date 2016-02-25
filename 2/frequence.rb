puts "Entrez un texte"
text = gets.chomp

frequence = Hash.new(0)
mots = text.tr(',.:"\'',' ').downcase.split(' ')

mots.each {|mot|frequence[mot] +=1}

recurrence = frequence.sort_by {|terme,fois|fois}.reverse!
recurrence.each { |terme,fois| puts "Le mot \"#{terme}\" apparaît #{fois} fois"}