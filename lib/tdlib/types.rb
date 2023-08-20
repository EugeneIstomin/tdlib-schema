require 'dry-struct'
require 'dry-types'

module TD::Types
  include Dry.Types()
  
  LOOKUP_TABLE = {
      'error'                                                   => 'Error',
      'ok'                                                      => 'Ok',
      'AuthenticationCodeType'                                  => 'AuthenticationCodeType',
      'authenticationCodeTypeTelegramMessage'                   => 'AuthenticationCodeType::TelegramMessage',
      'authenticationCodeTypeSms'                               => 'AuthenticationCodeType::Sms',
      'authenticationCodeTypeCall'                              => 'AuthenticationCodeType::Call',
      'authenticationCodeTypeFlashCall'                         => 'AuthenticationCodeType::FlashCall',
      'authenticationCodeTypeMissedCall'                        => 'AuthenticationCodeType::MissedCall',
      'authenticationCodeTypeFragment'                          => 'AuthenticationCodeType::Fragment',
      'authenticationCodeTypeFirebaseAndroid'                   => 'AuthenticationCodeType::FirebaseAndroid',
      'authenticationCodeTypeFirebaseIos'                       => 'AuthenticationCodeType::FirebaseIos',
      'authenticationCodeInfo'                                  => 'AuthenticationCodeInfo',
      'emailAddressAuthenticationCodeInfo'                      => 'EmailAddressAuthenticationCodeInfo',
      'EmailAddressAuthentication'                              => 'EmailAddressAuthentication',
      'emailAddressAuthenticationCode'                          => 'EmailAddressAuthentication::Code',
      'emailAddressAuthenticationAppleId'                       => 'EmailAddressAuthentication::AppleId',
      'emailAddressAuthenticationGoogleId'                      => 'EmailAddressAuthentication::GoogleId',
      'EmailAddressResetState'                                  => 'EmailAddressResetState',
      'emailAddressResetStateAvailable'                         => 'EmailAddressResetState::Available',
      'emailAddressResetStatePending'                           => 'EmailAddressResetState::Pending',
      'textEntity'                                              => 'TextEntity',
      'textEntities'                                            => 'TextEntities',
      'formattedText'                                           => 'FormattedText',
      'termsOfService'                                          => 'TermsOfService',
      'AuthorizationState'                                      => 'AuthorizationState',
      'authorizationStateWaitTdlibParameters'                   => 'AuthorizationState::WaitTdlibParameters',
      'authorizationStateWaitPhoneNumber'                       => 'AuthorizationState::WaitPhoneNumber',
      'authorizationStateWaitEmailAddress'                      => 'AuthorizationState::WaitEmailAddress',
      'authorizationStateWaitEmailCode'                         => 'AuthorizationState::WaitEmailCode',
      'authorizationStateWaitCode'                              => 'AuthorizationState::WaitCode',
      'authorizationStateWaitOtherDeviceConfirmation'           => 'AuthorizationState::WaitOtherDeviceConfirmation',
      'authorizationStateWaitRegistration'                      => 'AuthorizationState::WaitRegistration',
      'authorizationStateWaitPassword'                          => 'AuthorizationState::WaitPassword',
      'authorizationStateReady'                                 => 'AuthorizationState::Ready',
      'authorizationStateLoggingOut'                            => 'AuthorizationState::LoggingOut',
      'authorizationStateClosing'                               => 'AuthorizationState::Closing',
      'authorizationStateClosed'                                => 'AuthorizationState::Closed',
      'passwordState'                                           => 'PasswordState',
      'recoveryEmailAddress'                                    => 'RecoveryEmailAddress',
      'temporaryPasswordState'                                  => 'TemporaryPasswordState',
      'localFile'                                               => 'LocalFile',
      'remoteFile'                                              => 'RemoteFile',
      'file'                                                    => 'File',
      'InputFile'                                               => 'InputFile',
      'inputFileId'                                             => 'InputFile::Id',
      'inputFileRemote'                                         => 'InputFile::Remote',
      'inputFileLocal'                                          => 'InputFile::Local',
      'inputFileGenerated'                                      => 'InputFile::Generated',
      'photoSize'                                               => 'PhotoSize',
      'minithumbnail'                                           => 'Minithumbnail',
      'ThumbnailFormat'                                         => 'ThumbnailFormat',
      'thumbnailFormatJpeg'                                     => 'ThumbnailFormat::Jpeg',
      'thumbnailFormatGif'                                      => 'ThumbnailFormat::Gif',
      'thumbnailFormatMpeg4'                                    => 'ThumbnailFormat::Mpeg4',
      'thumbnailFormatPng'                                      => 'ThumbnailFormat::Png',
      'thumbnailFormatTgs'                                      => 'ThumbnailFormat::Tgs',
      'thumbnailFormatWebm'                                     => 'ThumbnailFormat::Webm',
      'thumbnailFormatWebp'                                     => 'ThumbnailFormat::Webp',
      'thumbnail'                                               => 'Thumbnail',
      'MaskPoint'                                               => 'MaskPoint',
      'maskPointForehead'                                       => 'MaskPoint::Forehead',
      'maskPointEyes'                                           => 'MaskPoint::Eyes',
      'maskPointMouth'                                          => 'MaskPoint::Mouth',
      'maskPointChin'                                           => 'MaskPoint::Chin',
      'maskPosition'                                            => 'MaskPosition',
      'StickerFormat'                                           => 'StickerFormat',
      'stickerFormatWebp'                                       => 'StickerFormat::Webp',
      'stickerFormatTgs'                                        => 'StickerFormat::Tgs',
      'stickerFormatWebm'                                       => 'StickerFormat::Webm',
      'StickerType'                                             => 'StickerType',
      'stickerTypeRegular'                                      => 'StickerType::Regular',
      'stickerTypeMask'                                         => 'StickerType::Mask',
      'stickerTypeCustomEmoji'                                  => 'StickerType::CustomEmoji',
      'StickerFullType'                                         => 'StickerFullType',
      'stickerFullTypeRegular'                                  => 'StickerFullType::Regular',
      'stickerFullTypeMask'                                     => 'StickerFullType::Mask',
      'stickerFullTypeCustomEmoji'                              => 'StickerFullType::CustomEmoji',
      'closedVectorPath'                                        => 'ClosedVectorPath',
      'pollOption'                                              => 'PollOption',
      'PollType'                                                => 'PollType',
      'pollTypeRegular'                                         => 'PollType::Regular',
      'pollTypeQuiz'                                            => 'PollType::Quiz',
      'animation'                                               => 'Animation',
      'audio'                                                   => 'Audio',
      'document'                                                => 'Document',
      'photo'                                                   => 'Photo',
      'sticker'                                                 => 'Sticker',
      'video'                                                   => 'Video',
      'videoNote'                                               => 'VideoNote',
      'voiceNote'                                               => 'VoiceNote',
      'animatedEmoji'                                           => 'AnimatedEmoji',
      'contact'                                                 => 'Contact',
      'location'                                                => 'Location',
      'venue'                                                   => 'Venue',
      'game'                                                    => 'Game',
      'webApp'                                                  => 'WebApp',
      'poll'                                                    => 'Poll',
      'background'                                              => 'Background',
      'backgrounds'                                             => 'Backgrounds',
      'chatBackground'                                          => 'ChatBackground',
      'profilePhoto'                                            => 'ProfilePhoto',
      'chatPhotoInfo'                                           => 'ChatPhotoInfo',
      'UserType'                                                => 'UserType',
      'userTypeRegular'                                         => 'UserType::Regular',
      'userTypeDeleted'                                         => 'UserType::Deleted',
      'userTypeBot'                                             => 'UserType::Bot',
      'userTypeUnknown'                                         => 'UserType::Unknown',
      'botCommand'                                              => 'BotCommand',
      'botCommands'                                             => 'BotCommands',
      'botMenuButton'                                           => 'BotMenuButton',
      'chatLocation'                                            => 'ChatLocation',
      'ChatPhotoStickerType'                                    => 'ChatPhotoStickerType',
      'chatPhotoStickerTypeRegularOrMask'                       => 'ChatPhotoStickerType::RegularOrMask',
      'chatPhotoStickerTypeCustomEmoji'                         => 'ChatPhotoStickerType::CustomEmoji',
      'chatPhotoSticker'                                        => 'ChatPhotoSticker',
      'animatedChatPhoto'                                       => 'AnimatedChatPhoto',
      'chatPhoto'                                               => 'ChatPhoto',
      'chatPhotos'                                              => 'ChatPhotos',
      'InputChatPhoto'                                          => 'InputChatPhoto',
      'inputChatPhotoPrevious'                                  => 'InputChatPhoto::Previous',
      'inputChatPhotoStatic'                                    => 'InputChatPhoto::Static',
      'inputChatPhotoAnimation'                                 => 'InputChatPhoto::Animation',
      'inputChatPhotoSticker'                                   => 'InputChatPhoto::Sticker',
      'chatPermissions'                                         => 'ChatPermissions',
      'chatAdministratorRights'                                 => 'ChatAdministratorRights',
      'premiumPaymentOption'                                    => 'PremiumPaymentOption',
      'premiumStatePaymentOption'                               => 'PremiumStatePaymentOption',
      'emojiStatus'                                             => 'EmojiStatus',
      'emojiStatuses'                                           => 'EmojiStatuses',
      'usernames'                                               => 'Usernames',
      'user'                                                    => 'User',
      'botInfo'                                                 => 'BotInfo',
      'userFullInfo'                                            => 'UserFullInfo',
      'users'                                                   => 'Users',
      'chatAdministrator'                                       => 'ChatAdministrator',
      'chatAdministrators'                                      => 'ChatAdministrators',
      'ChatMemberStatus'                                        => 'ChatMemberStatus',
      'chatMemberStatusCreator'                                 => 'ChatMemberStatus::Creator',
      'chatMemberStatusAdministrator'                           => 'ChatMemberStatus::Administrator',
      'chatMemberStatusMember'                                  => 'ChatMemberStatus::Member',
      'chatMemberStatusRestricted'                              => 'ChatMemberStatus::Restricted',
      'chatMemberStatusLeft'                                    => 'ChatMemberStatus::Left',
      'chatMemberStatusBanned'                                  => 'ChatMemberStatus::Banned',
      'chatMember'                                              => 'ChatMember',
      'chatMembers'                                             => 'ChatMembers',
      'ChatMembersFilter'                                       => 'ChatMembersFilter',
      'chatMembersFilterContacts'                               => 'ChatMembersFilter::Contacts',
      'chatMembersFilterAdministrators'                         => 'ChatMembersFilter::Administrators',
      'chatMembersFilterMembers'                                => 'ChatMembersFilter::Members',
      'chatMembersFilterMention'                                => 'ChatMembersFilter::Mention',
      'chatMembersFilterRestricted'                             => 'ChatMembersFilter::Restricted',
      'chatMembersFilterBanned'                                 => 'ChatMembersFilter::Banned',
      'chatMembersFilterBots'                                   => 'ChatMembersFilter::Bots',
      'SupergroupMembersFilter'                                 => 'SupergroupMembersFilter',
      'supergroupMembersFilterRecent'                           => 'SupergroupMembersFilter::Recent',
      'supergroupMembersFilterContacts'                         => 'SupergroupMembersFilter::Contacts',
      'supergroupMembersFilterAdministrators'                   => 'SupergroupMembersFilter::Administrators',
      'supergroupMembersFilterSearch'                           => 'SupergroupMembersFilter::Search',
      'supergroupMembersFilterRestricted'                       => 'SupergroupMembersFilter::Restricted',
      'supergroupMembersFilterBanned'                           => 'SupergroupMembersFilter::Banned',
      'supergroupMembersFilterMention'                          => 'SupergroupMembersFilter::Mention',
      'supergroupMembersFilterBots'                             => 'SupergroupMembersFilter::Bots',
      'chatInviteLink'                                          => 'ChatInviteLink',
      'chatInviteLinks'                                         => 'ChatInviteLinks',
      'chatInviteLinkCount'                                     => 'ChatInviteLinkCount',
      'chatInviteLinkCounts'                                    => 'ChatInviteLinkCounts',
      'chatInviteLinkMember'                                    => 'ChatInviteLinkMember',
      'chatInviteLinkMembers'                                   => 'ChatInviteLinkMembers',
      'chatInviteLinkInfo'                                      => 'ChatInviteLinkInfo',
      'chatJoinRequest'                                         => 'ChatJoinRequest',
      'chatJoinRequests'                                        => 'ChatJoinRequests',
      'chatJoinRequestsInfo'                                    => 'ChatJoinRequestsInfo',
      'basicGroup'                                              => 'BasicGroup',
      'basicGroupFullInfo'                                      => 'BasicGroupFullInfo',
      'supergroup'                                              => 'Supergroup',
      'supergroupFullInfo'                                      => 'SupergroupFullInfo',
      'SecretChatState'                                         => 'SecretChatState',
      'secretChatStatePending'                                  => 'SecretChatState::Pending',
      'secretChatStateReady'                                    => 'SecretChatState::Ready',
      'secretChatStateClosed'                                   => 'SecretChatState::Closed',
      'secretChat'                                              => 'SecretChat',
      'MessageSender'                                           => 'MessageSender',
      'messageSenderUser'                                       => 'MessageSender::User',
      'messageSenderChat'                                       => 'MessageSender::Chat',
      'messageSenders'                                          => 'MessageSenders',
      'chatMessageSender'                                       => 'ChatMessageSender',
      'chatMessageSenders'                                      => 'ChatMessageSenders',
      'messageViewer'                                           => 'MessageViewer',
      'messageViewers'                                          => 'MessageViewers',
      'MessageForwardOrigin'                                    => 'MessageForwardOrigin',
      'messageForwardOriginUser'                                => 'MessageForwardOrigin::User',
      'messageForwardOriginChat'                                => 'MessageForwardOrigin::Chat',
      'messageForwardOriginHiddenUser'                          => 'MessageForwardOrigin::HiddenUser',
      'messageForwardOriginChannel'                             => 'MessageForwardOrigin::Channel',
      'messageForwardOriginMessageImport'                       => 'MessageForwardOrigin::MessageImport',
      'ReactionType'                                            => 'ReactionType',
      'reactionTypeEmoji'                                       => 'ReactionType::Emoji',
      'reactionTypeCustomEmoji'                                 => 'ReactionType::CustomEmoji',
      'messageForwardInfo'                                      => 'MessageForwardInfo',
      'messageReplyInfo'                                        => 'MessageReplyInfo',
      'messageReaction'                                         => 'MessageReaction',
      'messageInteractionInfo'                                  => 'MessageInteractionInfo',
      'unreadReaction'                                          => 'UnreadReaction',
      'MessageSendingState'                                     => 'MessageSendingState',
      'messageSendingStatePending'                              => 'MessageSendingState::Pending',
      'messageSendingStateFailed'                               => 'MessageSendingState::Failed',
      'MessageReplyTo'                                          => 'MessageReplyTo',
      'messageReplyToMessage'                                   => 'MessageReplyTo::Message',
      'messageReplyToStory'                                     => 'MessageReplyTo::Story',
      'message'                                                 => 'Message',
      'messages'                                                => 'Messages',
      'foundMessages'                                           => 'FoundMessages',
      'foundChatMessages'                                       => 'FoundChatMessages',
      'messagePosition'                                         => 'MessagePosition',
      'messagePositions'                                        => 'MessagePositions',
      'messageCalendarDay'                                      => 'MessageCalendarDay',
      'messageCalendar'                                         => 'MessageCalendar',
      'MessageSource'                                           => 'MessageSource',
      'messageSourceChatHistory'                                => 'MessageSource::ChatHistory',
      'messageSourceMessageThreadHistory'                       => 'MessageSource::MessageThreadHistory',
      'messageSourceForumTopicHistory'                          => 'MessageSource::ForumTopicHistory',
      'messageSourceHistoryPreview'                             => 'MessageSource::HistoryPreview',
      'messageSourceChatList'                                   => 'MessageSource::ChatList',
      'messageSourceSearch'                                     => 'MessageSource::Search',
      'messageSourceChatEventLog'                               => 'MessageSource::ChatEventLog',
      'messageSourceNotification'                               => 'MessageSource::Notification',
      'messageSourceScreenshot'                                 => 'MessageSource::Screenshot',
      'messageSourceOther'                                      => 'MessageSource::Other',
      'MessageSponsorType'                                      => 'MessageSponsorType',
      'messageSponsorTypeBot'                                   => 'MessageSponsorType::Bot',
      'messageSponsorTypePublicChannel'                         => 'MessageSponsorType::PublicChannel',
      'messageSponsorTypePrivateChannel'                        => 'MessageSponsorType::PrivateChannel',
      'messageSponsorTypeWebsite'                               => 'MessageSponsorType::Website',
      'messageSponsor'                                          => 'MessageSponsor',
      'sponsoredMessage'                                        => 'SponsoredMessage',
      'sponsoredMessages'                                       => 'SponsoredMessages',
      'fileDownload'                                            => 'FileDownload',
      'downloadedFileCounts'                                    => 'DownloadedFileCounts',
      'foundFileDownloads'                                      => 'FoundFileDownloads',
      'NotificationSettingsScope'                               => 'NotificationSettingsScope',
      'notificationSettingsScopePrivateChats'                   => 'NotificationSettingsScope::PrivateChats',
      'notificationSettingsScopeGroupChats'                     => 'NotificationSettingsScope::GroupChats',
      'notificationSettingsScopeChannelChats'                   => 'NotificationSettingsScope::ChannelChats',
      'chatNotificationSettings'                                => 'ChatNotificationSettings',
      'scopeNotificationSettings'                               => 'ScopeNotificationSettings',
      'draftMessage'                                            => 'DraftMessage',
      'ChatType'                                                => 'ChatType',
      'chatTypePrivate'                                         => 'ChatType::Private',
      'chatTypeBasicGroup'                                      => 'ChatType::BasicGroup',
      'chatTypeSupergroup'                                      => 'ChatType::Supergroup',
      'chatTypeSecret'                                          => 'ChatType::Secret',
      'chatFolderIcon'                                          => 'ChatFolderIcon',
      'chatFolder'                                              => 'ChatFolder',
      'chatFolderInfo'                                          => 'ChatFolderInfo',
      'chatFolderInviteLink'                                    => 'ChatFolderInviteLink',
      'chatFolderInviteLinks'                                   => 'ChatFolderInviteLinks',
      'chatFolderInviteLinkInfo'                                => 'ChatFolderInviteLinkInfo',
      'recommendedChatFolder'                                   => 'RecommendedChatFolder',
      'recommendedChatFolders'                                  => 'RecommendedChatFolders',
      'archiveChatListSettings'                                 => 'ArchiveChatListSettings',
      'ChatList'                                                => 'ChatList',
      'chatListMain'                                            => 'ChatList::Main',
      'chatListArchive'                                         => 'ChatList::Archive',
      'chatListFolder'                                          => 'ChatList::Folder',
      'chatLists'                                               => 'ChatLists',
      'ChatSource'                                              => 'ChatSource',
      'chatSourceMtprotoProxy'                                  => 'ChatSource::MtprotoProxy',
      'chatSourcePublicServiceAnnouncement'                     => 'ChatSource::PublicServiceAnnouncement',
      'chatPosition'                                            => 'ChatPosition',
      'ChatAvailableReactions'                                  => 'ChatAvailableReactions',
      'chatAvailableReactionsAll'                               => 'ChatAvailableReactions::All',
      'chatAvailableReactionsSome'                              => 'ChatAvailableReactions::Some',
      'videoChat'                                               => 'VideoChat',
      'chat'                                                    => 'Chat',
      'chats'                                                   => 'Chats',
      'chatNearby'                                              => 'ChatNearby',
      'chatsNearby'                                             => 'ChatsNearby',
      'PublicChatType'                                          => 'PublicChatType',
      'publicChatTypeHasUsername'                               => 'PublicChatType::HasUsername',
      'publicChatTypeIsLocationBased'                           => 'PublicChatType::IsLocationBased',
      'ChatActionBar'                                           => 'ChatActionBar',
      'chatActionBarReportSpam'                                 => 'ChatActionBar::ReportSpam',
      'chatActionBarReportUnrelatedLocation'                    => 'ChatActionBar::ReportUnrelatedLocation',
      'chatActionBarInviteMembers'                              => 'ChatActionBar::InviteMembers',
      'chatActionBarReportAddBlock'                             => 'ChatActionBar::ReportAddBlock',
      'chatActionBarAddContact'                                 => 'ChatActionBar::AddContact',
      'chatActionBarSharePhoneNumber'                           => 'ChatActionBar::SharePhoneNumber',
      'chatActionBarJoinRequest'                                => 'ChatActionBar::JoinRequest',
      'KeyboardButtonType'                                      => 'KeyboardButtonType',
      'keyboardButtonTypeText'                                  => 'KeyboardButtonType::Text',
      'keyboardButtonTypeRequestPhoneNumber'                    => 'KeyboardButtonType::RequestPhoneNumber',
      'keyboardButtonTypeRequestLocation'                       => 'KeyboardButtonType::RequestLocation',
      'keyboardButtonTypeRequestPoll'                           => 'KeyboardButtonType::RequestPoll',
      'keyboardButtonTypeRequestUser'                           => 'KeyboardButtonType::RequestUser',
      'keyboardButtonTypeRequestChat'                           => 'KeyboardButtonType::RequestChat',
      'keyboardButtonTypeWebApp'                                => 'KeyboardButtonType::WebApp',
      'keyboardButton'                                          => 'KeyboardButton',
      'InlineKeyboardButtonType'                                => 'InlineKeyboardButtonType',
      'inlineKeyboardButtonTypeUrl'                             => 'InlineKeyboardButtonType::Url',
      'inlineKeyboardButtonTypeLoginUrl'                        => 'InlineKeyboardButtonType::LoginUrl',
      'inlineKeyboardButtonTypeWebApp'                          => 'InlineKeyboardButtonType::WebApp',
      'inlineKeyboardButtonTypeCallback'                        => 'InlineKeyboardButtonType::Callback',
      'inlineKeyboardButtonTypeCallbackWithPassword'            => 'InlineKeyboardButtonType::CallbackWithPassword',
      'inlineKeyboardButtonTypeCallbackGame'                    => 'InlineKeyboardButtonType::CallbackGame',
      'inlineKeyboardButtonTypeSwitchInline'                    => 'InlineKeyboardButtonType::SwitchInline',
      'inlineKeyboardButtonTypeBuy'                             => 'InlineKeyboardButtonType::Buy',
      'inlineKeyboardButtonTypeUser'                            => 'InlineKeyboardButtonType::User',
      'inlineKeyboardButton'                                    => 'InlineKeyboardButton',
      'ReplyMarkup'                                             => 'ReplyMarkup',
      'replyMarkupRemoveKeyboard'                               => 'ReplyMarkup::RemoveKeyboard',
      'replyMarkupForceReply'                                   => 'ReplyMarkup::ForceReply',
      'replyMarkupShowKeyboard'                                 => 'ReplyMarkup::ShowKeyboard',
      'replyMarkupInlineKeyboard'                               => 'ReplyMarkup::InlineKeyboard',
      'LoginUrlInfo'                                            => 'LoginUrlInfo',
      'loginUrlInfoOpen'                                        => 'LoginUrlInfo::Open',
      'loginUrlInfoRequestConfirmation'                         => 'LoginUrlInfo::RequestConfirmation',
      'foundWebApp'                                             => 'FoundWebApp',
      'webAppInfo'                                              => 'WebAppInfo',
      'messageThreadInfo'                                       => 'MessageThreadInfo',
      'forumTopicIcon'                                          => 'ForumTopicIcon',
      'forumTopicInfo'                                          => 'ForumTopicInfo',
      'forumTopic'                                              => 'ForumTopic',
      'forumTopics'                                             => 'ForumTopics',
      'RichText'                                                => 'RichText',
      'richTextPlain'                                           => 'RichText::Plain',
      'richTextBold'                                            => 'RichText::Bold',
      'richTextItalic'                                          => 'RichText::Italic',
      'richTextUnderline'                                       => 'RichText::Underline',
      'richTextStrikethrough'                                   => 'RichText::Strikethrough',
      'richTextFixed'                                           => 'RichText::Fixed',
      'richTextUrl'                                             => 'RichText::Url',
      'richTextEmailAddress'                                    => 'RichText::EmailAddress',
      'richTextSubscript'                                       => 'RichText::Subscript',
      'richTextSuperscript'                                     => 'RichText::Superscript',
      'richTextMarked'                                          => 'RichText::Marked',
      'richTextPhoneNumber'                                     => 'RichText::PhoneNumber',
      'richTextIcon'                                            => 'RichText::Icon',
      'richTextReference'                                       => 'RichText::Reference',
      'richTextAnchor'                                          => 'RichText::Anchor',
      'richTextAnchorLink'                                      => 'RichText::AnchorLink',
      'richTexts'                                               => 'RichText::s',
      'pageBlockCaption'                                        => 'PageBlockCaption',
      'pageBlockListItem'                                       => 'PageBlockListItem',
      'PageBlockHorizontalAlignment'                            => 'PageBlockHorizontalAlignment',
      'pageBlockHorizontalAlignmentLeft'                        => 'PageBlockHorizontalAlignment::Left',
      'pageBlockHorizontalAlignmentCenter'                      => 'PageBlockHorizontalAlignment::Center',
      'pageBlockHorizontalAlignmentRight'                       => 'PageBlockHorizontalAlignment::Right',
      'PageBlockVerticalAlignment'                              => 'PageBlockVerticalAlignment',
      'pageBlockVerticalAlignmentTop'                           => 'PageBlockVerticalAlignment::Top',
      'pageBlockVerticalAlignmentMiddle'                        => 'PageBlockVerticalAlignment::Middle',
      'pageBlockVerticalAlignmentBottom'                        => 'PageBlockVerticalAlignment::Bottom',
      'pageBlockTableCell'                                      => 'PageBlockTableCell',
      'pageBlockRelatedArticle'                                 => 'PageBlockRelatedArticle',
      'PageBlock'                                               => 'PageBlock',
      'pageBlockTitle'                                          => 'PageBlock::Title',
      'pageBlockSubtitle'                                       => 'PageBlock::Subtitle',
      'pageBlockAuthorDate'                                     => 'PageBlock::AuthorDate',
      'pageBlockHeader'                                         => 'PageBlock::Header',
      'pageBlockSubheader'                                      => 'PageBlock::Subheader',
      'pageBlockKicker'                                         => 'PageBlock::Kicker',
      'pageBlockParagraph'                                      => 'PageBlock::Paragraph',
      'pageBlockPreformatted'                                   => 'PageBlock::Preformatted',
      'pageBlockFooter'                                         => 'PageBlock::Footer',
      'pageBlockDivider'                                        => 'PageBlock::Divider',
      'pageBlockAnchor'                                         => 'PageBlock::Anchor',
      'pageBlockList'                                           => 'PageBlock::List',
      'pageBlockBlockQuote'                                     => 'PageBlock::BlockQuote',
      'pageBlockPullQuote'                                      => 'PageBlock::PullQuote',
      'pageBlockAnimation'                                      => 'PageBlock::Animation',
      'pageBlockAudio'                                          => 'PageBlock::Audio',
      'pageBlockPhoto'                                          => 'PageBlock::Photo',
      'pageBlockVideo'                                          => 'PageBlock::Video',
      'pageBlockVoiceNote'                                      => 'PageBlock::VoiceNote',
      'pageBlockCover'                                          => 'PageBlock::Cover',
      'pageBlockEmbedded'                                       => 'PageBlock::Embedded',
      'pageBlockEmbeddedPost'                                   => 'PageBlock::EmbeddedPost',
      'pageBlockCollage'                                        => 'PageBlock::Collage',
      'pageBlockSlideshow'                                      => 'PageBlock::Slideshow',
      'pageBlockChatLink'                                       => 'PageBlock::ChatLink',
      'pageBlockTable'                                          => 'PageBlock::Table',
      'pageBlockDetails'                                        => 'PageBlock::Details',
      'pageBlockRelatedArticles'                                => 'PageBlock::RelatedArticles',
      'pageBlockMap'                                            => 'PageBlock::Map',
      'webPageInstantView'                                      => 'WebPageInstantView',
      'webPage'                                                 => 'WebPage',
      'countryInfo'                                             => 'CountryInfo',
      'countries'                                               => 'Countries',
      'phoneNumberInfo'                                         => 'PhoneNumberInfo',
      'bankCardActionOpenUrl'                                   => 'BankCardActionOpenUrl',
      'bankCardInfo'                                            => 'BankCardInfo',
      'address'                                                 => 'Address',
      'themeParameters'                                         => 'ThemeParameters',
      'labeledPricePart'                                        => 'LabeledPricePart',
      'invoice'                                                 => 'Invoice',
      'orderInfo'                                               => 'OrderInfo',
      'shippingOption'                                          => 'ShippingOption',
      'savedCredentials'                                        => 'SavedCredentials',
      'InputCredentials'                                        => 'InputCredentials',
      'inputCredentialsSaved'                                   => 'InputCredentials::Saved',
      'inputCredentialsNew'                                     => 'InputCredentials::New',
      'inputCredentialsApplePay'                                => 'InputCredentials::ApplePay',
      'inputCredentialsGooglePay'                               => 'InputCredentials::GooglePay',
      'PaymentProvider'                                         => 'PaymentProvider',
      'paymentProviderSmartGlocal'                              => 'PaymentProvider::SmartGlocal',
      'paymentProviderStripe'                                   => 'PaymentProvider::Stripe',
      'paymentProviderOther'                                    => 'PaymentProvider::Other',
      'paymentOption'                                           => 'PaymentOption',
      'paymentForm'                                             => 'PaymentForm',
      'validatedOrderInfo'                                      => 'ValidatedOrderInfo',
      'paymentResult'                                           => 'PaymentResult',
      'paymentReceipt'                                          => 'PaymentReceipt',
      'InputInvoice'                                            => 'InputInvoice',
      'inputInvoiceMessage'                                     => 'InputInvoice::Message',
      'inputInvoiceName'                                        => 'InputInvoice::Name',
      'MessageExtendedMedia'                                    => 'MessageExtendedMedia',
      'messageExtendedMediaPreview'                             => 'MessageExtendedMedia::Preview',
      'messageExtendedMediaPhoto'                               => 'MessageExtendedMedia::Photo',
      'messageExtendedMediaVideo'                               => 'MessageExtendedMedia::Video',
      'messageExtendedMediaUnsupported'                         => 'MessageExtendedMedia::Unsupported',
      'datedFile'                                               => 'DatedFile',
      'PassportElementType'                                     => 'PassportElementType',
      'passportElementTypePersonalDetails'                      => 'PassportElementType::PersonalDetails',
      'passportElementTypePassport'                             => 'PassportElementType::Passport',
      'passportElementTypeDriverLicense'                        => 'PassportElementType::DriverLicense',
      'passportElementTypeIdentityCard'                         => 'PassportElementType::IdentityCard',
      'passportElementTypeInternalPassport'                     => 'PassportElementType::InternalPassport',
      'passportElementTypeAddress'                              => 'PassportElementType::Address',
      'passportElementTypeUtilityBill'                          => 'PassportElementType::UtilityBill',
      'passportElementTypeBankStatement'                        => 'PassportElementType::BankStatement',
      'passportElementTypeRentalAgreement'                      => 'PassportElementType::RentalAgreement',
      'passportElementTypePassportRegistration'                 => 'PassportElementType::PassportRegistration',
      'passportElementTypeTemporaryRegistration'                => 'PassportElementType::TemporaryRegistration',
      'passportElementTypePhoneNumber'                          => 'PassportElementType::PhoneNumber',
      'passportElementTypeEmailAddress'                         => 'PassportElementType::EmailAddress',
      'date'                                                    => 'Date',
      'personalDetails'                                         => 'PersonalDetails',
      'identityDocument'                                        => 'IdentityDocument',
      'inputIdentityDocument'                                   => 'InputIdentityDocument',
      'personalDocument'                                        => 'PersonalDocument',
      'inputPersonalDocument'                                   => 'InputPersonalDocument',
      'PassportElement'                                         => 'PassportElement',
      'passportElementPersonalDetails'                          => 'PassportElement::PersonalDetails',
      'passportElementPassport'                                 => 'PassportElement::Passport',
      'passportElementDriverLicense'                            => 'PassportElement::DriverLicense',
      'passportElementIdentityCard'                             => 'PassportElement::IdentityCard',
      'passportElementInternalPassport'                         => 'PassportElement::InternalPassport',
      'passportElementAddress'                                  => 'PassportElement::Address',
      'passportElementUtilityBill'                              => 'PassportElement::UtilityBill',
      'passportElementBankStatement'                            => 'PassportElement::BankStatement',
      'passportElementRentalAgreement'                          => 'PassportElement::RentalAgreement',
      'passportElementPassportRegistration'                     => 'PassportElement::PassportRegistration',
      'passportElementTemporaryRegistration'                    => 'PassportElement::TemporaryRegistration',
      'passportElementPhoneNumber'                              => 'PassportElement::PhoneNumber',
      'passportElementEmailAddress'                             => 'PassportElement::EmailAddress',
      'InputPassportElement'                                    => 'InputPassportElement',
      'inputPassportElementPersonalDetails'                     => 'InputPassportElement::PersonalDetails',
      'inputPassportElementPassport'                            => 'InputPassportElement::Passport',
      'inputPassportElementDriverLicense'                       => 'InputPassportElement::DriverLicense',
      'inputPassportElementIdentityCard'                        => 'InputPassportElement::IdentityCard',
      'inputPassportElementInternalPassport'                    => 'InputPassportElement::InternalPassport',
      'inputPassportElementAddress'                             => 'InputPassportElement::Address',
      'inputPassportElementUtilityBill'                         => 'InputPassportElement::UtilityBill',
      'inputPassportElementBankStatement'                       => 'InputPassportElement::BankStatement',
      'inputPassportElementRentalAgreement'                     => 'InputPassportElement::RentalAgreement',
      'inputPassportElementPassportRegistration'                => 'InputPassportElement::PassportRegistration',
      'inputPassportElementTemporaryRegistration'               => 'InputPassportElement::TemporaryRegistration',
      'inputPassportElementPhoneNumber'                         => 'InputPassportElement::PhoneNumber',
      'inputPassportElementEmailAddress'                        => 'InputPassportElement::EmailAddress',
      'passportElements'                                        => 'PassportElements',
      'PassportElementErrorSource'                              => 'PassportElementErrorSource',
      'passportElementErrorSourceUnspecified'                   => 'PassportElementErrorSource::Unspecified',
      'passportElementErrorSourceDataField'                     => 'PassportElementErrorSource::DataField',
      'passportElementErrorSourceFrontSide'                     => 'PassportElementErrorSource::FrontSide',
      'passportElementErrorSourceReverseSide'                   => 'PassportElementErrorSource::ReverseSide',
      'passportElementErrorSourceSelfie'                        => 'PassportElementErrorSource::Selfie',
      'passportElementErrorSourceTranslationFile'               => 'PassportElementErrorSource::TranslationFile',
      'passportElementErrorSourceTranslationFiles'              => 'PassportElementErrorSource::TranslationFiles',
      'passportElementErrorSourceFile'                          => 'PassportElementErrorSource::File',
      'passportElementErrorSourceFiles'                         => 'PassportElementErrorSource::Files',
      'passportElementError'                                    => 'PassportElementError',
      'passportSuitableElement'                                 => 'PassportSuitableElement',
      'passportRequiredElement'                                 => 'PassportRequiredElement',
      'passportAuthorizationForm'                               => 'PassportAuthorizationForm',
      'passportElementsWithErrors'                              => 'PassportElementsWithErrors',
      'encryptedCredentials'                                    => 'EncryptedCredentials',
      'encryptedPassportElement'                                => 'EncryptedPassportElement',
      'InputPassportElementErrorSource'                         => 'InputPassportElementErrorSource',
      'inputPassportElementErrorSourceUnspecified'              => 'InputPassportElementErrorSource::Unspecified',
      'inputPassportElementErrorSourceDataField'                => 'InputPassportElementErrorSource::DataField',
      'inputPassportElementErrorSourceFrontSide'                => 'InputPassportElementErrorSource::FrontSide',
      'inputPassportElementErrorSourceReverseSide'              => 'InputPassportElementErrorSource::ReverseSide',
      'inputPassportElementErrorSourceSelfie'                   => 'InputPassportElementErrorSource::Selfie',
      'inputPassportElementErrorSourceTranslationFile'          => 'InputPassportElementErrorSource::TranslationFile',
      'inputPassportElementErrorSourceTranslationFiles'         => 'InputPassportElementErrorSource::TranslationFiles',
      'inputPassportElementErrorSourceFile'                     => 'InputPassportElementErrorSource::File',
      'inputPassportElementErrorSourceFiles'                    => 'InputPassportElementErrorSource::Files',
      'inputPassportElementError'                               => 'InputPassportElementError',
      'MessageContent'                                          => 'MessageContent',
      'messageText'                                             => 'MessageContent::Text',
      'messageAnimation'                                        => 'MessageContent::Animation',
      'messageAudio'                                            => 'MessageContent::Audio',
      'messageDocument'                                         => 'MessageContent::Document',
      'messagePhoto'                                            => 'MessageContent::Photo',
      'messageExpiredPhoto'                                     => 'MessageContent::ExpiredPhoto',
      'messageSticker'                                          => 'MessageContent::Sticker',
      'messageVideo'                                            => 'MessageContent::Video',
      'messageExpiredVideo'                                     => 'MessageContent::ExpiredVideo',
      'messageVideoNote'                                        => 'MessageContent::VideoNote',
      'messageVoiceNote'                                        => 'MessageContent::VoiceNote',
      'messageLocation'                                         => 'MessageContent::Location',
      'messageVenue'                                            => 'MessageContent::Venue',
      'messageContact'                                          => 'MessageContent::Contact',
      'messageAnimatedEmoji'                                    => 'MessageContent::AnimatedEmoji',
      'messageDice'                                             => 'MessageContent::Dice',
      'messageGame'                                             => 'MessageContent::Game',
      'messagePoll'                                             => 'MessageContent::Poll',
      'messageStory'                                            => 'MessageContent::Story',
      'messageInvoice'                                          => 'MessageContent::Invoice',
      'messageCall'                                             => 'MessageContent::Call',
      'messageVideoChatScheduled'                               => 'MessageContent::VideoChatScheduled',
      'messageVideoChatStarted'                                 => 'MessageContent::VideoChatStarted',
      'messageVideoChatEnded'                                   => 'MessageContent::VideoChatEnded',
      'messageInviteVideoChatParticipants'                      => 'MessageContent::InviteVideoChatParticipants',
      'messageBasicGroupChatCreate'                             => 'MessageContent::BasicGroupChatCreate',
      'messageSupergroupChatCreate'                             => 'MessageContent::SupergroupChatCreate',
      'messageChatChangeTitle'                                  => 'MessageContent::ChatChangeTitle',
      'messageChatChangePhoto'                                  => 'MessageContent::ChatChangePhoto',
      'messageChatDeletePhoto'                                  => 'MessageContent::ChatDeletePhoto',
      'messageChatAddMembers'                                   => 'MessageContent::ChatAddMembers',
      'messageChatJoinByLink'                                   => 'MessageContent::ChatJoinByLink',
      'messageChatJoinByRequest'                                => 'MessageContent::ChatJoinByRequest',
      'messageChatDeleteMember'                                 => 'MessageContent::ChatDeleteMember',
      'messageChatUpgradeTo'                                    => 'MessageContent::ChatUpgradeTo',
      'messageChatUpgradeFrom'                                  => 'MessageContent::ChatUpgradeFrom',
      'messagePinMessage'                                       => 'MessageContent::PinMessage',
      'messageScreenshotTaken'                                  => 'MessageContent::ScreenshotTaken',
      'messageChatSetBackground'                                => 'MessageContent::ChatSetBackground',
      'messageChatSetTheme'                                     => 'MessageContent::ChatSetTheme',
      'messageChatSetMessageAutoDeleteTime'                     => 'MessageContent::ChatSetMessageAutoDeleteTime',
      'messageForumTopicCreated'                                => 'MessageContent::ForumTopicCreated',
      'messageForumTopicEdited'                                 => 'MessageContent::ForumTopicEdited',
      'messageForumTopicIsClosedToggled'                        => 'MessageContent::ForumTopicIsClosedToggled',
      'messageForumTopicIsHiddenToggled'                        => 'MessageContent::ForumTopicIsHiddenToggled',
      'messageSuggestProfilePhoto'                              => 'MessageContent::SuggestProfilePhoto',
      'messageCustomServiceAction'                              => 'MessageContent::CustomServiceAction',
      'messageGameScore'                                        => 'MessageContent::GameScore',
      'messagePaymentSuccessful'                                => 'MessageContent::PaymentSuccessful',
      'messagePaymentSuccessfulBot'                             => 'MessageContent::PaymentSuccessfulBot',
      'messageGiftedPremium'                                    => 'MessageContent::GiftedPremium',
      'messageContactRegistered'                                => 'MessageContent::ContactRegistered',
      'messageUserShared'                                       => 'MessageContent::UserShared',
      'messageChatShared'                                       => 'MessageContent::ChatShared',
      'messageWebsiteConnected'                                 => 'MessageContent::WebsiteConnected',
      'messageBotWriteAccessAllowed'                            => 'MessageContent::BotWriteAccessAllowed',
      'messageWebAppDataSent'                                   => 'MessageContent::WebAppDataSent',
      'messageWebAppDataReceived'                               => 'MessageContent::WebAppDataReceived',
      'messagePassportDataSent'                                 => 'MessageContent::PassportDataSent',
      'messagePassportDataReceived'                             => 'MessageContent::PassportDataReceived',
      'messageProximityAlertTriggered'                          => 'MessageContent::ProximityAlertTriggered',
      'messageUnsupported'                                      => 'MessageContent::Unsupported',
      'TextEntityType'                                          => 'TextEntityType',
      'textEntityTypeMention'                                   => 'TextEntityType::Mention',
      'textEntityTypeHashtag'                                   => 'TextEntityType::Hashtag',
      'textEntityTypeCashtag'                                   => 'TextEntityType::Cashtag',
      'textEntityTypeBotCommand'                                => 'TextEntityType::BotCommand',
      'textEntityTypeUrl'                                       => 'TextEntityType::Url',
      'textEntityTypeEmailAddress'                              => 'TextEntityType::EmailAddress',
      'textEntityTypePhoneNumber'                               => 'TextEntityType::PhoneNumber',
      'textEntityTypeBankCardNumber'                            => 'TextEntityType::BankCardNumber',
      'textEntityTypeBold'                                      => 'TextEntityType::Bold',
      'textEntityTypeItalic'                                    => 'TextEntityType::Italic',
      'textEntityTypeUnderline'                                 => 'TextEntityType::Underline',
      'textEntityTypeStrikethrough'                             => 'TextEntityType::Strikethrough',
      'textEntityTypeSpoiler'                                   => 'TextEntityType::Spoiler',
      'textEntityTypeCode'                                      => 'TextEntityType::Code',
      'textEntityTypePre'                                       => 'TextEntityType::Pre',
      'textEntityTypePreCode'                                   => 'TextEntityType::PreCode',
      'textEntityTypeTextUrl'                                   => 'TextEntityType::TextUrl',
      'textEntityTypeMentionName'                               => 'TextEntityType::MentionName',
      'textEntityTypeCustomEmoji'                               => 'TextEntityType::CustomEmoji',
      'textEntityTypeMediaTimestamp'                            => 'TextEntityType::MediaTimestamp',
      'inputThumbnail'                                          => 'InputThumbnail',
      'MessageSchedulingState'                                  => 'MessageSchedulingState',
      'messageSchedulingStateSendAtDate'                        => 'MessageSchedulingState::SendAtDate',
      'messageSchedulingStateSendWhenOnline'                    => 'MessageSchedulingState::SendWhenOnline',
      'messageSendOptions'                                      => 'MessageSendOptions',
      'messageCopyOptions'                                      => 'MessageCopyOptions',
      'InputMessageContent'                                     => 'InputMessageContent',
      'inputMessageText'                                        => 'InputMessageContent::Text',
      'inputMessageAnimation'                                   => 'InputMessageContent::Animation',
      'inputMessageAudio'                                       => 'InputMessageContent::Audio',
      'inputMessageDocument'                                    => 'InputMessageContent::Document',
      'inputMessagePhoto'                                       => 'InputMessageContent::Photo',
      'inputMessageSticker'                                     => 'InputMessageContent::Sticker',
      'inputMessageVideo'                                       => 'InputMessageContent::Video',
      'inputMessageVideoNote'                                   => 'InputMessageContent::VideoNote',
      'inputMessageVoiceNote'                                   => 'InputMessageContent::VoiceNote',
      'inputMessageLocation'                                    => 'InputMessageContent::Location',
      'inputMessageVenue'                                       => 'InputMessageContent::Venue',
      'inputMessageContact'                                     => 'InputMessageContent::Contact',
      'inputMessageDice'                                        => 'InputMessageContent::Dice',
      'inputMessageGame'                                        => 'InputMessageContent::Game',
      'inputMessageInvoice'                                     => 'InputMessageContent::Invoice',
      'inputMessagePoll'                                        => 'InputMessageContent::Poll',
      'inputMessageStory'                                       => 'InputMessageContent::Story',
      'inputMessageForwarded'                                   => 'InputMessageContent::Forwarded',
      'SearchMessagesFilter'                                    => 'SearchMessagesFilter',
      'searchMessagesFilterEmpty'                               => 'SearchMessagesFilter::Empty',
      'searchMessagesFilterAnimation'                           => 'SearchMessagesFilter::Animation',
      'searchMessagesFilterAudio'                               => 'SearchMessagesFilter::Audio',
      'searchMessagesFilterDocument'                            => 'SearchMessagesFilter::Document',
      'searchMessagesFilterPhoto'                               => 'SearchMessagesFilter::Photo',
      'searchMessagesFilterVideo'                               => 'SearchMessagesFilter::Video',
      'searchMessagesFilterVoiceNote'                           => 'SearchMessagesFilter::VoiceNote',
      'searchMessagesFilterPhotoAndVideo'                       => 'SearchMessagesFilter::PhotoAndVideo',
      'searchMessagesFilterUrl'                                 => 'SearchMessagesFilter::Url',
      'searchMessagesFilterChatPhoto'                           => 'SearchMessagesFilter::ChatPhoto',
      'searchMessagesFilterVideoNote'                           => 'SearchMessagesFilter::VideoNote',
      'searchMessagesFilterVoiceAndVideoNote'                   => 'SearchMessagesFilter::VoiceAndVideoNote',
      'searchMessagesFilterMention'                             => 'SearchMessagesFilter::Mention',
      'searchMessagesFilterUnreadMention'                       => 'SearchMessagesFilter::UnreadMention',
      'searchMessagesFilterUnreadReaction'                      => 'SearchMessagesFilter::UnreadReaction',
      'searchMessagesFilterFailedToSend'                        => 'SearchMessagesFilter::FailedToSend',
      'searchMessagesFilterPinned'                              => 'SearchMessagesFilter::Pinned',
      'ChatAction'                                              => 'ChatAction',
      'chatActionTyping'                                        => 'ChatAction::Typing',
      'chatActionRecordingVideo'                                => 'ChatAction::RecordingVideo',
      'chatActionUploadingVideo'                                => 'ChatAction::UploadingVideo',
      'chatActionRecordingVoiceNote'                            => 'ChatAction::RecordingVoiceNote',
      'chatActionUploadingVoiceNote'                            => 'ChatAction::UploadingVoiceNote',
      'chatActionUploadingPhoto'                                => 'ChatAction::UploadingPhoto',
      'chatActionUploadingDocument'                             => 'ChatAction::UploadingDocument',
      'chatActionChoosingSticker'                               => 'ChatAction::ChoosingSticker',
      'chatActionChoosingLocation'                              => 'ChatAction::ChoosingLocation',
      'chatActionChoosingContact'                               => 'ChatAction::ChoosingContact',
      'chatActionStartPlayingGame'                              => 'ChatAction::StartPlayingGame',
      'chatActionRecordingVideoNote'                            => 'ChatAction::RecordingVideoNote',
      'chatActionUploadingVideoNote'                            => 'ChatAction::UploadingVideoNote',
      'chatActionWatchingAnimations'                            => 'ChatAction::WatchingAnimations',
      'chatActionCancel'                                        => 'ChatAction::Cancel',
      'UserStatus'                                              => 'UserStatus',
      'userStatusEmpty'                                         => 'UserStatus::Empty',
      'userStatusOnline'                                        => 'UserStatus::Online',
      'userStatusOffline'                                       => 'UserStatus::Offline',
      'userStatusRecently'                                      => 'UserStatus::Recently',
      'userStatusLastWeek'                                      => 'UserStatus::LastWeek',
      'userStatusLastMonth'                                     => 'UserStatus::LastMonth',
      'stickers'                                                => 'Stickers',
      'emojis'                                                  => 'Emojis',
      'stickerSet'                                              => 'StickerSet',
      'stickerSetInfo'                                          => 'StickerSetInfo',
      'stickerSets'                                             => 'StickerSets',
      'trendingStickerSets'                                     => 'TrendingStickerSets',
      'emojiCategory'                                           => 'EmojiCategory',
      'emojiCategories'                                         => 'EmojiCategories',
      'EmojiCategoryType'                                       => 'EmojiCategoryType',
      'emojiCategoryTypeDefault'                                => 'EmojiCategoryType::Default',
      'emojiCategoryTypeEmojiStatus'                            => 'EmojiCategoryType::EmojiStatus',
      'emojiCategoryTypeChatPhoto'                              => 'EmojiCategoryType::ChatPhoto',
      'CallDiscardReason'                                       => 'CallDiscardReason',
      'callDiscardReasonEmpty'                                  => 'CallDiscardReason::Empty',
      'callDiscardReasonMissed'                                 => 'CallDiscardReason::Missed',
      'callDiscardReasonDeclined'                               => 'CallDiscardReason::Declined',
      'callDiscardReasonDisconnected'                           => 'CallDiscardReason::Disconnected',
      'callDiscardReasonHungUp'                                 => 'CallDiscardReason::HungUp',
      'callProtocol'                                            => 'CallProtocol',
      'CallServerType'                                          => 'CallServerType',
      'callServerTypeTelegramReflector'                         => 'CallServerType::TelegramReflector',
      'callServerTypeWebrtc'                                    => 'CallServerType::Webrtc',
      'callServer'                                              => 'CallServer',
      'callId'                                                  => 'CallId',
      'groupCallId'                                             => 'GroupCallId',
      'CallState'                                               => 'CallState',
      'callStatePending'                                        => 'CallState::Pending',
      'callStateExchangingKeys'                                 => 'CallState::ExchangingKeys',
      'callStateReady'                                          => 'CallState::Ready',
      'callStateHangingUp'                                      => 'CallState::HangingUp',
      'callStateDiscarded'                                      => 'CallState::Discarded',
      'callStateError'                                          => 'CallState::Error',
      'GroupCallVideoQuality'                                   => 'GroupCallVideoQuality',
      'groupCallVideoQualityThumbnail'                          => 'GroupCallVideoQuality::Thumbnail',
      'groupCallVideoQualityMedium'                             => 'GroupCallVideoQuality::Medium',
      'groupCallVideoQualityFull'                               => 'GroupCallVideoQuality::Full',
      'groupCallStream'                                         => 'GroupCallStream',
      'groupCallStreams'                                        => 'GroupCallStreams',
      'rtmpUrl'                                                 => 'RtmpUrl',
      'groupCallRecentSpeaker'                                  => 'GroupCallRecentSpeaker',
      'groupCall'                                               => 'GroupCall',
      'groupCallVideoSourceGroup'                               => 'GroupCallVideoSourceGroup',
      'groupCallParticipantVideoInfo'                           => 'GroupCallParticipantVideoInfo',
      'groupCallParticipant'                                    => 'GroupCallParticipant',
      'CallProblem'                                             => 'CallProblem',
      'callProblemEcho'                                         => 'CallProblem::Echo',
      'callProblemNoise'                                        => 'CallProblem::Noise',
      'callProblemInterruptions'                                => 'CallProblem::Interruptions',
      'callProblemDistortedSpeech'                              => 'CallProblem::DistortedSpeech',
      'callProblemSilentLocal'                                  => 'CallProblem::SilentLocal',
      'callProblemSilentRemote'                                 => 'CallProblem::SilentRemote',
      'callProblemDropped'                                      => 'CallProblem::Dropped',
      'callProblemDistortedVideo'                               => 'CallProblem::DistortedVideo',
      'callProblemPixelatedVideo'                               => 'CallProblem::PixelatedVideo',
      'call'                                                    => 'Call',
      'FirebaseAuthenticationSettings'                          => 'FirebaseAuthenticationSettings',
      'firebaseAuthenticationSettingsAndroid'                   => 'FirebaseAuthenticationSettings::Android',
      'firebaseAuthenticationSettingsIos'                       => 'FirebaseAuthenticationSettings::Ios',
      'phoneNumberAuthenticationSettings'                       => 'PhoneNumberAuthenticationSettings',
      'addedReaction'                                           => 'AddedReaction',
      'addedReactions'                                          => 'AddedReactions',
      'availableReaction'                                       => 'AvailableReaction',
      'availableReactions'                                      => 'AvailableReactions',
      'emojiReaction'                                           => 'EmojiReaction',
      'animations'                                              => 'Animations',
      'DiceStickers'                                            => 'DiceStickers',
      'diceStickersRegular'                                     => 'DiceStickers::Regular',
      'diceStickersSlotMachine'                                 => 'DiceStickers::SlotMachine',
      'importedContacts'                                        => 'ImportedContacts',
      'SpeechRecognitionResult'                                 => 'SpeechRecognitionResult',
      'speechRecognitionResultPending'                          => 'SpeechRecognitionResult::Pending',
      'speechRecognitionResultText'                             => 'SpeechRecognitionResult::Text',
      'speechRecognitionResultError'                            => 'SpeechRecognitionResult::Error',
      'attachmentMenuBotColor'                                  => 'AttachmentMenuBotColor',
      'attachmentMenuBot'                                       => 'AttachmentMenuBot',
      'sentWebAppMessage'                                       => 'SentWebAppMessage',
      'httpUrl'                                                 => 'HttpUrl',
      'userLink'                                                => 'UserLink',
      'InputInlineQueryResult'                                  => 'InputInlineQueryResult',
      'inputInlineQueryResultAnimation'                         => 'InputInlineQueryResult::Animation',
      'inputInlineQueryResultArticle'                           => 'InputInlineQueryResult::Article',
      'inputInlineQueryResultAudio'                             => 'InputInlineQueryResult::Audio',
      'inputInlineQueryResultContact'                           => 'InputInlineQueryResult::Contact',
      'inputInlineQueryResultDocument'                          => 'InputInlineQueryResult::Document',
      'inputInlineQueryResultGame'                              => 'InputInlineQueryResult::Game',
      'inputInlineQueryResultLocation'                          => 'InputInlineQueryResult::Location',
      'inputInlineQueryResultPhoto'                             => 'InputInlineQueryResult::Photo',
      'inputInlineQueryResultSticker'                           => 'InputInlineQueryResult::Sticker',
      'inputInlineQueryResultVenue'                             => 'InputInlineQueryResult::Venue',
      'inputInlineQueryResultVideo'                             => 'InputInlineQueryResult::Video',
      'inputInlineQueryResultVoiceNote'                         => 'InputInlineQueryResult::VoiceNote',
      'InlineQueryResult'                                       => 'InlineQueryResult',
      'inlineQueryResultArticle'                                => 'InlineQueryResult::Article',
      'inlineQueryResultContact'                                => 'InlineQueryResult::Contact',
      'inlineQueryResultLocation'                               => 'InlineQueryResult::Location',
      'inlineQueryResultVenue'                                  => 'InlineQueryResult::Venue',
      'inlineQueryResultGame'                                   => 'InlineQueryResult::Game',
      'inlineQueryResultAnimation'                              => 'InlineQueryResult::Animation',
      'inlineQueryResultAudio'                                  => 'InlineQueryResult::Audio',
      'inlineQueryResultDocument'                               => 'InlineQueryResult::Document',
      'inlineQueryResultPhoto'                                  => 'InlineQueryResult::Photo',
      'inlineQueryResultSticker'                                => 'InlineQueryResult::Sticker',
      'inlineQueryResultVideo'                                  => 'InlineQueryResult::Video',
      'inlineQueryResultVoiceNote'                              => 'InlineQueryResult::VoiceNote',
      'InlineQueryResultsButtonType'                            => 'InlineQueryResultsButtonType',
      'inlineQueryResultsButtonTypeStartBot'                    => 'InlineQueryResultsButtonType::StartBot',
      'inlineQueryResultsButtonTypeWebApp'                      => 'InlineQueryResultsButtonType::WebApp',
      'inlineQueryResultsButton'                                => 'InlineQueryResultsButton',
      'inlineQueryResults'                                      => 'InlineQueryResults',
      'CallbackQueryPayload'                                    => 'CallbackQueryPayload',
      'callbackQueryPayloadData'                                => 'CallbackQueryPayload::Data',
      'callbackQueryPayloadDataWithPassword'                    => 'CallbackQueryPayload::DataWithPassword',
      'callbackQueryPayloadGame'                                => 'CallbackQueryPayload::Game',
      'callbackQueryAnswer'                                     => 'CallbackQueryAnswer',
      'customRequestResult'                                     => 'CustomRequestResult',
      'gameHighScore'                                           => 'GameHighScore',
      'gameHighScores'                                          => 'GameHighScores',
      'ChatEventAction'                                         => 'ChatEventAction',
      'chatEventMessageEdited'                                  => 'ChatEventAction::MessageEdited',
      'chatEventMessageDeleted'                                 => 'ChatEventAction::MessageDeleted',
      'chatEventMessagePinned'                                  => 'ChatEventAction::MessagePinned',
      'chatEventMessageUnpinned'                                => 'ChatEventAction::MessageUnpinned',
      'chatEventPollStopped'                                    => 'ChatEventAction::PollStopped',
      'chatEventMemberJoined'                                   => 'ChatEventAction::MemberJoined',
      'chatEventMemberJoinedByInviteLink'                       => 'ChatEventAction::MemberJoinedByInviteLink',
      'chatEventMemberJoinedByRequest'                          => 'ChatEventAction::MemberJoinedByRequest',
      'chatEventMemberInvited'                                  => 'ChatEventAction::MemberInvited',
      'chatEventMemberLeft'                                     => 'ChatEventAction::MemberLeft',
      'chatEventMemberPromoted'                                 => 'ChatEventAction::MemberPromoted',
      'chatEventMemberRestricted'                               => 'ChatEventAction::MemberRestricted',
      'chatEventAvailableReactionsChanged'                      => 'ChatEventAction::AvailableReactionsChanged',
      'chatEventDescriptionChanged'                             => 'ChatEventAction::DescriptionChanged',
      'chatEventLinkedChatChanged'                              => 'ChatEventAction::LinkedChatChanged',
      'chatEventLocationChanged'                                => 'ChatEventAction::LocationChanged',
      'chatEventMessageAutoDeleteTimeChanged'                   => 'ChatEventAction::MessageAutoDeleteTimeChanged',
      'chatEventPermissionsChanged'                             => 'ChatEventAction::PermissionsChanged',
      'chatEventPhotoChanged'                                   => 'ChatEventAction::PhotoChanged',
      'chatEventSlowModeDelayChanged'                           => 'ChatEventAction::SlowModeDelayChanged',
      'chatEventStickerSetChanged'                              => 'ChatEventAction::StickerSetChanged',
      'chatEventTitleChanged'                                   => 'ChatEventAction::TitleChanged',
      'chatEventUsernameChanged'                                => 'ChatEventAction::UsernameChanged',
      'chatEventActiveUsernamesChanged'                         => 'ChatEventAction::ActiveUsernamesChanged',
      'chatEventHasProtectedContentToggled'                     => 'ChatEventAction::HasProtectedContentToggled',
      'chatEventInvitesToggled'                                 => 'ChatEventAction::InvitesToggled',
      'chatEventIsAllHistoryAvailableToggled'                   => 'ChatEventAction::IsAllHistoryAvailableToggled',
      'chatEventHasAggressiveAntiSpamEnabledToggled'            => 'ChatEventAction::HasAggressiveAntiSpamEnabledToggled',
      'chatEventSignMessagesToggled'                            => 'ChatEventAction::SignMessagesToggled',
      'chatEventInviteLinkEdited'                               => 'ChatEventAction::InviteLinkEdited',
      'chatEventInviteLinkRevoked'                              => 'ChatEventAction::InviteLinkRevoked',
      'chatEventInviteLinkDeleted'                              => 'ChatEventAction::InviteLinkDeleted',
      'chatEventVideoChatCreated'                               => 'ChatEventAction::VideoChatCreated',
      'chatEventVideoChatEnded'                                 => 'ChatEventAction::VideoChatEnded',
      'chatEventVideoChatMuteNewParticipantsToggled'            => 'ChatEventAction::VideoChatMuteNewParticipantsToggled',
      'chatEventVideoChatParticipantIsMutedToggled'             => 'ChatEventAction::VideoChatParticipantIsMutedToggled',
      'chatEventVideoChatParticipantVolumeLevelChanged'         => 'ChatEventAction::VideoChatParticipantVolumeLevelChanged',
      'chatEventIsForumToggled'                                 => 'ChatEventAction::IsForumToggled',
      'chatEventForumTopicCreated'                              => 'ChatEventAction::ForumTopicCreated',
      'chatEventForumTopicEdited'                               => 'ChatEventAction::ForumTopicEdited',
      'chatEventForumTopicToggleIsClosed'                       => 'ChatEventAction::ForumTopicToggleIsClosed',
      'chatEventForumTopicToggleIsHidden'                       => 'ChatEventAction::ForumTopicToggleIsHidden',
      'chatEventForumTopicDeleted'                              => 'ChatEventAction::ForumTopicDeleted',
      'chatEventForumTopicPinned'                               => 'ChatEventAction::ForumTopicPinned',
      'chatEvent'                                               => 'ChatEvent',
      'chatEvents'                                              => 'ChatEvents',
      'chatEventLogFilters'                                     => 'ChatEventLogFilters',
      'LanguagePackStringValue'                                 => 'LanguagePackStringValue',
      'languagePackStringValueOrdinary'                         => 'LanguagePackStringValue::Ordinary',
      'languagePackStringValuePluralized'                       => 'LanguagePackStringValue::Pluralized',
      'languagePackStringValueDeleted'                          => 'LanguagePackStringValue::Deleted',
      'languagePackString'                                      => 'LanguagePackString',
      'languagePackStrings'                                     => 'LanguagePackStrings',
      'languagePackInfo'                                        => 'LanguagePackInfo',
      'localizationTargetInfo'                                  => 'LocalizationTargetInfo',
      'PremiumLimitType'                                        => 'PremiumLimitType',
      'premiumLimitTypeSupergroupCount'                         => 'PremiumLimitType::SupergroupCount',
      'premiumLimitTypePinnedChatCount'                         => 'PremiumLimitType::PinnedChatCount',
      'premiumLimitTypeCreatedPublicChatCount'                  => 'PremiumLimitType::CreatedPublicChatCount',
      'premiumLimitTypeSavedAnimationCount'                     => 'PremiumLimitType::SavedAnimationCount',
      'premiumLimitTypeFavoriteStickerCount'                    => 'PremiumLimitType::FavoriteStickerCount',
      'premiumLimitTypeChatFolderCount'                         => 'PremiumLimitType::ChatFolderCount',
      'premiumLimitTypeChatFolderChosenChatCount'               => 'PremiumLimitType::ChatFolderChosenChatCount',
      'premiumLimitTypePinnedArchivedChatCount'                 => 'PremiumLimitType::PinnedArchivedChatCount',
      'premiumLimitTypeCaptionLength'                           => 'PremiumLimitType::CaptionLength',
      'premiumLimitTypeBioLength'                               => 'PremiumLimitType::BioLength',
      'premiumLimitTypeChatFolderInviteLinkCount'               => 'PremiumLimitType::ChatFolderInviteLinkCount',
      'premiumLimitTypeShareableChatFolderCount'                => 'PremiumLimitType::ShareableChatFolderCount',
      'premiumLimitTypeActiveStoryCount'                        => 'PremiumLimitType::ActiveStoryCount',
      'premiumLimitTypeWeeklySentStoryCount'                    => 'PremiumLimitType::WeeklySentStoryCount',
      'premiumLimitTypeMonthlySentStoryCount'                   => 'PremiumLimitType::MonthlySentStoryCount',
      'premiumLimitTypeStoryCaptionLength'                      => 'PremiumLimitType::StoryCaptionLength',
      'PremiumFeature'                                          => 'PremiumFeature',
      'premiumFeatureIncreasedLimits'                           => 'PremiumFeature::IncreasedLimits',
      'premiumFeatureIncreasedUploadFileSize'                   => 'PremiumFeature::IncreasedUploadFileSize',
      'premiumFeatureImprovedDownloadSpeed'                     => 'PremiumFeature::ImprovedDownloadSpeed',
      'premiumFeatureVoiceRecognition'                          => 'PremiumFeature::VoiceRecognition',
      'premiumFeatureDisabledAds'                               => 'PremiumFeature::DisabledAds',
      'premiumFeatureUniqueReactions'                           => 'PremiumFeature::UniqueReactions',
      'premiumFeatureUniqueStickers'                            => 'PremiumFeature::UniqueStickers',
      'premiumFeatureCustomEmoji'                               => 'PremiumFeature::CustomEmoji',
      'premiumFeatureAdvancedChatManagement'                    => 'PremiumFeature::AdvancedChatManagement',
      'premiumFeatureProfileBadge'                              => 'PremiumFeature::ProfileBadge',
      'premiumFeatureEmojiStatus'                               => 'PremiumFeature::EmojiStatus',
      'premiumFeatureAnimatedProfilePhoto'                      => 'PremiumFeature::AnimatedProfilePhoto',
      'premiumFeatureForumTopicIcon'                            => 'PremiumFeature::ForumTopicIcon',
      'premiumFeatureAppIcons'                                  => 'PremiumFeature::AppIcons',
      'premiumFeatureRealTimeChatTranslation'                   => 'PremiumFeature::RealTimeChatTranslation',
      'premiumFeatureUpgradedStories'                           => 'PremiumFeature::UpgradedStories',
      'PremiumStoryFeature'                                     => 'PremiumStoryFeature',
      'premiumStoryFeaturePriorityOrder'                        => 'PremiumStoryFeature::PriorityOrder',
      'premiumStoryFeatureStealthMode'                          => 'PremiumStoryFeature::StealthMode',
      'premiumStoryFeaturePermanentViewsHistory'                => 'PremiumStoryFeature::PermanentViewsHistory',
      'premiumStoryFeatureCustomExpirationDuration'             => 'PremiumStoryFeature::CustomExpirationDuration',
      'premiumStoryFeatureSaveStories'                          => 'PremiumStoryFeature::SaveStories',
      'premiumStoryFeatureLinksAndFormatting'                   => 'PremiumStoryFeature::LinksAndFormatting',
      'premiumLimit'                                            => 'PremiumLimit',
      'premiumFeatures'                                         => 'PremiumFeatures',
      'PremiumSource'                                           => 'PremiumSource',
      'premiumSourceLimitExceeded'                              => 'PremiumSource::LimitExceeded',
      'premiumSourceFeature'                                    => 'PremiumSource::Feature',
      'premiumSourceStoryFeature'                               => 'PremiumSource::StoryFeature',
      'premiumSourceLink'                                       => 'PremiumSource::Link',
      'premiumSourceSettings'                                   => 'PremiumSource::Settings',
      'premiumFeaturePromotionAnimation'                        => 'PremiumFeaturePromotionAnimation',
      'premiumState'                                            => 'PremiumState',
      'StorePaymentPurpose'                                     => 'StorePaymentPurpose',
      'storePaymentPurposePremiumSubscription'                  => 'StorePaymentPurpose::PremiumSubscription',
      'storePaymentPurposeGiftedPremium'                        => 'StorePaymentPurpose::GiftedPremium',
      'DeviceToken'                                             => 'DeviceToken',
      'deviceTokenFirebaseCloudMessaging'                       => 'DeviceToken::FirebaseCloudMessaging',
      'deviceTokenApplePush'                                    => 'DeviceToken::ApplePush',
      'deviceTokenApplePushVoIP'                                => 'DeviceToken::ApplePushVoIP',
      'deviceTokenWindowsPush'                                  => 'DeviceToken::WindowsPush',
      'deviceTokenMicrosoftPush'                                => 'DeviceToken::MicrosoftPush',
      'deviceTokenMicrosoftPushVoIP'                            => 'DeviceToken::MicrosoftPushVoIP',
      'deviceTokenWebPush'                                      => 'DeviceToken::WebPush',
      'deviceTokenSimplePush'                                   => 'DeviceToken::SimplePush',
      'deviceTokenUbuntuPush'                                   => 'DeviceToken::UbuntuPush',
      'deviceTokenBlackBerryPush'                               => 'DeviceToken::BlackBerryPush',
      'deviceTokenTizenPush'                                    => 'DeviceToken::TizenPush',
      'deviceTokenHuaweiPush'                                   => 'DeviceToken::HuaweiPush',
      'pushReceiverId'                                          => 'PushReceiverId',
      'BackgroundFill'                                          => 'BackgroundFill',
      'backgroundFillSolid'                                     => 'BackgroundFill::Solid',
      'backgroundFillGradient'                                  => 'BackgroundFill::Gradient',
      'backgroundFillFreeformGradient'                          => 'BackgroundFill::FreeformGradient',
      'BackgroundType'                                          => 'BackgroundType',
      'backgroundTypeWallpaper'                                 => 'BackgroundType::Wallpaper',
      'backgroundTypePattern'                                   => 'BackgroundType::Pattern',
      'backgroundTypeFill'                                      => 'BackgroundType::Fill',
      'InputBackground'                                         => 'InputBackground',
      'inputBackgroundLocal'                                    => 'InputBackground::Local',
      'inputBackgroundRemote'                                   => 'InputBackground::Remote',
      'inputBackgroundPrevious'                                 => 'InputBackground::Previous',
      'themeSettings'                                           => 'ThemeSettings',
      'chatTheme'                                               => 'ChatTheme',
      'hashtags'                                                => 'Hashtags',
      'CanSendStoryResult'                                      => 'CanSendStoryResult',
      'canSendStoryResultOk'                                    => 'CanSendStoryResult::Ok',
      'canSendStoryResultPremiumNeeded'                         => 'CanSendStoryResult::PremiumNeeded',
      'canSendStoryResultActiveStoryLimitExceeded'              => 'CanSendStoryResult::ActiveStoryLimitExceeded',
      'canSendStoryResultWeeklyLimitExceeded'                   => 'CanSendStoryResult::WeeklyLimitExceeded',
      'canSendStoryResultMonthlyLimitExceeded'                  => 'CanSendStoryResult::MonthlyLimitExceeded',
      'CanTransferOwnershipResult'                              => 'CanTransferOwnershipResult',
      'canTransferOwnershipResultOk'                            => 'CanTransferOwnershipResult::Ok',
      'canTransferOwnershipResultPasswordNeeded'                => 'CanTransferOwnershipResult::PasswordNeeded',
      'canTransferOwnershipResultPasswordTooFresh'              => 'CanTransferOwnershipResult::PasswordTooFresh',
      'canTransferOwnershipResultSessionTooFresh'               => 'CanTransferOwnershipResult::SessionTooFresh',
      'CheckChatUsernameResult'                                 => 'CheckChatUsernameResult',
      'checkChatUsernameResultOk'                               => 'CheckChatUsernameResult::Ok',
      'checkChatUsernameResultUsernameInvalid'                  => 'CheckChatUsernameResult::UsernameInvalid',
      'checkChatUsernameResultUsernameOccupied'                 => 'CheckChatUsernameResult::UsernameOccupied',
      'checkChatUsernameResultUsernamePurchasable'              => 'CheckChatUsernameResult::UsernamePurchasable',
      'checkChatUsernameResultPublicChatsTooMany'               => 'CheckChatUsernameResult::PublicChatsTooMany',
      'checkChatUsernameResultPublicGroupsUnavailable'          => 'CheckChatUsernameResult::PublicGroupsUnavailable',
      'CheckStickerSetNameResult'                               => 'CheckStickerSetNameResult',
      'checkStickerSetNameResultOk'                             => 'CheckStickerSetNameResult::Ok',
      'checkStickerSetNameResultNameInvalid'                    => 'CheckStickerSetNameResult::NameInvalid',
      'checkStickerSetNameResultNameOccupied'                   => 'CheckStickerSetNameResult::NameOccupied',
      'ResetPasswordResult'                                     => 'ResetPasswordResult',
      'resetPasswordResultOk'                                   => 'ResetPasswordResult::Ok',
      'resetPasswordResultPending'                              => 'ResetPasswordResult::Pending',
      'resetPasswordResultDeclined'                             => 'ResetPasswordResult::Declined',
      'MessageFileType'                                         => 'MessageFileType',
      'messageFileTypePrivate'                                  => 'MessageFileType::Private',
      'messageFileTypeGroup'                                    => 'MessageFileType::Group',
      'messageFileTypeUnknown'                                  => 'MessageFileType::Unknown',
      'PushMessageContent'                                      => 'PushMessageContent',
      'pushMessageContentHidden'                                => 'PushMessageContent::Hidden',
      'pushMessageContentAnimation'                             => 'PushMessageContent::Animation',
      'pushMessageContentAudio'                                 => 'PushMessageContent::Audio',
      'pushMessageContentContact'                               => 'PushMessageContent::Contact',
      'pushMessageContentContactRegistered'                     => 'PushMessageContent::ContactRegistered',
      'pushMessageContentDocument'                              => 'PushMessageContent::Document',
      'pushMessageContentGame'                                  => 'PushMessageContent::Game',
      'pushMessageContentGameScore'                             => 'PushMessageContent::GameScore',
      'pushMessageContentInvoice'                               => 'PushMessageContent::Invoice',
      'pushMessageContentLocation'                              => 'PushMessageContent::Location',
      'pushMessageContentPhoto'                                 => 'PushMessageContent::Photo',
      'pushMessageContentPoll'                                  => 'PushMessageContent::Poll',
      'pushMessageContentScreenshotTaken'                       => 'PushMessageContent::ScreenshotTaken',
      'pushMessageContentSticker'                               => 'PushMessageContent::Sticker',
      'pushMessageContentStory'                                 => 'PushMessageContent::Story',
      'pushMessageContentText'                                  => 'PushMessageContent::Text',
      'pushMessageContentVideo'                                 => 'PushMessageContent::Video',
      'pushMessageContentVideoNote'                             => 'PushMessageContent::VideoNote',
      'pushMessageContentVoiceNote'                             => 'PushMessageContent::VoiceNote',
      'pushMessageContentBasicGroupChatCreate'                  => 'PushMessageContent::BasicGroupChatCreate',
      'pushMessageContentChatAddMembers'                        => 'PushMessageContent::ChatAddMembers',
      'pushMessageContentChatChangePhoto'                       => 'PushMessageContent::ChatChangePhoto',
      'pushMessageContentChatChangeTitle'                       => 'PushMessageContent::ChatChangeTitle',
      'pushMessageContentChatSetBackground'                     => 'PushMessageContent::ChatSetBackground',
      'pushMessageContentChatSetTheme'                          => 'PushMessageContent::ChatSetTheme',
      'pushMessageContentChatDeleteMember'                      => 'PushMessageContent::ChatDeleteMember',
      'pushMessageContentChatJoinByLink'                        => 'PushMessageContent::ChatJoinByLink',
      'pushMessageContentChatJoinByRequest'                     => 'PushMessageContent::ChatJoinByRequest',
      'pushMessageContentRecurringPayment'                      => 'PushMessageContent::RecurringPayment',
      'pushMessageContentSuggestProfilePhoto'                   => 'PushMessageContent::SuggestProfilePhoto',
      'pushMessageContentMessageForwards'                       => 'PushMessageContent::MessageForwards',
      'pushMessageContentMediaAlbum'                            => 'PushMessageContent::MediaAlbum',
      'NotificationType'                                        => 'NotificationType',
      'notificationTypeNewMessage'                              => 'NotificationType::NewMessage',
      'notificationTypeNewSecretChat'                           => 'NotificationType::NewSecretChat',
      'notificationTypeNewCall'                                 => 'NotificationType::NewCall',
      'notificationTypeNewPushMessage'                          => 'NotificationType::NewPushMessage',
      'NotificationGroupType'                                   => 'NotificationGroupType',
      'notificationGroupTypeMessages'                           => 'NotificationGroupType::Messages',
      'notificationGroupTypeMentions'                           => 'NotificationGroupType::Mentions',
      'notificationGroupTypeSecretChat'                         => 'NotificationGroupType::SecretChat',
      'notificationGroupTypeCalls'                              => 'NotificationGroupType::Calls',
      'notificationSound'                                       => 'NotificationSound',
      'notificationSounds'                                      => 'NotificationSounds',
      'notification'                                            => 'Notification',
      'notificationGroup'                                       => 'NotificationGroup',
      'OptionValue'                                             => 'OptionValue',
      'optionValueBoolean'                                      => 'OptionValue::Boolean',
      'optionValueEmpty'                                        => 'OptionValue::Empty',
      'optionValueInteger'                                      => 'OptionValue::Integer',
      'optionValueString'                                       => 'OptionValue::String',
      'jsonObjectMember'                                        => 'JsonObjectMember',
      'JsonValue'                                               => 'JsonValue',
      'jsonValueNull'                                           => 'JsonValue::Null',
      'jsonValueBoolean'                                        => 'JsonValue::Boolean',
      'jsonValueNumber'                                         => 'JsonValue::Number',
      'jsonValueString'                                         => 'JsonValue::String',
      'jsonValueArray'                                          => 'JsonValue::Array',
      'jsonValueObject'                                         => 'JsonValue::Object',
      'StoryPrivacySettings'                                    => 'StoryPrivacySettings',
      'storyPrivacySettingsEveryone'                            => 'StoryPrivacySettings::Everyone',
      'storyPrivacySettingsContacts'                            => 'StoryPrivacySettings::Contacts',
      'storyPrivacySettingsCloseFriends'                        => 'StoryPrivacySettings::CloseFriends',
      'storyPrivacySettingsSelectedContacts'                    => 'StoryPrivacySettings::SelectedContacts',
      'UserPrivacySettingRule'                                  => 'UserPrivacySettingRule',
      'userPrivacySettingRuleAllowAll'                          => 'UserPrivacySettingRule::AllowAll',
      'userPrivacySettingRuleAllowContacts'                     => 'UserPrivacySettingRule::AllowContacts',
      'userPrivacySettingRuleAllowUsers'                        => 'UserPrivacySettingRule::AllowUsers',
      'userPrivacySettingRuleAllowChatMembers'                  => 'UserPrivacySettingRule::AllowChatMembers',
      'userPrivacySettingRuleRestrictAll'                       => 'UserPrivacySettingRule::RestrictAll',
      'userPrivacySettingRuleRestrictContacts'                  => 'UserPrivacySettingRule::RestrictContacts',
      'userPrivacySettingRuleRestrictUsers'                     => 'UserPrivacySettingRule::RestrictUsers',
      'userPrivacySettingRuleRestrictChatMembers'               => 'UserPrivacySettingRule::RestrictChatMembers',
      'userPrivacySettingRules'                                 => 'UserPrivacySettingRules',
      'UserPrivacySetting'                                      => 'UserPrivacySetting',
      'userPrivacySettingShowStatus'                            => 'UserPrivacySetting::ShowStatus',
      'userPrivacySettingShowProfilePhoto'                      => 'UserPrivacySetting::ShowProfilePhoto',
      'userPrivacySettingShowLinkInForwardedMessages'           => 'UserPrivacySetting::ShowLinkInForwardedMessages',
      'userPrivacySettingShowPhoneNumber'                       => 'UserPrivacySetting::ShowPhoneNumber',
      'userPrivacySettingShowBio'                               => 'UserPrivacySetting::ShowBio',
      'userPrivacySettingAllowChatInvites'                      => 'UserPrivacySetting::AllowChatInvites',
      'userPrivacySettingAllowCalls'                            => 'UserPrivacySetting::AllowCalls',
      'userPrivacySettingAllowPeerToPeerCalls'                  => 'UserPrivacySetting::AllowPeerToPeerCalls',
      'userPrivacySettingAllowFindingByPhoneNumber'             => 'UserPrivacySetting::AllowFindingByPhoneNumber',
      'userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages' => 'UserPrivacySetting::AllowPrivateVoiceAndVideoNoteMessages',
      'accountTtl'                                              => 'AccountTtl',
      'messageAutoDeleteTime'                                   => 'MessageAutoDeleteTime',
      'SessionType'                                             => 'SessionType',
      'sessionTypeAndroid'                                      => 'SessionType::Android',
      'sessionTypeApple'                                        => 'SessionType::Apple',
      'sessionTypeBrave'                                        => 'SessionType::Brave',
      'sessionTypeChrome'                                       => 'SessionType::Chrome',
      'sessionTypeEdge'                                         => 'SessionType::Edge',
      'sessionTypeFirefox'                                      => 'SessionType::Firefox',
      'sessionTypeIpad'                                         => 'SessionType::Ipad',
      'sessionTypeIphone'                                       => 'SessionType::Iphone',
      'sessionTypeLinux'                                        => 'SessionType::Linux',
      'sessionTypeMac'                                          => 'SessionType::Mac',
      'sessionTypeOpera'                                        => 'SessionType::Opera',
      'sessionTypeSafari'                                       => 'SessionType::Safari',
      'sessionTypeUbuntu'                                       => 'SessionType::Ubuntu',
      'sessionTypeUnknown'                                      => 'SessionType::Unknown',
      'sessionTypeVivaldi'                                      => 'SessionType::Vivaldi',
      'sessionTypeWindows'                                      => 'SessionType::Windows',
      'sessionTypeXbox'                                         => 'SessionType::Xbox',
      'session'                                                 => 'Session',
      'sessions'                                                => 'Sessions',
      'connectedWebsite'                                        => 'ConnectedWebsite',
      'connectedWebsites'                                       => 'ConnectedWebsites',
      'ReportReason'                                            => 'ReportReason',
      'reportReasonSpam'                                        => 'ReportReason::Spam',
      'reportReasonViolence'                                    => 'ReportReason::Violence',
      'reportReasonPornography'                                 => 'ReportReason::Pornography',
      'reportReasonChildAbuse'                                  => 'ReportReason::ChildAbuse',
      'reportReasonCopyright'                                   => 'ReportReason::Copyright',
      'reportReasonUnrelatedLocation'                           => 'ReportReason::UnrelatedLocation',
      'reportReasonFake'                                        => 'ReportReason::Fake',
      'reportReasonIllegalDrugs'                                => 'ReportReason::IllegalDrugs',
      'reportReasonPersonalDetails'                             => 'ReportReason::PersonalDetails',
      'reportReasonCustom'                                      => 'ReportReason::Custom',
      'TargetChat'                                              => 'TargetChat',
      'targetChatCurrent'                                       => 'TargetChat::Current',
      'targetChatChosen'                                        => 'TargetChat::Chosen',
      'targetChatInternalLink'                                  => 'TargetChat::InternalLink',
      'InternalLinkType'                                        => 'InternalLinkType',
      'internalLinkTypeActiveSessions'                          => 'InternalLinkType::ActiveSessions',
      'internalLinkTypeAttachmentMenuBot'                       => 'InternalLinkType::AttachmentMenuBot',
      'internalLinkTypeAuthenticationCode'                      => 'InternalLinkType::AuthenticationCode',
      'internalLinkTypeBackground'                              => 'InternalLinkType::Background',
      'internalLinkTypeBotAddToChannel'                         => 'InternalLinkType::BotAddToChannel',
      'internalLinkTypeBotStart'                                => 'InternalLinkType::BotStart',
      'internalLinkTypeBotStartInGroup'                         => 'InternalLinkType::BotStartInGroup',
      'internalLinkTypeChangePhoneNumber'                       => 'InternalLinkType::ChangePhoneNumber',
      'internalLinkTypeChatFolderInvite'                        => 'InternalLinkType::ChatFolderInvite',
      'internalLinkTypeChatFolderSettings'                      => 'InternalLinkType::ChatFolderSettings',
      'internalLinkTypeChatInvite'                              => 'InternalLinkType::ChatInvite',
      'internalLinkTypeDefaultMessageAutoDeleteTimerSettings'   => 'InternalLinkType::DefaultMessageAutoDeleteTimerSettings',
      'internalLinkTypeEditProfileSettings'                     => 'InternalLinkType::EditProfileSettings',
      'internalLinkTypeGame'                                    => 'InternalLinkType::Game',
      'internalLinkTypeInstantView'                             => 'InternalLinkType::InstantView',
      'internalLinkTypeInvoice'                                 => 'InternalLinkType::Invoice',
      'internalLinkTypeLanguagePack'                            => 'InternalLinkType::LanguagePack',
      'internalLinkTypeLanguageSettings'                        => 'InternalLinkType::LanguageSettings',
      'internalLinkTypeMessage'                                 => 'InternalLinkType::Message',
      'internalLinkTypeMessageDraft'                            => 'InternalLinkType::MessageDraft',
      'internalLinkTypePassportDataRequest'                     => 'InternalLinkType::PassportDataRequest',
      'internalLinkTypePhoneNumberConfirmation'                 => 'InternalLinkType::PhoneNumberConfirmation',
      'internalLinkTypePremiumFeatures'                         => 'InternalLinkType::PremiumFeatures',
      'internalLinkTypePrivacyAndSecuritySettings'              => 'InternalLinkType::PrivacyAndSecuritySettings',
      'internalLinkTypeProxy'                                   => 'InternalLinkType::Proxy',
      'internalLinkTypePublicChat'                              => 'InternalLinkType::PublicChat',
      'internalLinkTypeQrCodeAuthentication'                    => 'InternalLinkType::QrCodeAuthentication',
      'internalLinkTypeRestorePurchases'                        => 'InternalLinkType::RestorePurchases',
      'internalLinkTypeSettings'                                => 'InternalLinkType::Settings',
      'internalLinkTypeStickerSet'                              => 'InternalLinkType::StickerSet',
      'internalLinkTypeStory'                                   => 'InternalLinkType::Story',
      'internalLinkTypeTheme'                                   => 'InternalLinkType::Theme',
      'internalLinkTypeThemeSettings'                           => 'InternalLinkType::ThemeSettings',
      'internalLinkTypeUnknownDeepLink'                         => 'InternalLinkType::UnknownDeepLink',
      'internalLinkTypeUnsupportedProxy'                        => 'InternalLinkType::UnsupportedProxy',
      'internalLinkTypeUserPhoneNumber'                         => 'InternalLinkType::UserPhoneNumber',
      'internalLinkTypeUserToken'                               => 'InternalLinkType::UserToken',
      'internalLinkTypeVideoChat'                               => 'InternalLinkType::VideoChat',
      'internalLinkTypeWebApp'                                  => 'InternalLinkType::WebApp',
      'messageLink'                                             => 'MessageLink',
      'messageLinkInfo'                                         => 'MessageLinkInfo',
      'storyViewer'                                             => 'StoryViewer',
      'storyViewers'                                            => 'StoryViewers',
      'storyAreaPosition'                                       => 'StoryAreaPosition',
      'StoryAreaType'                                           => 'StoryAreaType',
      'storyAreaTypeLocation'                                   => 'StoryAreaType::Location',
      'storyAreaTypeVenue'                                      => 'StoryAreaType::Venue',
      'storyArea'                                               => 'StoryArea',
      'InputStoryAreaType'                                      => 'InputStoryAreaType',
      'inputStoryAreaTypeLocation'                              => 'InputStoryAreaType::Location',
      'inputStoryAreaTypeFoundVenue'                            => 'InputStoryAreaType::FoundVenue',
      'inputStoryAreaTypePreviousVenue'                         => 'InputStoryAreaType::PreviousVenue',
      'inputStoryArea'                                          => 'InputStoryArea',
      'inputStoryAreas'                                         => 'InputStoryAreas',
      'storyVideo'                                              => 'StoryVideo',
      'StoryContent'                                            => 'StoryContent',
      'storyContentPhoto'                                       => 'StoryContent::Photo',
      'storyContentVideo'                                       => 'StoryContent::Video',
      'storyContentUnsupported'                                 => 'StoryContent::Unsupported',
      'InputStoryContent'                                       => 'InputStoryContent',
      'inputStoryContentPhoto'                                  => 'InputStoryContent::Photo',
      'inputStoryContentVideo'                                  => 'InputStoryContent::Video',
      'StoryList'                                               => 'StoryList',
      'storyListMain'                                           => 'StoryList::Main',
      'storyListArchive'                                        => 'StoryList::Archive',
      'storyInteractionInfo'                                    => 'StoryInteractionInfo',
      'story'                                                   => 'Story',
      'stories'                                                 => 'Stories',
      'storyInfo'                                               => 'StoryInfo',
      'chatActiveStories'                                       => 'ChatActiveStories',
      'BlockList'                                               => 'BlockList',
      'blockListMain'                                           => 'BlockList::Main',
      'blockListStories'                                        => 'BlockList::Stories',
      'filePart'                                                => 'FilePart',
      'FileType'                                                => 'FileType',
      'fileTypeNone'                                            => 'FileType::None',
      'fileTypeAnimation'                                       => 'FileType::Animation',
      'fileTypeAudio'                                           => 'FileType::Audio',
      'fileTypeDocument'                                        => 'FileType::Document',
      'fileTypeNotificationSound'                               => 'FileType::NotificationSound',
      'fileTypePhoto'                                           => 'FileType::Photo',
      'fileTypePhotoStory'                                      => 'FileType::PhotoStory',
      'fileTypeProfilePhoto'                                    => 'FileType::ProfilePhoto',
      'fileTypeSecret'                                          => 'FileType::Secret',
      'fileTypeSecretThumbnail'                                 => 'FileType::SecretThumbnail',
      'fileTypeSecure'                                          => 'FileType::Secure',
      'fileTypeSticker'                                         => 'FileType::Sticker',
      'fileTypeThumbnail'                                       => 'FileType::Thumbnail',
      'fileTypeUnknown'                                         => 'FileType::Unknown',
      'fileTypeVideo'                                           => 'FileType::Video',
      'fileTypeVideoNote'                                       => 'FileType::VideoNote',
      'fileTypeVideoStory'                                      => 'FileType::VideoStory',
      'fileTypeVoiceNote'                                       => 'FileType::VoiceNote',
      'fileTypeWallpaper'                                       => 'FileType::Wallpaper',
      'storageStatisticsByFileType'                             => 'StorageStatisticsByFileType',
      'storageStatisticsByChat'                                 => 'StorageStatisticsByChat',
      'storageStatistics'                                       => 'StorageStatistics',
      'storageStatisticsFast'                                   => 'StorageStatisticsFast',
      'databaseStatistics'                                      => 'DatabaseStatistics',
      'NetworkType'                                             => 'NetworkType',
      'networkTypeNone'                                         => 'NetworkType::None',
      'networkTypeMobile'                                       => 'NetworkType::Mobile',
      'networkTypeMobileRoaming'                                => 'NetworkType::MobileRoaming',
      'networkTypeWiFi'                                         => 'NetworkType::WiFi',
      'networkTypeOther'                                        => 'NetworkType::Other',
      'NetworkStatisticsEntry'                                  => 'NetworkStatisticsEntry',
      'networkStatisticsEntryFile'                              => 'NetworkStatisticsEntry::File',
      'networkStatisticsEntryCall'                              => 'NetworkStatisticsEntry::Call',
      'networkStatistics'                                       => 'NetworkStatistics',
      'autoDownloadSettings'                                    => 'AutoDownloadSettings',
      'autoDownloadSettingsPresets'                             => 'AutoDownloadSettingsPresets',
      'AutosaveSettingsScope'                                   => 'AutosaveSettingsScope',
      'autosaveSettingsScopePrivateChats'                       => 'AutosaveSettingsScope::PrivateChats',
      'autosaveSettingsScopeGroupChats'                         => 'AutosaveSettingsScope::GroupChats',
      'autosaveSettingsScopeChannelChats'                       => 'AutosaveSettingsScope::ChannelChats',
      'autosaveSettingsScopeChat'                               => 'AutosaveSettingsScope::Chat',
      'scopeAutosaveSettings'                                   => 'ScopeAutosaveSettings',
      'autosaveSettingsException'                               => 'AutosaveSettingsException',
      'autosaveSettings'                                        => 'AutosaveSettings',
      'ConnectionState'                                         => 'ConnectionState',
      'connectionStateWaitingForNetwork'                        => 'ConnectionState::WaitingForNetwork',
      'connectionStateConnectingToProxy'                        => 'ConnectionState::ConnectingToProxy',
      'connectionStateConnecting'                               => 'ConnectionState::Connecting',
      'connectionStateUpdating'                                 => 'ConnectionState::Updating',
      'connectionStateReady'                                    => 'ConnectionState::Ready',
      'TopChatCategory'                                         => 'TopChatCategory',
      'topChatCategoryUsers'                                    => 'TopChatCategory::Users',
      'topChatCategoryBots'                                     => 'TopChatCategory::Bots',
      'topChatCategoryGroups'                                   => 'TopChatCategory::Groups',
      'topChatCategoryChannels'                                 => 'TopChatCategory::Channels',
      'topChatCategoryInlineBots'                               => 'TopChatCategory::InlineBots',
      'topChatCategoryCalls'                                    => 'TopChatCategory::Calls',
      'topChatCategoryForwardChats'                             => 'TopChatCategory::ForwardChats',
      'TMeUrlType'                                              => 'TMeUrlType',
      'tMeUrlTypeUser'                                          => 'TMeUrlType::User',
      'tMeUrlTypeSupergroup'                                    => 'TMeUrlType::Supergroup',
      'tMeUrlTypeChatInvite'                                    => 'TMeUrlType::ChatInvite',
      'tMeUrlTypeStickerSet'                                    => 'TMeUrlType::StickerSet',
      'tMeUrl'                                                  => 'TMeUrl',
      'tMeUrls'                                                 => 'TMeUrls',
      'SuggestedAction'                                         => 'SuggestedAction',
      'suggestedActionEnableArchiveAndMuteNewChats'             => 'SuggestedAction::EnableArchiveAndMuteNewChats',
      'suggestedActionCheckPassword'                            => 'SuggestedAction::CheckPassword',
      'suggestedActionCheckPhoneNumber'                         => 'SuggestedAction::CheckPhoneNumber',
      'suggestedActionViewChecksHint'                           => 'SuggestedAction::ViewChecksHint',
      'suggestedActionConvertToBroadcastGroup'                  => 'SuggestedAction::ConvertToBroadcastGroup',
      'suggestedActionSetPassword'                              => 'SuggestedAction::SetPassword',
      'suggestedActionUpgradePremium'                           => 'SuggestedAction::UpgradePremium',
      'suggestedActionRestorePremium'                           => 'SuggestedAction::RestorePremium',
      'suggestedActionSubscribeToAnnualPremium'                 => 'SuggestedAction::SubscribeToAnnualPremium',
      'count'                                                   => 'Count',
      'text'                                                    => 'Text',
      'seconds'                                                 => 'Seconds',
      'fileDownloadedPrefixSize'                                => 'FileDownloadedPrefixSize',
      'deepLinkInfo'                                            => 'DeepLinkInfo',
      'TextParseMode'                                           => 'TextParseMode',
      'textParseModeMarkdown'                                   => 'TextParseMode::Markdown',
      'textParseModeHTML'                                       => 'TextParseMode::HTML',
      'ProxyType'                                               => 'ProxyType',
      'proxyTypeSocks5'                                         => 'ProxyType::Socks5',
      'proxyTypeHttp'                                           => 'ProxyType::Http',
      'proxyTypeMtproto'                                        => 'ProxyType::Mtproto',
      'proxy'                                                   => 'Proxy',
      'proxies'                                                 => 'Proxies',
      'inputSticker'                                            => 'InputSticker',
      'dateRange'                                               => 'DateRange',
      'statisticalValue'                                        => 'StatisticalValue',
      'StatisticalGraph'                                        => 'StatisticalGraph',
      'statisticalGraphData'                                    => 'StatisticalGraph::Data',
      'statisticalGraphAsync'                                   => 'StatisticalGraph::Async',
      'statisticalGraphError'                                   => 'StatisticalGraph::Error',
      'chatStatisticsMessageInteractionInfo'                    => 'ChatStatisticsMessageInteractionInfo',
      'chatStatisticsMessageSenderInfo'                         => 'ChatStatisticsMessageSenderInfo',
      'chatStatisticsAdministratorActionsInfo'                  => 'ChatStatisticsAdministratorActionsInfo',
      'chatStatisticsInviterInfo'                               => 'ChatStatisticsInviterInfo',
      'ChatStatistics'                                          => 'ChatStatistics',
      'chatStatisticsSupergroup'                                => 'ChatStatistics::Supergroup',
      'chatStatisticsChannel'                                   => 'ChatStatistics::Channel',
      'messageStatistics'                                       => 'MessageStatistics',
      'point'                                                   => 'Point',
      'VectorPathCommand'                                       => 'VectorPathCommand',
      'vectorPathCommandLine'                                   => 'VectorPathCommand::Line',
      'vectorPathCommandCubicBezierCurve'                       => 'VectorPathCommand::CubicBezierCurve',
      'BotCommandScope'                                         => 'BotCommandScope',
      'botCommandScopeDefault'                                  => 'BotCommandScope::Default',
      'botCommandScopeAllPrivateChats'                          => 'BotCommandScope::AllPrivateChats',
      'botCommandScopeAllGroupChats'                            => 'BotCommandScope::AllGroupChats',
      'botCommandScopeAllChatAdministrators'                    => 'BotCommandScope::AllChatAdministrators',
      'botCommandScopeChat'                                     => 'BotCommandScope::Chat',
      'botCommandScopeChatAdministrators'                       => 'BotCommandScope::ChatAdministrators',
      'botCommandScopeChatMember'                               => 'BotCommandScope::ChatMember',
      'Update'                                                  => 'Update',
      'updateAuthorizationState'                                => 'Update::AuthorizationState',
      'updateNewMessage'                                        => 'Update::NewMessage',
      'updateMessageSendAcknowledged'                           => 'Update::MessageSendAcknowledged',
      'updateMessageSendSucceeded'                              => 'Update::MessageSendSucceeded',
      'updateMessageSendFailed'                                 => 'Update::MessageSendFailed',
      'updateMessageContent'                                    => 'Update::MessageContent',
      'updateMessageEdited'                                     => 'Update::MessageEdited',
      'updateMessageIsPinned'                                   => 'Update::MessageIsPinned',
      'updateMessageInteractionInfo'                            => 'Update::MessageInteractionInfo',
      'updateMessageContentOpened'                              => 'Update::MessageContentOpened',
      'updateMessageMentionRead'                                => 'Update::MessageMentionRead',
      'updateMessageUnreadReactions'                            => 'Update::MessageUnreadReactions',
      'updateMessageLiveLocationViewed'                         => 'Update::MessageLiveLocationViewed',
      'updateNewChat'                                           => 'Update::NewChat',
      'updateChatTitle'                                         => 'Update::ChatTitle',
      'updateChatPhoto'                                         => 'Update::ChatPhoto',
      'updateChatPermissions'                                   => 'Update::ChatPermissions',
      'updateChatLastMessage'                                   => 'Update::ChatLastMessage',
      'updateChatPosition'                                      => 'Update::ChatPosition',
      'updateChatReadInbox'                                     => 'Update::ChatReadInbox',
      'updateChatReadOutbox'                                    => 'Update::ChatReadOutbox',
      'updateChatActionBar'                                     => 'Update::ChatActionBar',
      'updateChatAvailableReactions'                            => 'Update::ChatAvailableReactions',
      'updateChatDraftMessage'                                  => 'Update::ChatDraftMessage',
      'updateChatMessageSender'                                 => 'Update::ChatMessageSender',
      'updateChatMessageAutoDeleteTime'                         => 'Update::ChatMessageAutoDeleteTime',
      'updateChatNotificationSettings'                          => 'Update::ChatNotificationSettings',
      'updateChatPendingJoinRequests'                           => 'Update::ChatPendingJoinRequests',
      'updateChatReplyMarkup'                                   => 'Update::ChatReplyMarkup',
      'updateChatBackground'                                    => 'Update::ChatBackground',
      'updateChatTheme'                                         => 'Update::ChatTheme',
      'updateChatUnreadMentionCount'                            => 'Update::ChatUnreadMentionCount',
      'updateChatUnreadReactionCount'                           => 'Update::ChatUnreadReactionCount',
      'updateChatVideoChat'                                     => 'Update::ChatVideoChat',
      'updateChatDefaultDisableNotification'                    => 'Update::ChatDefaultDisableNotification',
      'updateChatHasProtectedContent'                           => 'Update::ChatHasProtectedContent',
      'updateChatIsTranslatable'                                => 'Update::ChatIsTranslatable',
      'updateChatIsMarkedAsUnread'                              => 'Update::ChatIsMarkedAsUnread',
      'updateChatBlockList'                                     => 'Update::ChatBlockList',
      'updateChatHasScheduledMessages'                          => 'Update::ChatHasScheduledMessages',
      'updateChatFolders'                                       => 'Update::ChatFolders',
      'updateChatOnlineMemberCount'                             => 'Update::ChatOnlineMemberCount',
      'updateForumTopicInfo'                                    => 'Update::ForumTopicInfo',
      'updateScopeNotificationSettings'                         => 'Update::ScopeNotificationSettings',
      'updateNotification'                                      => 'Update::Notification',
      'updateNotificationGroup'                                 => 'Update::NotificationGroup',
      'updateActiveNotifications'                               => 'Update::ActiveNotifications',
      'updateHavePendingNotifications'                          => 'Update::HavePendingNotifications',
      'updateDeleteMessages'                                    => 'Update::DeleteMessages',
      'updateChatAction'                                        => 'Update::ChatAction',
      'updateUserStatus'                                        => 'Update::UserStatus',
      'updateUser'                                              => 'Update::User',
      'updateBasicGroup'                                        => 'Update::BasicGroup',
      'updateSupergroup'                                        => 'Update::Supergroup',
      'updateSecretChat'                                        => 'Update::SecretChat',
      'updateUserFullInfo'                                      => 'Update::UserFullInfo',
      'updateBasicGroupFullInfo'                                => 'Update::BasicGroupFullInfo',
      'updateSupergroupFullInfo'                                => 'Update::SupergroupFullInfo',
      'updateServiceNotification'                               => 'Update::ServiceNotification',
      'updateFile'                                              => 'Update::File',
      'updateFileGenerationStart'                               => 'Update::FileGenerationStart',
      'updateFileGenerationStop'                                => 'Update::FileGenerationStop',
      'updateFileDownloads'                                     => 'Update::FileDownloads',
      'updateFileAddedToDownloads'                              => 'Update::FileAddedToDownloads',
      'updateFileDownload'                                      => 'Update::FileDownload',
      'updateFileRemovedFromDownloads'                          => 'Update::FileRemovedFromDownloads',
      'updateCall'                                              => 'Update::Call',
      'updateGroupCall'                                         => 'Update::GroupCall',
      'updateGroupCallParticipant'                              => 'Update::GroupCallParticipant',
      'updateNewCallSignalingData'                              => 'Update::NewCallSignalingData',
      'updateUserPrivacySettingRules'                           => 'Update::UserPrivacySettingRules',
      'updateUnreadMessageCount'                                => 'Update::UnreadMessageCount',
      'updateUnreadChatCount'                                   => 'Update::UnreadChatCount',
      'updateStory'                                             => 'Update::Story',
      'updateStoryDeleted'                                      => 'Update::StoryDeleted',
      'updateStorySendSucceeded'                                => 'Update::StorySendSucceeded',
      'updateStorySendFailed'                                   => 'Update::StorySendFailed',
      'updateChatActiveStories'                                 => 'Update::ChatActiveStories',
      'updateStoryListChatCount'                                => 'Update::StoryListChatCount',
      'updateStoryStealthMode'                                  => 'Update::StoryStealthMode',
      'updateOption'                                            => 'Update::Option',
      'updateStickerSet'                                        => 'Update::StickerSet',
      'updateInstalledStickerSets'                              => 'Update::InstalledStickerSets',
      'updateTrendingStickerSets'                               => 'Update::TrendingStickerSets',
      'updateRecentStickers'                                    => 'Update::RecentStickers',
      'updateFavoriteStickers'                                  => 'Update::FavoriteStickers',
      'updateSavedAnimations'                                   => 'Update::SavedAnimations',
      'updateSavedNotificationSounds'                           => 'Update::SavedNotificationSounds',
      'updateSelectedBackground'                                => 'Update::SelectedBackground',
      'updateChatThemes'                                        => 'Update::ChatThemes',
      'updateLanguagePackStrings'                               => 'Update::LanguagePackStrings',
      'updateConnectionState'                                   => 'Update::ConnectionState',
      'updateTermsOfService'                                    => 'Update::TermsOfService',
      'updateUsersNearby'                                       => 'Update::UsersNearby',
      'updateAttachmentMenuBots'                                => 'Update::AttachmentMenuBots',
      'updateWebAppMessageSent'                                 => 'Update::WebAppMessageSent',
      'updateActiveEmojiReactions'                              => 'Update::ActiveEmojiReactions',
      'updateDefaultReactionType'                               => 'Update::DefaultReactionType',
      'updateDiceEmojis'                                        => 'Update::DiceEmojis',
      'updateAnimatedEmojiMessageClicked'                       => 'Update::AnimatedEmojiMessageClicked',
      'updateAnimationSearchParameters'                         => 'Update::AnimationSearchParameters',
      'updateSuggestedActions'                                  => 'Update::SuggestedActions',
      'updateAddChatMembersPrivacyForbidden'                    => 'Update::AddChatMembersPrivacyForbidden',
      'updateAutosaveSettings'                                  => 'Update::AutosaveSettings',
      'updateNewInlineQuery'                                    => 'Update::NewInlineQuery',
      'updateNewChosenInlineResult'                             => 'Update::NewChosenInlineResult',
      'updateNewCallbackQuery'                                  => 'Update::NewCallbackQuery',
      'updateNewInlineCallbackQuery'                            => 'Update::NewInlineCallbackQuery',
      'updateNewShippingQuery'                                  => 'Update::NewShippingQuery',
      'updateNewPreCheckoutQuery'                               => 'Update::NewPreCheckoutQuery',
      'updateNewCustomEvent'                                    => 'Update::NewCustomEvent',
      'updateNewCustomQuery'                                    => 'Update::NewCustomQuery',
      'updatePoll'                                              => 'Update::Poll',
      'updatePollAnswer'                                        => 'Update::PollAnswer',
      'updateChatMember'                                        => 'Update::ChatMember',
      'updateNewChatJoinRequest'                                => 'Update::NewChatJoinRequest',
      'updates'                                                 => 'Updates',
      'LogStream'                                               => 'LogStream',
      'logStreamDefault'                                        => 'LogStream::Default',
      'logStreamFile'                                           => 'LogStream::File',
      'logStreamEmpty'                                          => 'LogStream::Empty',
      'logVerbosityLevel'                                       => 'LogVerbosityLevel',
      'logTags'                                                 => 'LogTags',
      'userSupportInfo'                                         => 'UserSupportInfo'
  }.freeze
  
  module_function
  
  # Recursively wraps a hash into typed classes
  def wrap(object)
    # Wrapping each entry in array
    if object.kind_of?(::Array)
      object.map { |o| wrap(o) }
    elsif object.kind_of?(::Hash)
      type = object.delete('@type')
      
      object.each do |key, val|
        if val.respond_to?(:each)
          object[key] = wrap(val)
        end
      end
      
      unless type
        return object
      end
      
      if (klass = LOOKUP_TABLE[type])
        const_get(klass).new(object)
      else
        raise ArgumentError.new("Can't find class for #{type}")
      end
    else 
      object
    end
  end
  
  # Simple implementation for internal use only.
  def camelize(str)
    str
    #.gsub(/(?:_|(\/)|^)([a-z\d]*)/i) { "#{$1}#{$2.capitalize}" }
  end
  
  %w[
    AccountTtl
    AddedReaction
    AddedReactions
    Address
    AnimatedChatPhoto
    AnimatedEmoji
    Animation
    Animations
    ArchiveChatListSettings
    AttachmentMenuBot
    AttachmentMenuBotColor
    Audio
    AuthenticationCodeInfo
    AuthenticationCodeType
    AuthorizationState
    AutoDownloadSettings
    AutoDownloadSettingsPresets
    AutosaveSettings
    AutosaveSettingsException
    AutosaveSettingsScope
    AvailableReaction
    AvailableReactions
    Background
    BackgroundFill
    BackgroundType
    Backgrounds
    BankCardActionOpenUrl
    BankCardInfo
    Base
    BasicGroup
    BasicGroupFullInfo
    BlockList
    BotCommand
    BotCommandScope
    BotCommands
    BotInfo
    BotMenuButton
    Call
    CallDiscardReason
    CallId
    CallProblem
    CallProtocol
    CallServer
    CallServerType
    CallState
    CallbackQueryAnswer
    CallbackQueryPayload
    CanSendStoryResult
    CanTransferOwnershipResult
    Chat
    ChatAction
    ChatActionBar
    ChatActiveStories
    ChatAdministrator
    ChatAdministratorRights
    ChatAdministrators
    ChatAvailableReactions
    ChatBackground
    ChatEvent
    ChatEventAction
    ChatEventLogFilters
    ChatEvents
    ChatFolder
    ChatFolderIcon
    ChatFolderInfo
    ChatFolderInviteLink
    ChatFolderInviteLinkInfo
    ChatFolderInviteLinks
    ChatInviteLink
    ChatInviteLinkCount
    ChatInviteLinkCounts
    ChatInviteLinkInfo
    ChatInviteLinkMember
    ChatInviteLinkMembers
    ChatInviteLinks
    ChatJoinRequest
    ChatJoinRequests
    ChatJoinRequestsInfo
    ChatList
    ChatLists
    ChatLocation
    ChatMember
    ChatMemberStatus
    ChatMembers
    ChatMembersFilter
    ChatMessageSender
    ChatMessageSenders
    ChatNearby
    ChatNotificationSettings
    ChatPermissions
    ChatPhoto
    ChatPhotoInfo
    ChatPhotoSticker
    ChatPhotoStickerType
    ChatPhotos
    ChatPosition
    ChatSource
    ChatStatistics
    ChatStatisticsAdministratorActionsInfo
    ChatStatisticsInviterInfo
    ChatStatisticsMessageInteractionInfo
    ChatStatisticsMessageSenderInfo
    ChatTheme
    ChatType
    Chats
    ChatsNearby
    CheckChatUsernameResult
    CheckStickerSetNameResult
    ClosedVectorPath
    ConnectedWebsite
    ConnectedWebsites
    ConnectionState
    Contact
    Count
    Countries
    CountryInfo
    CustomRequestResult
    DatabaseStatistics
    Date
    DateRange
    DatedFile
    DeepLinkInfo
    DeviceToken
    DiceStickers
    Document
    DownloadedFileCounts
    DraftMessage
    EmailAddressAuthentication
    EmailAddressAuthenticationCodeInfo
    EmailAddressResetState
    EmojiCategories
    EmojiCategory
    EmojiCategoryType
    EmojiReaction
    EmojiStatus
    EmojiStatuses
    Emojis
    EncryptedCredentials
    EncryptedPassportElement
    Error
    File
    FileDownload
    FileDownloadedPrefixSize
    FilePart
    FileType
    FirebaseAuthenticationSettings
    FormattedText
    ForumTopic
    ForumTopicIcon
    ForumTopicInfo
    ForumTopics
    FoundChatMessages
    FoundFileDownloads
    FoundMessages
    FoundWebApp
    Game
    GameHighScore
    GameHighScores
    GroupCall
    GroupCallId
    GroupCallParticipant
    GroupCallParticipantVideoInfo
    GroupCallRecentSpeaker
    GroupCallStream
    GroupCallStreams
    GroupCallVideoQuality
    GroupCallVideoSourceGroup
    Hashtags
    HttpUrl
    IdentityDocument
    ImportedContacts
    InlineKeyboardButton
    InlineKeyboardButtonType
    InlineQueryResult
    InlineQueryResults
    InlineQueryResultsButton
    InlineQueryResultsButtonType
    InputBackground
    InputChatPhoto
    InputCredentials
    InputFile
    InputIdentityDocument
    InputInlineQueryResult
    InputInvoice
    InputMessageContent
    InputPassportElement
    InputPassportElementError
    InputPassportElementErrorSource
    InputPersonalDocument
    InputSticker
    InputStoryArea
    InputStoryAreaType
    InputStoryAreas
    InputStoryContent
    InputThumbnail
    InternalLinkType
    Invoice
    JsonObjectMember
    JsonValue
    KeyboardButton
    KeyboardButtonType
    LabeledPricePart
    LanguagePackInfo
    LanguagePackString
    LanguagePackStringValue
    LanguagePackStrings
    LocalFile
    LocalizationTargetInfo
    Location
    LogStream
    LogTags
    LogVerbosityLevel
    LoginUrlInfo
    MaskPoint
    MaskPosition
    Message
    MessageAutoDeleteTime
    MessageCalendar
    MessageCalendarDay
    MessageContent
    MessageCopyOptions
    MessageExtendedMedia
    MessageFileType
    MessageForwardInfo
    MessageForwardOrigin
    MessageInteractionInfo
    MessageLink
    MessageLinkInfo
    MessagePosition
    MessagePositions
    MessageReaction
    MessageReplyInfo
    MessageReplyTo
    MessageSchedulingState
    MessageSendOptions
    MessageSender
    MessageSenders
    MessageSendingState
    MessageSource
    MessageSponsor
    MessageSponsorType
    MessageStatistics
    MessageThreadInfo
    MessageViewer
    MessageViewers
    Messages
    Minithumbnail
    NetworkStatistics
    NetworkStatisticsEntry
    NetworkType
    Notification
    NotificationGroup
    NotificationGroupType
    NotificationSettingsScope
    NotificationSound
    NotificationSounds
    NotificationType
    Ok
    OptionValue
    OrderInfo
    PageBlock
    PageBlockCaption
    PageBlockHorizontalAlignment
    PageBlockListItem
    PageBlockRelatedArticle
    PageBlockTableCell
    PageBlockVerticalAlignment
    PassportAuthorizationForm
    PassportElement
    PassportElementError
    PassportElementErrorSource
    PassportElementType
    PassportElements
    PassportElementsWithErrors
    PassportRequiredElement
    PassportSuitableElement
    PasswordState
    PaymentForm
    PaymentOption
    PaymentProvider
    PaymentReceipt
    PaymentResult
    PersonalDetails
    PersonalDocument
    PhoneNumberAuthenticationSettings
    PhoneNumberInfo
    Photo
    PhotoSize
    Point
    Poll
    PollOption
    PollType
    PremiumFeature
    PremiumFeaturePromotionAnimation
    PremiumFeatures
    PremiumLimit
    PremiumLimitType
    PremiumPaymentOption
    PremiumSource
    PremiumState
    PremiumStatePaymentOption
    PremiumStoryFeature
    ProfilePhoto
    Proxies
    Proxy
    ProxyType
    PublicChatType
    PushMessageContent
    PushReceiverId
    ReactionType
    RecommendedChatFolder
    RecommendedChatFolders
    RecoveryEmailAddress
    RemoteFile
    ReplyMarkup
    ReportReason
    ResetPasswordResult
    RichText
    RtmpUrl
    SavedCredentials
    ScopeAutosaveSettings
    ScopeNotificationSettings
    SearchMessagesFilter
    Seconds
    SecretChat
    SecretChatState
    SentWebAppMessage
    Session
    SessionType
    Sessions
    ShippingOption
    SpeechRecognitionResult
    SponsoredMessage
    SponsoredMessages
    StatisticalGraph
    StatisticalValue
    Sticker
    StickerFormat
    StickerFullType
    StickerSet
    StickerSetInfo
    StickerSets
    StickerType
    Stickers
    StorageStatistics
    StorageStatisticsByChat
    StorageStatisticsByFileType
    StorageStatisticsFast
    StorePaymentPurpose
    Stories
    Story
    StoryArea
    StoryAreaPosition
    StoryAreaType
    StoryContent
    StoryInfo
    StoryInteractionInfo
    StoryList
    StoryPrivacySettings
    StoryVideo
    StoryViewer
    StoryViewers
    SuggestedAction
    Supergroup
    SupergroupFullInfo
    SupergroupMembersFilter
    TMeUrl
    TMeUrlType
    TMeUrls
    TargetChat
    TemporaryPasswordState
    TermsOfService
    Text
    TextEntities
    TextEntity
    TextEntityType
    TextParseMode
    ThemeParameters
    ThemeSettings
    Thumbnail
    ThumbnailFormat
    TopChatCategory
    TrendingStickerSets
    UnreadReaction
    Update
    Updates
    User
    UserFullInfo
    UserLink
    UserPrivacySetting
    UserPrivacySettingRule
    UserPrivacySettingRules
    UserStatus
    UserSupportInfo
    UserType
    Usernames
    Users
    ValidatedOrderInfo
    VectorPathCommand
    Venue
    Video
    VideoChat
    VideoNote
    VoiceNote
    WebApp
    WebAppInfo
    WebPage
    WebPageInstantView
  ].each do |type|
    autoload type, "tdlib/types/#{type}"
  end
end
