# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

values = { id: 1, name: "Apple", url: "apple.com", city: "Cupertino", state: "CA" }
companies = Company.new(values)
companies.save

values = { id: 2, name: "Amazon", url: "amazon.com", city: "Seattle", state: "WA" }
companies = Company.new(values)
companies.save

values = { id: 3, name: "Tesla", url: "tesla.com", city: "Austin", state: "TX" }
companies = Company.new(values)
companies.save

# 2. create new companies

values = { first_name: "Craig", last_name: "Federighi", email: "craig@apple.com", phone_number: "888-888-8888"}
contact = Contact.new(values)
contact.save

values = { first_name: "Jeff", last_name: "Bezos", email: "jeff@amazon.com", phone_number: "777-888-8888"}
contact = Contact.new(values)
contact.save

values = { first_name: "Elon", last_name: "Musk", email: "elon@tesla.com", phone_number: "666-888-8888"}
contact = Contact.new(values)
contact.save

# 3. query companies table

puts "Total contacts are #{Contact.all.count}"
contacts =  Contact.all
for contact in contacts   
    puts "#{contact.first_name} #{contact.last_name}"
end


# 4. read column values from row

# 5. update attribute value
