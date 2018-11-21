class Owner

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  attr_accessor :name, :pets
  attr_reader :species

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fishes
    @pets[:fish].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.each do |pet|
        pet.name = "nervous"
      end
      pets = []
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count}"
    
  end


end
