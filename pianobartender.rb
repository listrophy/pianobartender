require 'sinatra/base'

class Pianobartender < Sinatra::Base

  def commands
    {
      'love' => '+',
      'ban' => '-',
      'bookmark' => 'b',
      'history' => 'h',
      'info' => 'i',
      'next' => 'n',
      'pause' => 'p',
      'unpause' => 'p',
      'tired' => 't',
      'upcoming' => 'u',
      'voldown' => '(',
      'volup' => ')'
    }
  end

  get '/command/:cmd' do
    cmd = commands[params[:cmd]]
    if cmd
      %x[echo '#{cmd}' > ~/.config/pianobar/ctl]
    end
    'ok'
  end

  get '/' do
    'go away!'
  end

  run! if app_file == $0
end
