module UsersHelper
    def rounded_age(user)
        Time.current.year - user.birth.year
    end
end