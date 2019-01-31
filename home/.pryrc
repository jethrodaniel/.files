# Hit Enter to repeat last command
Pry::Commands.command /^$/, 'repeat last command' do
  _pry_.run_command Pry.history.to_a.last
end

# Save history
Pry.config.history.file = '~/.config/pry_history'
