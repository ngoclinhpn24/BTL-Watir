require 'watir'
require 'webdrivers'
require 'faker'
require 'roo'
require 'colorize'
require 'fileutils'

FileUtils.rm_rf('directorypath/name')

# Initialize the Browser
#Watir.default_timeout = 60
browser = Watir::Browser.new

# Navigate to Page
browser.goto 'file:///F:/courses/2021-2022%20I/Software%20Testing%20and%20Quality%20Assurance/Watir/btl/register/Lab03.html'

#Set value
browser.text_field(id: 'hoten').set 'La Thị Châu'

#Click Accept
browser.button(id: 'Accept').click


str = browser.span(id: 'reply').text
Expected = "Đăng ký thất bại"

puts "===="
puts "Test 2: Chỉ điền họ và tên"
if str == Expected
    puts "-Pass".green
    puts "  Expected output: #{Expected}".green
    puts "  Actual output: #{str}".green
    browser.screenshot.save "img/Test2Pass.png"
else
    puts "-Fail".red
    puts "  Expected output: #{Expected}".red
    puts "  Actual output: #{str}".red
    browser.screenshot.save "img/Test2Fail.png"
end

browser.close()