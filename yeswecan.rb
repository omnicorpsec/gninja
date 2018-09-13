class MailerDemon

  def demonCast
    puts "you can only go forward, enter the name by which you will be known...(email to be spoofed): "
    f = gets.chomp

    puts "you CAN ONLY GO FORWARD, enter the TARGET to which you shall be known as #{f}, whats the TARGET?: "
    t = gets.chomp

    puts "carefully, very carefully enter the Title of this Demon Cast"
    u = gets.chomp

    puts "Now, create the meat of this Demon Cast from the very ether!!! FILL THE BODY OF THE MESSAGE!!!:"
    m = gets.chomp
    puts "now put it like this >>>>>>>smtpServerInfo:PORT<<<<<<< Do not fuck this up:"
    s = gets.chomp
    #then edit out the local variable calls for xu and xp.  
    puts "next come the logins for whatever smtp server you are using so first USERNAME:"
    xu = gets.chomp

    puts "PASSWORD:"
    xp = gets.chomp

    puts "We Have a MailerDemon DemonCast!!"
    puts "we are sending an email from #{f} to #{t} with a title saying #{u} a message saying #{m} from #{s} with the creds #{xu} and #{xp}, if that doesn't sound right...too bad.  This is Demon Casting "
    system "sendemail -f #{f} -t #{t} -u #{u} -m #{m} -s #{s} -xu #{xu} -xp #{xp}"
  end
end
