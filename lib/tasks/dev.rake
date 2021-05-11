namespace :dev do
  
  DEFAULT_PASSWORD = 123456

  desc "Cria um usuario padrao"
  task add_standard_user: :environment do
    User.create!(
      email: 'email@padrao.com.br',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end
end
