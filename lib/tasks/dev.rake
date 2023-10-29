namespace :dev do
  desc "TODO"
  task db: :environment do
    %x(rails db:create db:migrate)
  end

end
