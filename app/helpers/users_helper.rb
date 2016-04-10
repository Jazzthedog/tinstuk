# The reason why you see 2 user variables (user & @user) it's because we want 
# to be able to use the same method on both the user partial as well as on the profile page.

module UsersHelper
  def name(user)
    if user.name
      case user
        when user
          user.name.partition(' ').first
        when @user
          @user.name.partition(' ').first
      end
    end
  end

  def age(user)
    if user.date_of_birth
      case user
        when user
          age = Date.today.year - user.date_of_birth.year 
          age -= 1 if Date.today < user.date_of_birth + age.years
          return age
        when @user
          age = Date.today.year - @user.date_of_birth.year 
          age -= 1 if Date.today < @user.date_of_birth + age.years
          return age
      end
    end
  end

  def location(user)
    if user.location
      case user
        when user
          user.location.partition(',').first
        when @user
          @user.location.partition(',').first
      end
    end
  end

end
