module TD::Types
  # Represents result of 2-step verification password reset.
  class ResetPasswordResult < Base
    %w[
      Ok
      Pending
      Declined
    ].each do |type|
      autoload TD::Types.type, "tdlib/types/ResetPasswordResult/#{type}"
    end
  end
end
