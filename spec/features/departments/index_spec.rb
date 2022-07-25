require 'rails_helper'

RSpec.describe 'depts index page' do
  it "shows all department names" do
    appliances = Department.create!(name: "Appliances", floor: "Basement")
    lighting = Department.create!(name: "Lighting", floor: "Basement")
    garden = Department.create!(name: "Garden", floor: "One")

    visit "/departments"

    expect(page).to have_content("Appliances")
    expect(page).to have_content("Lighting")
    expect(page).to have_content("Garden")
    expect(page).not_to have_content("toys")
  end

  it "shows department floor, and employees" do
    appliances = Department.create!(name: "Appliances", floor: "Basement")
    lighting = Department.create!(name: "Lighting", floor: "Basement")
    garden = Department.create!(name: "Garden", floor: "One")

    ally = appliances.employees.create!(name: "Ally", level: 1)
    bob = appliances.employees.create!(name: "Bob", level: 1, department_id: 1)
    chris = lighting.employees.create!(name: "Chris", level: 1, department_id: 2)
    molly = garden.employees.create!(name: "Molly", level: 2, department_id: 3)

    visit "/departments"

    # within "#departments-#{appliances.id}" do
      expect(page).to have_content("Ally")
      expect(page).to have_content("Bob")
      expect(page).to have_content("Basement")
    # end

    # within "#departments-#{lighting.id}" do
      expect(page).to have_content("Chris")
      expect(page).to have_content("Basement")
    # end

    # within "#departments-#{garden.id}" do
      expect(page).to have_content("Molly")
      expect(page).to have_content("One")
    # end
  end
end
