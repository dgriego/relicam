#!/usr/bin/env ruby -w

require 'rubygems'  # do I need this?
require 'nokogiri'
require 'open-uri'
require 'pry'
require 'csv'
require 'mysql2'

#http://www.ecriteria.net/eCriteriaSearchCriteriaAction.asp?DBName=photo&T_e_type=Red&T_e_metro=Florida&T_e_city=&T_e_street1=&btnAction=Search+Database&DBName0=photo
PAGE_URL = "http://mdb.local:81/tmp/redlight_cameras_page.html"

page = Nokogiri::HTML(open(PAGE_URL))


# The columns are:
#    State, City / Suburb, Cross Street, Fine, Camera Type, Notes and Map

CSV.open('/tmp/redlight_cameras.csv', 'wb') do |csv|
  csv << ['STATE', 'CITY', 'CROSS STREET']

  data = []
  page.css('tbody .table3').each do |tbody|
    tbody.css('tr').each do |tr|
      row = {}
      col = 0
      tr.css('td').each do |td|
        break if td.text.upcase == 'STATE'
        row[:state] = td.text if col == 0
        row[:city] = td.text if col == 1
        row[:cross_street] = td.text if col == 2
        col += 1
      end
      sql = "INSERT INTO foo (city, state, country, cross_street) " +
            "VALUES(?, ?, ?, ?)"
      csv << row if row.size > 0
    end
  end
end

binding.pry


=begin
print_chars('-', title.length)
puts title
print_chars('-', title.length)

puts "\n#{page.css('caption.titleDataHeader')[0].text}\n"


donext = false
page.css('td').each do |node|
  if donext
    puts node.text.strip
    donext = false
  end

  if node.text =~ /\((WDIR|WSPD|GST|PRES|PTDY|ATMP)\):*\Z/
    print "#{node.text.strip} "
    donext = true
  end
end

=end
