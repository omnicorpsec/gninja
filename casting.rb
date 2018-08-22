#this is a casting
#make this into a class?  maybe two different files or something?
class SpellObj
  system "clear"
  puts "a change in the winds is noticed..."
  
  def summon_kali
    system "docker run -it kalilinux/kali-linux-docker /bin/bash"
  end

#this runs kali as a daemon and or connects
  #
  def whisper_kali
    system "docker run -dit --name kali_base kalilinux/kali-linux-docker /bin/bash"
  end 
#kalibox with metasploit and setoolkit
  def whisper_metaset
    system "docker run -dit --name 'metaset-v0.1' metaset-v0.1:latest /bin/bash"
  end
#kalibox with sendemail and omni-git MAILER DEMON
  def whisper_mailerDemon
    system "docker run -dit --name 'md-v0.2' md-v0.2:latest /bin/bash"
  end

  def grab_kali
    system "docker exec -it $(docker container ls | grep -i kali | awk '{print $NF}') /bin/bash"
  end
  #make sure you .look and know what you're .grab because you need to know....
  def grab
    puts "what specifically would you like to grab?"
    g = gets.chomp
    system "docker exec -it $(docker container ls | grep -i #{g} | awk '{print $NF}') /bin/bash"
  end
  
  def alter_spellobj
    puts "Enter the name the Spell Object will now be called"
    puts "This is not a riddle, literal explaination of variables you need to assign...a message b old name c new name-v123...a, b, c"
    puts "now assign A message"
    a = gets.chomp
    puts "now assign B old name, usually kali_base if you are using this..."
    b = gets.chomp
    puts "now assign C new name and version, convention is name-v1.0"
    c = gets.chomp
    system "docker commit -m #{a} #{b} #{c}"
  end

  #alter_spellobj is perfect but you are flawed, so check with this
  def chether #check + ether
    puts "what would you like to search the ether for? maybe kali_base or metaset-v0.1?"
    c = gets.chomp
    system "docker images | grep -i #{c}"
  end
  def ether_glance
    puts "glance into the ether to check for kali..."
    system "docker images | grep -i kali"
  end
  #once you know what you need create it with D command
  def attach
    puts "enter the name of the altered spell object to which you would like to attach, tos-v1.0"
    d = gets.chomp
    system "docker run -it #{d} /bin/bash"
  end

#this looks at all running containers
  #
  def look
    system "docker container ls"
  end

#this stops and destroys all the containers
  #
  def clean
    system "ruby uncasting.rb"
  end
  #########################
  #  Random Spell Beasts  #
  #########################
end

#FORMAT REMINDER FOR DUMMIES
#bean = SpellObj
#bean.summon_kali/whisperkali
#got it??
#
#making ephemeral shit immortal shit
#
#
