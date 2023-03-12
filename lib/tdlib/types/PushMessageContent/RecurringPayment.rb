module TD::Types
  # A new recurrent payment was made by the current user.
  #
  # @attr amount [TD::Types::String] The paid amount.
  class PushMessageContent::RecurringPayment < PushMessageContent
    attribute :amount, TD::Types::String
  end
end
