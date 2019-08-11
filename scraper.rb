require 'nokogiri'
require 'httparty'
require 'byebug'

def scraper
    url = "https://smallbeerpress.com/free-stuff-to-read/novel-excerpts/"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    excerpts = Array.new
    para_array = parsed_page.css('p')
    para_array.each do |para|
        para_text = para.text
        if para_text.length > 200
            excerpts.push(para_text)
        end
     end
     byebug
end

scraper