class SessionsController < ApplicationController
  def callback
    auth = request.env["omniauth.auth"]
    bot = Bot.find_by_provider_and_uid(auth["provider"], auth["uid"]) || Bot.create_with_omniauth(auth)
    session[:user_id] = bot.id
    redirect_to edit_bot_path(bot.id), :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
