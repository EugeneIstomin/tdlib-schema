module TD::Types
  # Describes a block of an instant view web page.
  class PageBlock < Base
    %w[
      Title
      Subtitle
      AuthorDate
      Header
      Subheader
      Kicker
      Paragraph
      Preformatted
      Footer
      Divider
      Anchor
      List
      BlockQuote
      PullQuote
      Animation
      Audio
      Photo
      Video
      VoiceNote
      Cover
      Embedded
      EmbeddedPost
      Collage
      Slideshow
      ChatLink
      Table
      Details
      RelatedArticles
      Map
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/PageBlock/#{type}"
    end
  end
end
