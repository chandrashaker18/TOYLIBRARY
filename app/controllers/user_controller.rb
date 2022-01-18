def login
    @user=User.new
  end

  def signup
    @user=User.new
  end

  def new
    @user= User.new
  end
  
  def create
    puts "hii"
    @user= User.new(user_params)
    if @user.save
      session[:user_id]= @user.id
      redirect_to :action => "login", notice: "Successfully crated account"
    else
      render :action => "signup"
    end
  end
  def verify
    user=User.find_by_email(params[:email])
    puts "hii"
  if user && user.authenticate(params[:password])
  session[:user_id]=user.id 
  puts user.id
  redirect_to root_url, notice: "Successfully Logged In"
  else
  flash.now[:alert]="Invalid Email or password given"
  render "login"
  end
  end
  private
   
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end