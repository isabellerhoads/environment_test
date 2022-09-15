# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'book_title', with: 'harry potter'
    fill_in 'book_author', with: 'jk rowling'
    fill_in 'book_price', with: '20'
    select "2012", :from => "book_published_date_1i"
    select "July", :from => "book_published_date_2i"
    select "13", :from => "book_published_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  scenario 'valid author' do
    visit new_book_path
    fill_in 'book_title', with: 'harry potter'
    fill_in 'book_author', with: 'jk rowling'
    fill_in 'book_price', with: '20'
    select "2012", :from => "book_published_date_1i"
    select "July", :from => "book_published_date_2i"
    select "13", :from => "book_published_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end
  scenario 'valid price' do
    visit new_book_path
    fill_in 'book_title', with: 'harry potter'
    fill_in 'book_author', with: 'jk rowling'
    fill_in 'book_price', with: '20'
    select "2012", :from => "book_published_date_1i"
    select "July", :from => "book_published_date_2i"
    select "13", :from => "book_published_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('20')
  end
  scenario 'valid published_date' do
    visit new_book_path
    fill_in 'book_title', with: 'harry potter'
    fill_in 'book_author', with: 'jk rowling'
    fill_in 'book_price', with: '20'
    select "2012", :from => "book_published_date_1i"
    select "July", :from => "book_published_date_2i"
    select "13", :from => "book_published_date_3i"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('13')
    expect(page).to have_content('07')
    expect(page).to have_content('2012')
  end
end