
feature 'Attack!' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave has attacked Mittens'
  end

  scenario 'attack plpayer 1' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'End Turn'
    click_button 'Attack'
    expect(page).to have_content 'Mittens has attacked Dave'
  end
end