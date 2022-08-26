puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mr_meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "Lego Ship", value: 10, company_id: google.id, dev_id: morty.id)
Freebie.create(item_name: "Coffee Mug", value: 6, company_id: dunder_mifflin.id, dev_id: gazorpazop.id)
Freebie.create(item_name: "Hoodie", value: 50, company_id: google.id, dev_id: rick.id)
Freebie.create(item_name: "Internship", value: 10000, company_id: enron.id, dev_id: rick.id)
Freebie.create(item_name: "Noogler Hat", value: 3, company_id: google.id, dev_id: mr_meseeks.id)
Freebie.create(item_name: "Internship", value: 5000, company_id: facebook.id, dev_id: rick.id)
Freebie.create(item_name: "Lego Ship", value: 10, company_id: enron.id, dev_id: mr_meseeks.id)
Freebie.create(item_name: "Magsafe Charger", value: 100, company_id: dunder_mifflin.id, dev_id: morty.id)

puts "Seeding done!"
