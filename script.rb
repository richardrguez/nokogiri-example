require 'nokogiri'
require 'open-uri'

name= []
contact = []
number =  []
email = []
adress = []
categories = []


#Numbers: #exhibitor-list .cf li:nth-child(3) , li:nth-child(3) .open-detail
#nombres empresa: .exhibitor div:nth-child(1) span:nth-child(1)
#Contact: #exhibitor-list .cf li:nth-child(1) 
#Categories: #exhibitor-list .cf li:nth-child(4) , #exhibitor-list .cf .cf .open-detail
#email list (sin link): a:nth-child(1) b
#website list (sin link): 'a:nth-child(2) b
#listdo email/website: #exhibitor-list .cf li:nth-child(5) , a:nth-child(2) b


#exhibitor-list 

# Fetch and parse HTML document
doc = Nokogiri::HTML(open('http://www.icff.com/show/floor-planexhibitors-list/?terms=&floor=Floor&category=Furniture'))
ar = []
#link.to_s.scan(/:\/\/[\w\-\_\.\,\%]+/)
####
# Search for nodes by css
doc.css('#exhibitor-list .cf li:nth-child(3) , li:nth-child(3) .open-detail').each do |link|
  puts  link.content.scan(/\s.+/)
  #link.to_s.scan(/:\/\/[\w\-\_\.\,]+/)
  
end

 #ar.join.split("://") do |add|
#  puts "http://" + add
# end
####
# Search for nodes by xpath
#doc.xpath('//*[@id="exhibitor-list"]/ul/li[2]/div[2]/ul/li[5]').each do |link|
#  puts link['href']
#end

####
# Or mix and match.
#doc.search('code.sh', '//h2').each do |link|
#  puts link.content
#end