desc 'Import cards'
task import_cards: :environment do
  File.open('data/bcards.txt', 'r').each do |line|
    bcards = line.split('<>')
    bcards.each { |card| BlackCard.create(text: card) }
  end

  File.open('data/wcards.txt', 'r').each do |line|
    wcards = line.split('<>')
    wcards.each { |card| WhiteCard.create(text: card) }
  end
end