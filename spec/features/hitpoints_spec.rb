
feature 'Hit Points' do
  scenario "show Player 2's hitpoint" do
    sign_in_and_play
    expect(page).to have_content "Mittens: 60 HP"
  end

  scenario "reducing Player 2's hitpoints by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'End Turn'
    expect(page).to have_content "Mittens: 50 HP"
  end
end
