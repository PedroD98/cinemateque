require 'rails_helper'

describe 'Usuário cria uma sessão' do

  it 'e precisa estar logado' do
    visit sessions_path

    expect(current_path).to eq new_user_session_path
  end

  it 'a partir do formulário' do
    user = FactoryBot.create(:user, email: 'pedro@email.com')
    login_as user

    visit root_path
    within('nav') do
      click_on 'Sessões'
    end
    click_on 'Criar sessão'

    expect(current_path).to eq new_session_path
    expect(page).to have_content 'Nova sessão'
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