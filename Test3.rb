require 'watir'
require 'webdrivers'
require 'faker'
require 'roo'
require 'colorize'

# Initialize the Browser
#Watir.default_timeout = 60
browser = Watir::Browser.new

# Navigate to Page
browser.goto 'file:///F:/courses/2021-2022%20I/Software%20Testing%20and%20Quality%20Assurance/Watir/btl/register/Lab03.html'

#Set Value
browser.text_field(id: 'ngaysinh').set 'Hà Nội'

#Click Accept
browser.button(id: 'Accept').click

str = browser.span(id: 'loi_ngaysinh').text
Expected = "Ngày sinh không đúng định dạng"

puts "===="
puts "Test 3: Nhập sai định dạng ngày tháng"
if str == Expected
    puts "-Pass".green
    puts "  Expected output: #{Expected}".green
    puts "  Actual output: #{str}".green
    browser.screenshot.save "img/Test3Pass.png"
else
    puts "-Fail".red
    puts "  Expected output: #{Expected}".red
    puts "  Actual output: #{str}".red
    browser.screenshot.save "img/Test3Fail.png"
end

browser.close()