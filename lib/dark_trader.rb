require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rspec'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
puts page.class
puts "Voici une structure de données sous forme d'array de hashes représentant les cours de toutes les cryptomonnaies disponibles sur le marché :"
 crypto_name_path = page.xpath('//td[contains(@class, "symbol")]').map(&:text).uniq
 crypto_value_path = page.xpath('//td[contains(@class, "price")]').map(&:text).uniq

 crypto_name = []

 crypto_value = []
 
 puts "#{crypto_value}"
 puts "#{crypto_name}"
 crypto_table = crypto_name_path.zip(crypto_value_path)

crypto_table.each do |name, value|
  puts "#{name}: #{value}"
end