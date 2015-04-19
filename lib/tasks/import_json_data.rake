require 'json'

namespace :job_search do

  desc 'Import JSON data to PosgreSQL database'
  task import_json: :environment do
    p 'Parsing JSON file...'
    json = File.read('./dataset.json')
    offers_tabs = JSON.parse(json)
    offers = []
    p 'Adding job data...'
    offers_tabs.each do |hash|
      offers << hash['JobData']
    end
    offers.flatten!

    p 'Formatting attributes...'
    offers.each do |offer|
      offer.transform_keys! do |key|
        key.underscore
      end
    end
		offers

    p 'Seeding database with JSON data...'
    offers.each do |offer|
      p "Creating #{offer} in database..."
      Offer.create(offer)
    end
  end
end
