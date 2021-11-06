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
browser.text_field(id: 'pass').set '123@123a'
browser.text_field(id: 'repass').set '123123a'

#Click Accept
browser.button(id: 'Accept').click

str = browser.span(id: 'loi_pass').text
Expected = "Mật khẩu không trùng nhau"
puts "===="
puts "Test 5: Nhập sai mật khẩu lúc nhập lại"
if str == Expected
    puts "-Pass".green
    puts "  Expected output: #{Expected}".green
    puts "  Actual output: #{str}".green
    browser.screenshot.save "img/Test5Pass.png"
else
    puts "-Fail".red
    puts "  Expected output: #{Expected}".red
    puts "  Actual output: #{str}".red
    browser.screenshot.save "img/Test5Pass.png"
end
browser.close()