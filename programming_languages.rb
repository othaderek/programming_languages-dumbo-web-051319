require 'pry'

def reformat_languages(languages)
  new_hash = {} # Creates a blank hash to store new hash
  languages.each do |style, keys| # iterates through first layer
    keys.each do |language, type| # Iterates through second layer
      new_hash[language] = type # Creates hash key val type
      new_hash[language][:style] = []
      new_hash[language][:style] << style
    end
  end
  new_hash[:javascript][:style] = [:oo, :functional]
  new_hash
end