# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "Admin", last_name: "User", email: "admin@czani.com", password: "zani2780", password_confirmation: "zani2780", admin: true)
Pymt.create(order_to_show: 1, pymt_status: "Please, Pay $399. Thank You!", is_requesting_pymt: true)
Pymt.create(order_to_show: 2, pymt_status: "Please, Pay $199. Thank You!", is_requesting_pymt: true)
Pymt.create(order_to_show: 3, pymt_status: "Please, Pay $99. Thank You!", is_requesting_pymt: true)
Pymt.create(order_to_show: 4, pymt_status: "Please, Pay $50. Thank You!", is_requesting_pymt: true)
Pymt.create(order_to_show: 5, pymt_status: "Please, Pay $25. Thank You!", is_requesting_pymt: true)
Pymt.create(order_to_show: 6, pymt_status: "Prossessing Payment", is_requesting_pymt: false)
Pymt.create(order_to_show: 7, pymt_status: "Paid Successfuly", is_requesting_pymt: false)
Pymt.create(order_to_show: 8, pymt_status: "Payment Declined", is_requesting_pymt: false)
Projstatus.create(ordertoshow: 1, statusname: "Script in Progress", color: "orange")
Projstatus.create(ordertoshow: 2, statusname: "Producer Thinking ...", color: "brown")
Projstatus.create(ordertoshow: 3, statusname: "Customer Thinking ...", color: "brown")
Projstatus.create(ordertoshow: 4, statusname: "Producer Working", color: "blue")
Projstatus.create(ordertoshow: 5, statusname: "Producer Review", color: "blue")
Projstatus.create(ordertoshow: 6, statusname: "Customer Review", color: "blue")
Projstatus.create(ordertoshow: 7, statusname: "Producer Approved", color: "green")
Projstatus.create(ordertoshow: 8, statusname: "Customer Approved", color: "green")
Projstatus.create(ordertoshow: 9, statusname: "Customer NOT Happy!", color: "red")
Projstatus.create(ordertoshow: 10, statusname: "Customer DID NOT Approve!", color: "red")