class SessionsController < ApplicationController

    def new
    end

    def create
    	user = User.find_by(email: params[:session][:email].downcase)
    	if user && user.authenticate(params[:session][:password])
    	    # ユーザをサインインさせ、ユーザページ(show)にリダイレクトする。
    	    sign_in user
    	    redirect_to user
    	else
    		flash.now[:error] = "Invalid email/password combination"
    	    # エラーメッセージを表示し、サインインフォームを再描画する。
            render 'new'
    	end
    end

    def destroy
        sign_out
        redirect_to root_url
    end
end