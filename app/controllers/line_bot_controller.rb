class LineBotController < ApplicationController
    protect_from_forgery except:[:callback]

    def callback
    end

    private

    def client
        @client ||= Line::Bot::Client.new{ |config|
            config.channel_secret = ENV["LINE_CHANELL_SECRET"]
            config.channel_token = ENV["LINE_CHANELL_TOKEN"]
        }
    end
end
