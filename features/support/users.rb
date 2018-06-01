require 'date'
module Users
    def Users.user_with_invalid_credentials
        @user_with_invalid_credentials ||= User.new(args = {})
        @user_with_invalid_credentials
    end

    def Users.valid_user
        @valid_user ||= User.new(args = {email: 'eugene.muran@testdevlab.com', password: 'myCoolPassword'})
        @valid_user
    end
    
    class User
        attr_reader :email, :password, :repPasswordDiff, :projectName
        def initialize(args = {})
            defaults = {email: DateTime.now.strftime('%Q')+'@test.com', password: DateTime.now.strftime('%Q'), repPasswordDiff: DateTime.now.strftime('%Q') , projectName: DateTime.now}
            args = defaults.merge(args)
            @email = args[:email]
            @password = args[:password]
            @repPasswordDiff = args[:repPasswordDiff]
            @projectName = args[:projectName]
        end
    end
end
