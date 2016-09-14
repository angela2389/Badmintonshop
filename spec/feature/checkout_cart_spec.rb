require 'rails_helper'

def create_category_and_product
  category1 = Category.create( name: 'Rackets')
  product1 = Product.create( name: 'Yonex X', category: category1, stock: 20, price: 40)
end

feature 'Add item to cart and create an order', js: true do

  scenario 'Go to rackets page and show product' do
    create_category_and_product
    visit products_rackets_path
    expect(page).to have_content('Yonex X')
  end

  scenario 'Add product to cart and go to checkout' do
    user = User.create(email: "angela@angela.com", password: "abcdef")
    create_category_and_product
    visit new_user_session_path
    fill_in 'user_email', with: 'angela@angela.com'
    fill_in 'user_password', with: 'abcdef'
    click_button "Log in"
    visit products_rackets_path
    expect(page).to have_content('Yonex X')
    click_link("Add to cart")
    click_link("Checkout")
    click_link("Continue checkout")
    choose("order_paymentmethod_bank_transfer")
    fill_in 'order_comments', with: 'quick delivery!!'
    page.execute_script("$('form').submit()")
    sleep(3)
    expect(page).to have_content('Order id: 1')
    expect(page).to have_content('quick delivery!!')
  end
end
