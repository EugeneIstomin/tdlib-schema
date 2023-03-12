module TD::Types
  # The list of bots added to attachment menu has changed.
  #
  # @attr bots [Array<TD::Types::AttachmentMenuBot>] The new list of bots added to attachment menu.
  #   The bots must not be shown on scheduled messages screen.
  class Update::AttachmentMenuBots < Update
    attribute :bots, TD::Types::Array.of(TD::Types::AttachmentMenuBot)
  end
end
