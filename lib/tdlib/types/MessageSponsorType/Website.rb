module TD::Types
  # The sponsor is a website.
  #
  # @attr url [TD::Types::String] URL of the website.
  # @attr name [TD::Types::String] Name of the website.
  class MessageSponsorType::Website < MessageSponsorType
    attribute :url, TD::Types::String
    attribute :name, TD::Types::String
  end
end
