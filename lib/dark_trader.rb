require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rubocop'
require "awesome_print"

def stock_crypto 
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	@crypto_price = []
	@crypto_name = []
	page.xpath('//a').each do |x|
		if x.to_s.include?('class="currency-name-container link-secondary"')
			@crypto_name << x.text
  		elsif x.to_s.include?('class="price"')
			@crypto_price << x.text
		end	
	end
	return @crypto_price, @crypto_name
end

p stock_crypto
hashi = Hash[@crypto_name.zip(@crypto_price)]
puts hashi