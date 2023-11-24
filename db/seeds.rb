# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

group1 = Group.create(user: user1, name: 'Lunches', icon: 'https://i.pravatar.cc/300?img=1')
group2 = Group.create(user: user1, name: 'Cosmetics', icon: 'https://i.pravatar.cc/300?img=2')
group3 = Group.create(user: user1, name: 'Clothes', icon: 'https://i.pravatar.cc/300?img=3')

group1 = Group.create(user: user1, name: 'Lunches', icon: 'missing_avatar.png')
group2 = Group.create(user: user1, name: 'Cosmetics', icon: 'missing_avatar.png')
group3 = Group.create(user: user1, name: 'Clothes', icon: 'missing_avatar.png')

purchase1 = Purchase.create(author: user1, name: 'Cream', amount: 10)
purchase2 = Purchase.create(author: user1, name: 'Shempoo', amount: 20)
purchase3 = Purchase.create(author: user1, name: 'New Dress', amount: 5)

group_purchase1 = GroupPurchase.create(group: group2, purchase: purchase1)
group_purchase1 = GroupPurchase.create(group: group2, purchase: purchase2)
group_purchase1 = GroupPurchase.create(group: group3, purchase: purchase3)

user = User.create(name: 'Mohamed', email: 'm.ighe@hotmail.com', password: '667788')
# group1 = Group.create(user: user, name: 'Lunches', icon: 'https://i.pravatar.cc/300?img=1')
# group2 = Group.create(user: user, name: 'Cosmetics', icon: 'https://i.pravatar.cc/300?img=2')
# group3 = Group.create(user: user, name: 'Clothes', icon: 'https://i.pravatar.cc/300?img=3')

# purchase1 = Purchase.create(author: user, name: 'Cream', amount: 10)
# purchase2 = Purchase.create(author: user, name: 'Shempoo', amount: 20)
# purchase3 = Purchase.create(author: user, name: 'New Dress', amount: 5)