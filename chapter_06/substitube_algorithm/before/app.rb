class App
  def found_friends(people)
    people.select do |person|
      %(Don John Kent).include?(person)
    end
  end
end
