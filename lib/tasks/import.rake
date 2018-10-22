require 'csv'

namespace :import do 
  desc "Import useers from csv"

  task users: :environment do 
    filename = File.joing Rails.root, "users.csv"
    CSV.foreach(filename) do |raw|
      p row
    end
  end
end 