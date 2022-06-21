module TD::Types
  # The list of chat filters or a chat filter has changed.
  #
  # @attr chat_filters [Array<TD::Types::ChatFilterInfo>] The new list of chat filters.
  # @attr main_chat_list_position [Integer] Position of the main chat list among chat filters, 0-based.
  class Update::ChatFilters < Update
    attribute :chat_filters, TD::Types::Array.of(TD::Types::ChatFilterInfo)
    attribute :main_chat_list_position, TD::Types::Coercible::Integer
  end
end
