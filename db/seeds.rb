# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

if Rails.env.development?
    cate = Category.create!(title: 'Electronics', description: 'Gadgets')
    prov = Province.create!(name: 'Madhya Pradesh', pst: 0.7, gst: 0.8, hst: 0.6)
    cust = Customer.create!(first_name: 'Rakesh', last_name: 'Sharma',
                            address: 'H No.64, Vimal Nagar', city: 'Indore',
                            postal_code: '424101', email: 'pavanrf07@gmail.com',
                            province_id: prov.id)
    prod = Product.create!(name: 'Oppo AS5', description: '5 G Smart Phone',
                           price: 17.000, stock_quantity: 7, cotegory: 'Electronics',
                           category_id: cate.id, sale_price: 17.000)
    stat = Status.create!(title: 'Placed', description: 'Order is placed')
    ord = Order.create!(pst_rate: 0.7, gst_rate: 0.8, hst_rate: 0.6, customer_id: cust.id,
                        order_total: 34.000, status_id: stat.id)
    line_item = LineItem.create!(quantity: 2, price: 34.000, order_id: ord.id,
                                 product_id: prod.id)
    page = Page.create!(title: 'Electronics Products',
                        content: 'Page having all Electronics Products')
    revi = Review.create!(rating: 0.5, customer_id: cust.id,
                           product_id: prod.id, content: 'This is awesome Product')
  end
