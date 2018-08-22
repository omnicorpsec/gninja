#this is an uncasting
class Uncasting

  def stop_casting
    system "docker stop $(docker ps -a -q)"
    puts "the casting has stopped"
  end
  def remove_casting
    system "docker rm $(docker ps -a -q)"
    puts "the casting has been removed"
  end
end

uncast = Uncasting.new
uncast.stop_casting
uncast.remove_casting
