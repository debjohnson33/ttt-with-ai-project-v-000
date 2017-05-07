
#!/usr/bin/env ruby
#setup console to test in IRB
require 'irb'
require "irb/completion" #easy tab completion
require 'require_all'
require_relative '../config/environment'
require_all 'bin'

def reload!
  load './config/environment.rb'
  load './lib/board.rb'
  load './lib/game.rb'
  load './lib/player.rb'
  load './lib/players/computer.rb'
  load './lib/players/human.rb'
end

 puts "...loading your environment"
IRB.start