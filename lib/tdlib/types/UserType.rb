module TD::Types
  # Represents the type of a user.
  # The following types are possible: regular users, deleted users and bots.
  class UserType < Base
    %w[
      Regular
      Deleted
      Bot
      Unknown
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/UserType/#{type}"
    end
  end
end
