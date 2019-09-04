require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("Megan")
g2 = Guest.new("Renea")
g3 = Guest.new("Edmonds")
g4 = Guest.new("Cynthia")

l1 = Listing.new("House", "NYC")
l2 = Listing.new("Apt", "NYC")
l3 = Listing.new("House", "Tokyo")
l4 = Listing.new("House", "Sydney")


t1 = Trip.new(l1,g1)
t2 = Trip.new(l1,g2)
t3 = Trip.new(l2,g2)
t4 = Trip.new(l3,g3)
t5 = Trip.new(l4,g2)
t6 = Trip.new(l2,g4)
t7 = Trip.new(l1,g3)

a1 = Actor.new("Keanu Reeves")
a2 = Actor.new("Jada Pinket")
a3 = Actor.new("Will Smith")

m1 = Movie.new("Seven Pounds")
m2 = Movie.new("Matrix")
m3 = Movie.new("Belly")
m4 = Movie.new("Matrix Reloaded")

s1 = Show.new("The Office")
s2 = Show.new("The Flight of the Conchords")
s3 = Show.new("Futurama")
s4 = Show.new("Matrix")

c1 = Character.new("Neo", a1, m2)
c2 = Character.new("John", a3, m1)
c3 = Character.new("Jada", a2, m3)
c4 = Character.new("Neo", a1, m4)
c5= Character.new("Smith", a3, m2)
c6 = Character.new("Trinity", a2, s4)

b1 = Bakery.new("Insomnia")
b2 = Bakery.new("Dough")
b3 = Bakery.new("Cupcake Factory")

d1 = Dessert.new("Cupcake", 300)
d2 = Dessert.new("Cookie", 250)
d3 = Dessert.new("Doughnut", 370)
d4 = Dessert.new("M&M Cookie", 350)

i1 = Ingredient.new("Flour", b3, d1)
i2 = Ingredient.new("Chocolate", b1, d2)
i3 = Ingredient.new("Chocolate Sprinkles", b2, d3)
i4 = Ingredient.new("M&M",b1, d4)

binding.pry
0