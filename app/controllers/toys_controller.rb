
def dolls
    @toys=Toy.all.select { |toy| toy.category == "Dolls & Playset" }

end

def puzzles
    @toys=Toy.all.select { |toy| toy.category == "Games and Puzzles" }
end

def construction
    @toys=Toy.all.select { |toy| toy.category == "Construction and building toys" }
end

def Educational
    @toys=Toy.all.select { |toy| toy.category == "Educational toys" }
end