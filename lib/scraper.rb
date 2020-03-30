require 'pry'
require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

courses = doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course|
    puts course.text.strip
end

p doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0]
#=>an XML element: Extensible Markup Language


# courses_text = doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC").text
    #=>returns the text as one long string
# courses_object = doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0]
    #=>returns the XML object
# courses_name = doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].name
    #=>"div", the name of the XML element
# courses_attributes = doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].attributes
    #=>returns ids, names, and classes, {"class"=>#<Nokogiri::XML::Attr:0x3fd0e50e1b04 name="class" value="inlineMobileLeft-2Yo002 imageTextBlockGrid3-2XAK6G">}
