class CinCreationService
  attr_reader :user, :params
  def initialize(user, params)
    @params = params
    @user = user
  end

  def call
    if params[:cin][:number].gsub(/ +/, '').length != 21
      return "Invalid Cin", nil
    else
      cin = Cin.where(number: params[:cin][:number]).first_or_create
      if user
        user.histories.create(cin_id: cin.id)
      end
      if cin.save
        return "", cin.id
      else
        return "Invalid Cin", nil
      end
    end
  end
end
