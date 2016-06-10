
feature 'Attack!' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave has attacked Mittens'
  end
end