require 'rails_helper'

RSpec.describe 'depts index page' do
  it "shows all departments" do
    appliances = Department.create!(name: "Appliances", floor: "Basement")
    lighting = Department.create!(name: "Lighting", floor: "Basement")
    garden = Department.create!(name: "Garden", floor: "One")

    visit "/departments"

    expect(page).to have_content("Appliances")
    expect(page).to have_content("Lighting")
    expect(page).to have_content("Garden")
    expect(page).not_to have_content("toys")
  end
end
