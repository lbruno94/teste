class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(matricula: params[:session][:matricula])
    if user && user.authenticate(params[:session][:senha])
      #Login realizado com sucesso
      flash[:success] = "Entrou"
      log_in user
      redirect_to user
    else
      #Criar mensagem de erro
      flash.now[:danger] = 'Combinação inválida de ID/Senha!'
      render 'new'
    end

  end

  def destroy
    log_out
    redirect_to root_url
  end

end
