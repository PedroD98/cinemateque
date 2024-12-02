require 'rails_helper'

describe 'Usuário cria uma sessão' do

  it 'e precisa estar logado' do
    visit root_path
    within 'nav' do
      click_on('Sessões')
    end

    expect(page).to eq new_user_session_path
  end

  it 'a partir do formulário' do
    
  end

  it 'com sucesso' do
    
  end

  it 'e preenche todos os campos' do
    
  end

end