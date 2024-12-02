require 'rails_helper'

describe 'Usuário cria uma sessão' do

  it 'e precisa estar logado' do
    movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')
    visit movie_theater_sessions_path movie_theater

    expect(current_path).to eq new_user_session_path
  end

  it 'a partir do formulário' do
    movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')
    user = FactoryBot.create(:user, email: 'pedro@email.com')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Cinema'
    end
    click_on 'Cine Paradiso'
    click_on 'Criar sessão'

    expect(current_path).to eq new_movie_theater_session_path movie_theater
    expect(page).to have_content 'Nova Sessão'
    expect(page).to have_content 'Filme'
    expect(page).to have_content 'Sala'
    expect(page).to have_content 'Dia da semana'
    expect(page).to have_content 'Horário'

  end

  it 'com sucesso' do
    
  end

  it 'e preenche todos os campos' do
    
  end

end