namespace :db do
  desc "imports data from jsonplaceholder"
  task data_import: :environment do
    JsonPlaceholder.data_import!
  end

end
