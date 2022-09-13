# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  scenario 'valid author' do
    visit new_book_path
    fill_in 'Author', with: 'jk rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('jk rowling')
  end
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Price', with: '20'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('20')
  end
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Published', with: '2000'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('12/1/2000')
  end
end