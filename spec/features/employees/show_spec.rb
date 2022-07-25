require 'rails_helper'

RSpec.describe 'employee show page' do
  it "shows Employee name" do
    appliances = Department.create!(name: "Appliances", floor: "Basement")
    lighting = Department.create!(name: "Lighting", floor: "Basement")
    garden = Department.create!(name: "Garden", floor: "One")

    ally = appliances.employees.create!(name: "Ally", level: 1)
    bob = appliances.employees.create!(name: "Bob", level: 1, department_id: 1)
    chris = lighting.employees.create!(name: "Chris", level: 1, department_id: 2)
    molly = garden.employees.create!(name: "Molly", level: 2, department_id: 3)

    ticket1 = Ticket.create!(subject: "Rearrange sale items", age: 2)
    ticket2 = Ticket.create!(subject: "printers broken", age: 2)
    ticket3 = Ticket.create!(subject: "hole in wall to jupiter", age: 4)

    visit "/employees/1"

    expect(page).to have_content("Ally")
    expect(page).to have_content("Appliances")
    expect(page).to have_content("Rearrange")
    expect("Rearrange").to appear_before("printers broken")
  end
end
