class AccountsController < ApplicationController

  before_action :set_account, only: [:show, :edit, :update, :destroy]

  def index
    @accounts = Account.all.order(age: :asc)
  end


  def show
  end


  def new
    @account = Account.new
  end

  def edit
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      flash[:success] = "Account #{@account.name} created!!!"
      redirect_to accounts_path
      AccountMailer.welcome_email(@account).deliver_later
    else
      render 'new'
    end
  end

  def update
    if @account.update(account_params)
      flash[:info] = "Account #{@account.name} updated!!!"
      redirect_to accounts_path
    else
      render 'new'
    end
  end

  def destroy
    @account.destroy
    flash[:danger] = "Account #{@account.name} deleted!"
    redirect_to accounts_path
  end

  private

    def set_account
      @account = Account.find(params[:id])
    end

    def account_params
      params.require(:account).permit(:name, :age)
    end
    
end
