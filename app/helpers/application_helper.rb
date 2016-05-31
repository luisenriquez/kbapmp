module ApplicationHelper

def full_title(page_title = '')

base_title = "Foss Lawyers"
if page_title.empty?
  base_title
else
page_title + " | " + base_title
end
end

def foot

puts "this is footer" 

end 

end
