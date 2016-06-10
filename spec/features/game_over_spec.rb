
feature 'Game Over' do
  scenario 'throws a game over message when HP 0 is reached' do
    sign_in_and_play
    11.times do
      click_button 'Attack'
      click_button 'End Turn'
    end
    expect(page).to have_content 'GAME OVER: Mittens loses!'
  end
end