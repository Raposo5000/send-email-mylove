require 'net/smtp'

email = ""
password = ""
receiver = ""
msg = "TE AMO"

smtp = Net::SMTP.new 'smtp.gmail.com', 587
smtp.enable_starttls

while(true)
  smtp.start('smtp.gmail.com', email, password, :login) do
    smtp.send_message(msg, email, receiver)
  end
  puts "email enviado!"
  sleep 10*60
end