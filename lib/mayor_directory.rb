require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rubocop'

def get_townhall_email(url)
  page = Nokogiri::HTML(open(url))
  e_mail = []
  e_mail << page.xpath('///html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
  return p e_mail
  end
  
  a = "http://annuaire-des-mairies.com/95/avernes.html"
  get_townhall_email(a)
  
  def get_townhall_list
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/"))
  town = []
  townhall_source = "http://annuaire-des-mairies.com/95/"
  page.xpath('/html/body/pre/a').each do |td|
  town << townhall_source + td["href"]
  end
  return town[5..-1]
  end
  
  get_townhall_list.each do |x|
    get_townhall_email(x)
  end