require 'rails_helper'

describe 'visitor' do
  describe 'visits /astronauts page' do
    it 'displays a list of astronauts' do
      astronaut_1 = Astronaut.create(name: "Neil Armstrong", age: 37, job: 'Commander')

      visit '/astronauts'
      expect(page).to have_content("Name: #{astronaut_1.name}", "Age: #{astronaut_1.age}", "Job: #{astronaut_1.job}")
    end
  end
end
