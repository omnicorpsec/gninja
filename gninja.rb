require 'readline'
require './casting.rb'
# Prevent Ctrl+C for exiting
trap('INT', 'SIG_IGN')
# List of commands
# and create new Spell Object
spellobj = SpellObj.new
CMDS = [ 'help', 'casting', 'clean', 'merchant_site', 'mersite_clean', 'ls', 'exit' ].sort



completion = 
    proc do |str|
      case 
      when Readline.line_buffer =~ /help.*/i
    puts "Available commands:\n" + "#{CMDS.join("\t")}"

      when Readline.line_buffer =~ /Casting.*/i
    puts "Casting"

      when Readline.line_buffer =~ /clean.*/i
        spellobj.clean

      when Readline.line_buffer =~ /merchant_site.*/i
        require "~/docker-nginx/html/start_clone.rb"
        puts "commence showing off"
        showoff = Dockx.new
        showoff.start

      when Readline.line_buffer =~ /mersite_clean.*/i
        showoff.stop

      when Readline.line_buffer =~ /ls.*/i
    puts `ls`

      when Readline.line_buffer =~ /exit.*/i
    puts 'Exiting..'

    exit 0
      else
    CMDS.grep( /^#{Regexp.escape(str)}/i ) unless str.nil?
      end
    end


Readline.completion_proc = completion        # Set completion process
Readline.completion_append_character = ' '   # Make sure to add a space after complete
while line = Readline.readline('-> ', true)  # Start console with character -> and make add_hist = true
  puts completion.call
  break if line =~ /^quit.*/i or line =~ /^exit.*/i
end
