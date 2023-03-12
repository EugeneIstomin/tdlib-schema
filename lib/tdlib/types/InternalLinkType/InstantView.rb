module TD::Types
  # The link must be opened in an Instant View.
  # Call getWebPageInstantView with the given URL to process the link.
  #
  # @attr url [TD::Types::String] URL to be passed to getWebPageInstantView.
  # @attr fallback_url [TD::Types::String] An URL to open if getWebPageInstantView fails.
  class InternalLinkType::InstantView < InternalLinkType
    attribute :url, TD::Types::String
    attribute :fallback_url, TD::Types::String
  end
end
