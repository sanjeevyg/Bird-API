# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tree.destroy_all
Bird.destroy_all

tree1 = Tree.create(name: "Oak")
tree2 = Tree.create(name: "Pine")
tree3 = Tree.create(name: "Aspen")
tree4 = Tree.create(name: "Mango")


bird1 = Bird.create(name: "Bald Eagle", size: "Medium", tree: tree1)
bird2 = Bird.create(name: "Moa", size: "Large", tree: tree2)
bird3 = Bird.create(name: "Ostrich", size: "Large", tree: tree3)
bird4 = Bird.create(name: "Hummingbird", size: "tiny", tree: tree4)

