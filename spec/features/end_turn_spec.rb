

feature 'end_turn' do
  scenario '1st player starts attack' do
    sign_in_and_play
    expect(page).to have_content 'Dave Turn!'
  end
  scenario '2nd player not displayed for attack' do
    sign_in_and_play
    expect(page).to_not have_content 'Mittens Turn!'
  end
  scenario 'after attack switch turns' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'End Turn'
    expect(page).to have_content 'Mittens Turn!'
  end
end