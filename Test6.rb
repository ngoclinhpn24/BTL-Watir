require 'watir'
require 'webdrivers'
require 'faker'
require 'roo'
require 'colorize'

# Initialize the Browser
browser = Watir::Browser.new

# Navigate to Page
browser.goto 'file:///F:/courses/2021-2022%20I/Software%20Testing%20and%20Quality%20Assurance/Watir/btl/register/Lab03.html'

#Set Value
browser.text_field(id: 'hoten').set 'La Thị Châu'
browser.text_field(id: 'diachi').set 'Hà Nội'
browser.radio(id: 'nu').click
browser.text_field(id: 'ngaysinh').set '17/05/2005'
browser.text_field(id: 'email').set '123@gmail.com'
browser.text_field(id: 'codinh').set '0101010101'
browser.checkbox(id: 'quantri').click
browser.text_field(id: 'username').set 'Chau'
browser.text_field(id: 'pass').set '123'
browser.text_field(id: 'repass').set '123'


#Click Accept
browser.button(id: 'Accept').click

str = browser.span(id: 'reply').text
Expected = "Đăng ký thành công"
puts "Test 6: Điền đầy đủ"

if str == Expected
    puts "-Pass".green
    puts "  Expected output: #{Expected}".green
    puts "  Actual output: #{str}".green
    browser.screenshot.save "img/Test6Pass.png"
else
    puts "-Fail".red
    puts "  Expected output: #{Expected}".red
    puts "  Actual output: #{str}".red
    browser.screenshot.save "img/Test6Fail.png"
end

browser.close()
