# This is a generated module from current TDLib scheme
# It contains all available TDLib methods
module TD::ClientMethods
  # Accepts an incoming call.
  #
  # @param call_id [Integer] Call identifier.
  # @param protocol [TD::Types::CallProtocol] The call protocols supported by the application.
  # @return [TD::Types::Ok]
  def acceptCall(call_id:, protocol:)
    broadcast('@type'    => 'acceptCall',
              'call_id'  => call_id,
              'protocol' => protocol)
  end
  
  # Accepts Telegram terms of services.
  #
  # @param terms_of_service_id [TD::Types::String] Terms of service identifier.
  # @return [TD::Types::Ok]
  def acceptTermsOfService(terms_of_service_id:)
    broadcast('@type'               => 'acceptTermsOfService',
              'terms_of_service_id' => terms_of_service_id)
  end
  
  # Adds server-provided application changelog as messages to the chat 777000 (Telegram); for official applications
  #   only.
  # Returns a 404 error if nothing changed.
  #
  # @param previous_application_version [TD::Types::String] The previous application version.
  # @return [TD::Types::Ok]
  def addApplicationChangelog(previous_application_version:)
    broadcast('@type'                        => 'addApplicationChangelog',
              'previous_application_version' => previous_application_version)
  end
  
  # Adds a new member to a chat.
  # Members can't be added to private or secret chats.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] Identifier of the user.
  # @param forward_limit [Integer] The number of earlier messages from the chat to be forwarded to the new member; up
  #   to 100.
  #   Ignored for supergroups and channels, or if the added user is a bot.
  # @return [TD::Types::Ok]
  def addChatMember(chat_id:, user_id:, forward_limit:)
    broadcast('@type'         => 'addChatMember',
              'chat_id'       => chat_id,
              'user_id'       => user_id,
              'forward_limit' => forward_limit)
  end
  
  # Adds multiple new members to a chat.
  # Currently, this method is only available for supergroups and channels.
  # This method can't be used to join a chat.
  # Members can't be added to a channel if it has more than 200 members.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_ids [Array<Integer>] Identifiers of the users to be added to the chat.
  #   The maximum number of added users is 20 for supergroups and 100 for channels.
  # @return [TD::Types::Ok]
  def addChatMembers(chat_id:, user_ids:)
    broadcast('@type'    => 'addChatMembers',
              'chat_id'  => chat_id,
              'user_ids' => user_ids)
  end
  
  # Adds a chat to a chat list.
  # A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if
  #   needed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param chat_list [TD::Types::ChatList] The chat list.
  #   Use getChatListsToAddChat to get suitable chat lists.
  # @return [TD::Types::Ok]
  def addChatToList(chat_id:, chat_list:)
    broadcast('@type'     => 'addChatToList',
              'chat_id'   => chat_id,
              'chat_list' => chat_list)
  end
  
  # Adds a user to the contact list or edits an existing contact by their user identifier.
  #
  # @param contact [TD::Types::Contact, nil] The contact to add or edit; phone number may be empty and needs to be
  #   specified only if known, vCard is ignored.
  # @param share_phone_number [Boolean] Pass true to share the current user's phone number with the new contact.
  #   A corresponding rule to {TD::Types::UserPrivacySetting::ShowPhoneNumber} will be added if needed.
  #   Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be
  #   asked to share their phone number.
  # @return [TD::Types::Ok]
  def addContact(contact: nil, share_phone_number:)
    broadcast('@type'              => 'addContact',
              'contact'            => contact,
              'share_phone_number' => share_phone_number)
  end
  
  # Adds a custom server language pack to the list of installed language packs in current localization target.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Identifier of a language pack to be added.
  # @return [TD::Types::Ok]
  def addCustomServerLanguagePack(language_pack_id:)
    broadcast('@type'            => 'addCustomServerLanguagePack',
              'language_pack_id' => language_pack_id)
  end
  
  # Adds a new sticker to the list of favorite stickers.
  # The new sticker is added to the top of the list.
  # If the sticker was already in the list, it is removed from the list first.
  # Only stickers belonging to a sticker set can be added to this list.
  # Emoji stickers can't be added to favorite stickers.
  #
  # @param sticker [TD::Types::InputFile] Sticker file to add.
  # @return [TD::Types::Ok]
  def addFavoriteSticker(sticker:)
    broadcast('@type'   => 'addFavoriteSticker',
              'sticker' => sticker)
  end
  
  # Adds a file from a message to the list of file downloads.
  # Download progress and completion of the download will be notified through updateFile updates.
  # If message database is used, the list of file downloads is persistent across application restarts.
  # The downloading is independent from download using downloadFile, i.e.
  # it continues if downloadFile is canceled or is used to download a part of the file.
  #
  # @param file_id [Integer] Identifier of the file to download.
  # @param chat_id [Integer] Chat identifier of the message with the file.
  # @param message_id [Integer] Message identifier.
  # @param priority [Integer] Priority of the download (1-32).
  #   The higher the priority, the earlier the file will be downloaded.
  #   If the priorities of two files are equal, then the last one for which downloadFile/addFileToDownloads was called
  #   will be downloaded first.
  # @return [TD::Types::File]
  def addFileToDownloads(file_id:, chat_id:, message_id:, priority:)
    broadcast('@type'      => 'addFileToDownloads',
              'file_id'    => file_id,
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'priority'   => priority)
  end
  
  # Adds a local message to a chat.
  # The message is persistent across application restarts only if the message database is used.
  # Returns the added message.
  #
  # @param chat_id [Integer] Target chat.
  # @param sender_id [TD::Types::MessageSender] Identifier of the sender of the message.
  # @param reply_to_message_id [Integer] Identifier of the replied message; 0 if none.
  # @param disable_notification [Boolean] Pass true to disable notification for the message.
  # @param input_message_content [TD::Types::InputMessageContent] The content of the message to be added.
  # @return [TD::Types::Message]
  def addLocalMessage(chat_id:, sender_id:, reply_to_message_id:, disable_notification:, input_message_content:)
    broadcast('@type'                 => 'addLocalMessage',
              'chat_id'               => chat_id,
              'sender_id'             => sender_id,
              'reply_to_message_id'   => reply_to_message_id,
              'disable_notification'  => disable_notification,
              'input_message_content' => input_message_content)
  end
  
  # Adds a message to TDLib internal log.
  # Can be called synchronously.
  #
  # @param verbosity_level [Integer] The minimum verbosity level needed for the message to be logged; 0-1023.
  # @param text [TD::Types::String] Text of a message to log.
  # @return [TD::Types::Ok]
  def addLogMessage(verbosity_level:, text:)
    broadcast('@type'           => 'addLogMessage',
              'verbosity_level' => verbosity_level,
              'text'            => text)
  end
  
  # Adds a reaction to a message.
  # Use getMessageAvailableReactions to receive the list of available reactions for the message.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param reaction_type [TD::Types::ReactionType] Type of the reaction to add.
  # @param is_big [Boolean] Pass true if the reaction is added with a big animation.
  # @param update_recent_reactions [Boolean] Pass true if the reaction needs to be added to recent reactions.
  # @return [TD::Types::Ok]
  def addMessageReaction(chat_id:, message_id:, reaction_type:, is_big:, update_recent_reactions:)
    broadcast('@type'                   => 'addMessageReaction',
              'chat_id'                 => chat_id,
              'message_id'              => message_id,
              'reaction_type'           => reaction_type,
              'is_big'                  => is_big,
              'update_recent_reactions' => update_recent_reactions)
  end
  
  # Adds the specified data to data usage statistics.
  # Can be called before authorization.
  #
  # @param entry [TD::Types::NetworkStatisticsEntry] The network statistics entry with the data to be added to
  #   statistics.
  # @return [TD::Types::Ok]
  def addNetworkStatistics(entry:)
    broadcast('@type' => 'addNetworkStatistics',
              'entry' => entry)
  end
  
  # Adds a proxy server for network requests.
  # Can be called before authorization.
  #
  # @param server [TD::Types::String] Proxy server IP address.
  # @param port [Integer] Proxy server port.
  # @param enable [Boolean] Pass true to immediately enable the proxy.
  # @param type [TD::Types::ProxyType] Proxy type.
  # @return [TD::Types::Proxy]
  def addProxy(server:, port:, enable:, type:)
    broadcast('@type'  => 'addProxy',
              'server' => server,
              'port'   => port,
              'enable' => enable,
              'type'   => type)
  end
  
  # Manually adds a new sticker to the list of recently used stickers.
  # The new sticker is added to the top of the list.
  # If the sticker was already in the list, it is removed from the list first.
  # Only stickers belonging to a sticker set can be added to this list.
  # Emoji stickers can't be added to recent stickers.
  #
  # @param is_attached [Boolean] Pass true to add the sticker to the list of stickers recently attached to photo or
  #   video files; pass false to add the sticker to the list of recently sent stickers.
  # @param sticker [TD::Types::InputFile] Sticker file to add.
  # @return [TD::Types::Stickers]
  def addRecentSticker(is_attached:, sticker:)
    broadcast('@type'       => 'addRecentSticker',
              'is_attached' => is_attached,
              'sticker'     => sticker)
  end
  
  # Adds a chat to the list of recently found chats.
  # The chat is added to the beginning of the list.
  # If the chat is already in the list, it will be removed from the list first.
  #
  # @param chat_id [Integer] Identifier of the chat to add.
  # @return [TD::Types::Ok]
  def addRecentlyFoundChat(chat_id:)
    broadcast('@type'   => 'addRecentlyFoundChat',
              'chat_id' => chat_id)
  end
  
  # Manually adds a new animation to the list of saved animations.
  # The new animation is added to the beginning of the list.
  # If the animation was already in the list, it is removed first.
  # Only non-secret video animations with MIME type "video/mp4" can be added to the list.
  #
  # @param animation [TD::Types::InputFile] The animation file to be added.
  #   Only animations known to the server (i.e., successfully sent via a message) can be added to the list.
  # @return [TD::Types::Ok]
  def addSavedAnimation(animation:)
    broadcast('@type'     => 'addSavedAnimation',
              'animation' => animation)
  end
  
  # Adds a new notification sound to the list of saved notification sounds.
  # The new notification sound is added to the top of the list.
  # If it is already in the list, its position isn't changed.
  #
  # @param sound [TD::Types::InputFile] Notification sound file to add.
  # @return [TD::Types::NotificationSound]
  def addSavedNotificationSound(sound:)
    broadcast('@type' => 'addSavedNotificationSound',
              'sound' => sound)
  end
  
  # Adds a new sticker to a set; for bots only.
  #
  # @param user_id [Integer] Sticker set owner.
  # @param name [TD::Types::String] Sticker set name.
  # @param sticker [TD::Types::InputSticker] Sticker to add to the set.
  # @return [TD::Types::Ok]
  def addStickerToSet(user_id:, name:, sticker:)
    broadcast('@type'   => 'addStickerToSet',
              'user_id' => user_id,
              'name'    => name,
              'sticker' => sticker)
  end
  
  # Sets the result of a callback query; for bots only.
  #
  # @param callback_query_id [Integer] Identifier of the callback query.
  # @param text [TD::Types::String] Text of the answer.
  # @param show_alert [Boolean] Pass true to show an alert to the user instead of a toast notification.
  # @param url [TD::Types::String] URL to be opened.
  # @param cache_time [Integer] Time during which the result of the query can be cached, in seconds.
  # @return [TD::Types::Ok]
  def answerCallbackQuery(callback_query_id:, text:, show_alert:, url:, cache_time:)
    broadcast('@type'             => 'answerCallbackQuery',
              'callback_query_id' => callback_query_id,
              'text'              => text,
              'show_alert'        => show_alert,
              'url'               => url,
              'cache_time'        => cache_time)
  end
  
  # Answers a custom query; for bots only.
  #
  # @param custom_query_id [Integer] Identifier of a custom query.
  # @param data [TD::Types::String] JSON-serialized answer to the query.
  # @return [TD::Types::Ok]
  def answerCustomQuery(custom_query_id:, data:)
    broadcast('@type'           => 'answerCustomQuery',
              'custom_query_id' => custom_query_id,
              'data'            => data)
  end
  
  # Sets the result of an inline query; for bots only.
  #
  # @param inline_query_id [Integer] Identifier of the inline query.
  # @param is_personal [Boolean] Pass true if results may be cached and returned only for the user that sent the query.
  #   By default, results may be returned to any user who sends the same query.
  # @param button [TD::Types::InlineQueryResultsButton] Button to be shown above inline query results; pass null if
  #   none.
  # @param results [Array<TD::Types::InputInlineQueryResult>] The results of the query.
  # @param cache_time [Integer] Allowed time to cache the results of the query, in seconds.
  # @param next_offset [TD::Types::String] Offset for the next inline query; pass an empty string if there are no more
  #   results.
  # @return [TD::Types::Ok]
  def answerInlineQuery(inline_query_id:, is_personal:, button:, results:, cache_time:, next_offset:)
    broadcast('@type'           => 'answerInlineQuery',
              'inline_query_id' => inline_query_id,
              'is_personal'     => is_personal,
              'button'          => button,
              'results'         => results,
              'cache_time'      => cache_time,
              'next_offset'     => next_offset)
  end
  
  # Sets the result of a pre-checkout query; for bots only.
  #
  # @param pre_checkout_query_id [Integer] Identifier of the pre-checkout query.
  # @param error_message [TD::Types::String] An error message, empty on success.
  # @return [TD::Types::Ok]
  def answerPreCheckoutQuery(pre_checkout_query_id:, error_message:)
    broadcast('@type'                 => 'answerPreCheckoutQuery',
              'pre_checkout_query_id' => pre_checkout_query_id,
              'error_message'         => error_message)
  end
  
  # Sets the result of a shipping query; for bots only.
  #
  # @param shipping_query_id [Integer] Identifier of the shipping query.
  # @param shipping_options [Array<TD::Types::ShippingOption>] Available shipping options.
  # @param error_message [TD::Types::String] An error message, empty on success.
  # @return [TD::Types::Ok]
  def answerShippingQuery(shipping_query_id:, shipping_options:, error_message:)
    broadcast('@type'             => 'answerShippingQuery',
              'shipping_query_id' => shipping_query_id,
              'shipping_options'  => shipping_options,
              'error_message'     => error_message)
  end
  
  # Sets the result of interaction with a Web App and sends corresponding message on behalf of the user to the chat
  #   from which the query originated; for bots only.
  #
  # @param web_app_query_id [TD::Types::String] Identifier of the Web App query.
  # @param result [TD::Types::InputInlineQueryResult] The result of the query.
  # @return [TD::Types::SentWebAppMessage]
  def answerWebAppQuery(web_app_query_id:, result:)
    broadcast('@type'            => 'answerWebAppQuery',
              'web_app_query_id' => web_app_query_id,
              'result'           => result)
  end
  
  # Informs server about a purchase through App Store.
  # For official applications only.
  #
  # @param receipt [String] App Store receipt.
  # @param purpose [TD::Types::StorePaymentPurpose] Transaction purpose.
  # @return [TD::Types::Ok]
  def assignAppStoreTransaction(receipt:, purpose:)
    broadcast('@type'   => 'assignAppStoreTransaction',
              'receipt' => receipt,
              'purpose' => purpose)
  end
  
  # Informs server about a purchase through Google Play.
  # For official applications only.
  #
  # @param package_name [TD::Types::String] Application package name.
  # @param store_product_id [TD::Types::String] Identifier of the purchased store product.
  # @param purchase_token [TD::Types::String] Google Play purchase token.
  # @param purpose [TD::Types::StorePaymentPurpose] Transaction purpose.
  # @return [TD::Types::Ok]
  def assignGooglePlayTransaction(package_name:, store_product_id:, purchase_token:, purpose:)
    broadcast('@type'            => 'assignGooglePlayTransaction',
              'package_name'     => package_name,
              'store_product_id' => store_product_id,
              'purchase_token'   => purchase_token,
              'purpose'          => purpose)
  end
  
  # Bans a member in a chat.
  # Members can't be banned in private or secret chats.
  # In supergroups and channels, the user will not be able to return to the group on their own using invite links,
  #   etc., unless unbanned first.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param member_id [TD::Types::MessageSender] Member identifier.
  # @param banned_until_date [Integer] Point in time (Unix timestamp) when the user will be unbanned; 0 if never.
  #   If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is
  #   considered to be banned forever.
  #   Ignored in basic groups and if a chat is banned.
  # @param revoke_messages [Boolean] Pass true to delete all messages in the chat for the user that is being removed.
  #   Always true for supergroups and channels.
  # @return [TD::Types::Ok]
  def banChatMember(chat_id:, member_id:, banned_until_date:, revoke_messages:)
    broadcast('@type'             => 'banChatMember',
              'chat_id'           => chat_id,
              'member_id'         => member_id,
              'banned_until_date' => banned_until_date,
              'revoke_messages'   => revoke_messages)
  end
  
  # Blocks an original sender of a message in the Replies chat.
  #
  # @param message_id [Integer] The identifier of an incoming message in the Replies chat.
  # @param delete_message [Boolean] Pass true to delete the message.
  # @param delete_all_messages [Boolean] Pass true to delete all messages from the same sender.
  # @param report_spam [Boolean] Pass true to report the sender to the Telegram moderators.
  # @return [TD::Types::Ok]
  def blockMessageSenderFromReplies(message_id:, delete_message:, delete_all_messages:, report_spam:)
    broadcast('@type'               => 'blockMessageSenderFromReplies',
              'message_id'          => message_id,
              'delete_message'      => delete_message,
              'delete_all_messages' => delete_all_messages,
              'report_spam'         => report_spam)
  end
  
  # Checks whether Telegram Premium purchase is possible.
  # Must be called before in-store Premium purchase.
  #
  # @param purpose [TD::Types::StorePaymentPurpose] Transaction purpose.
  # @return [TD::Types::Ok]
  def canPurchasePremium(purpose:)
    broadcast('@type'   => 'canPurchasePremium',
              'purpose' => purpose)
  end
  
  # Checks whether the current session can be used to transfer a chat ownership to another user.
  #
  # @return [TD::Types::CanTransferOwnershipResult]
  def canTransferOwnership
    broadcast('@type' => 'canTransferOwnership')
  end
  
  # Stops the downloading of a file.
  # If a file has already been downloaded, does nothing.
  #
  # @param file_id [Integer] Identifier of a file to stop downloading.
  # @param only_if_pending [Boolean] Pass true to stop downloading only if it hasn't been started, i.e.
  #   request hasn't been sent to server.
  # @return [TD::Types::Ok]
  def cancelDownloadFile(file_id:, only_if_pending:)
    broadcast('@type'           => 'cancelDownloadFile',
              'file_id'         => file_id,
              'only_if_pending' => only_if_pending)
  end
  
  # Cancels reset of 2-step verification password.
  # The method can be called if passwordState.pending_reset_date > 0.
  #
  # @return [TD::Types::Ok]
  def cancelPasswordReset
    broadcast('@type' => 'cancelPasswordReset')
  end
  
  # Stops the preliminary uploading of a file.
  # Supported only for files uploaded by using preliminaryUploadFile.
  # For other files the behavior is undefined.
  #
  # @param file_id [Integer] Identifier of the file to stop uploading.
  # @return [TD::Types::Ok]
  def cancelPreliminaryUploadFile(file_id:)
    broadcast('@type'   => 'cancelPreliminaryUploadFile',
              'file_id' => file_id)
  end
  
  # Changes imported contacts using the list of contacts saved on the device.
  # Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.
  # Query result depends on the result of the previous query, so only one query is possible at the same time.
  #
  # @param contacts [Array<TD::Types::Contact>] The new list of contacts, contact's vCard are ignored and are not
  #   imported.
  # @return [TD::Types::ImportedContacts]
  def changeImportedContacts(contacts:)
    broadcast('@type'    => 'changeImportedContacts',
              'contacts' => contacts)
  end
  
  # Changes the phone number of the user and sends an authentication code to the user's new phone number.
  # On success, returns information about the sent code.
  #
  # @param phone_number [TD::Types::String] The new phone number of the user in international format.
  # @param settings [TD::Types::PhoneNumberAuthenticationSettings] Settings for the authentication of the user's phone
  #   number; pass null to use default settings.
  # @return [TD::Types::AuthenticationCodeInfo]
  def changePhoneNumber(phone_number:, settings:)
    broadcast('@type'        => 'changePhoneNumber',
              'phone_number' => phone_number,
              'settings'     => settings)
  end
  
  # Installs/uninstalls or activates/archives a sticker set.
  #
  # @param set_id [Integer] Identifier of the sticker set.
  # @param is_installed [Boolean] The new value of is_installed.
  # @param is_archived [Boolean] The new value of is_archived.
  #   A sticker set can't be installed and archived simultaneously.
  # @return [TD::Types::Ok]
  def changeStickerSet(set_id:, is_installed:, is_archived:)
    broadcast('@type'        => 'changeStickerSet',
              'set_id'       => set_id,
              'is_installed' => is_installed,
              'is_archived'  => is_archived)
  end
  
  # Checks the authentication token of a bot; to log in as a bot.
  # Works only when the current authorization state is authorizationStateWaitPhoneNumber.
  # Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in.
  #
  # @param token [TD::Types::String] The bot token.
  # @return [TD::Types::Ok]
  def checkAuthenticationBotToken(token:)
    broadcast('@type' => 'checkAuthenticationBotToken',
              'token' => token)
  end
  
  # Checks the authentication code.
  # Works only when the current authorization state is authorizationStateWaitCode.
  #
  # @param code [TD::Types::String] Authentication code to check.
  # @return [TD::Types::Ok]
  def checkAuthenticationCode(code:)
    broadcast('@type' => 'checkAuthenticationCode',
              'code'  => code)
  end
  
  # Checks the authentication of a email address.
  # Works only when the current authorization state is authorizationStateWaitEmailCode.
  #
  # @param code [TD::Types::EmailAddressAuthentication] Email address authentication to check.
  # @return [TD::Types::Ok]
  def checkAuthenticationEmailCode(code:)
    broadcast('@type' => 'checkAuthenticationEmailCode',
              'code'  => code)
  end
  
  # Checks the 2-step verification password for correctness.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # @param password [TD::Types::String] The 2-step verification password to check.
  # @return [TD::Types::Ok]
  def checkAuthenticationPassword(password:)
    broadcast('@type'    => 'checkAuthenticationPassword',
              'password' => password)
  end
  
  # Checks whether a 2-step verification password recovery code sent to an email address is valid.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # @param recovery_code [TD::Types::String] Recovery code to check.
  # @return [TD::Types::Ok]
  def checkAuthenticationPasswordRecoveryCode(recovery_code:)
    broadcast('@type'         => 'checkAuthenticationPasswordRecoveryCode',
              'recovery_code' => recovery_code)
  end
  
  # Checks the authentication code sent to confirm a new phone number of the user.
  #
  # @param code [TD::Types::String] Authentication code to check.
  # @return [TD::Types::Ok]
  def checkChangePhoneNumberCode(code:)
    broadcast('@type' => 'checkChangePhoneNumberCode',
              'code'  => code)
  end
  
  # Checks the validity of an invite link for a chat and returns information about the corresponding chat.
  #
  # @param invite_link [TD::Types::String] Invite link to be checked.
  # @return [TD::Types::ChatInviteLinkInfo]
  def checkChatInviteLink(invite_link:)
    broadcast('@type'       => 'checkChatInviteLink',
              'invite_link' => invite_link)
  end
  
  # Checks whether a username can be set for a chat.
  #
  # @param chat_id [Integer] Chat identifier; must be identifier of a supergroup chat, or a channel chat, or a private
  #   chat with self, or zero if the chat is being created.
  # @param username [TD::Types::String] Username to be checked.
  # @return [TD::Types::CheckChatUsernameResult]
  def checkChatUsername(chat_id:, username:)
    broadcast('@type'    => 'checkChatUsername',
              'chat_id'  => chat_id,
              'username' => username)
  end
  
  # Checks whether the maximum number of owned public chats has been reached.
  # Returns corresponding error if the limit was reached.
  # The limit can be increased with Telegram Premium.
  #
  # @param type [TD::Types::PublicChatType] Type of the public chats, for which to check the limit.
  # @return [TD::Types::Ok]
  def checkCreatedPublicChatsLimit(type:)
    broadcast('@type' => 'checkCreatedPublicChatsLimit',
              'type'  => type)
  end
  
  # Checks the email address verification code for Telegram Passport.
  #
  # @param code [TD::Types::String] Verification code to check.
  # @return [TD::Types::Ok]
  def checkEmailAddressVerificationCode(code:)
    broadcast('@type' => 'checkEmailAddressVerificationCode',
              'code'  => code)
  end
  
  # Checks the login email address authentication.
  #
  # @param code [TD::Types::EmailAddressAuthentication] Email address authentication to check.
  # @return [TD::Types::Ok]
  def checkLoginEmailAddressCode(code:)
    broadcast('@type' => 'checkLoginEmailAddressCode',
              'code'  => code)
  end
  
  # Checks whether a 2-step verification password recovery code sent to an email address is valid.
  #
  # @param recovery_code [TD::Types::String] Recovery code to check.
  # @return [TD::Types::Ok]
  def checkPasswordRecoveryCode(recovery_code:)
    broadcast('@type'         => 'checkPasswordRecoveryCode',
              'recovery_code' => recovery_code)
  end
  
  # Checks phone number confirmation code.
  #
  # @param code [TD::Types::String] Confirmation code to check.
  # @return [TD::Types::Ok]
  def checkPhoneNumberConfirmationCode(code:)
    broadcast('@type' => 'checkPhoneNumberConfirmationCode',
              'code'  => code)
  end
  
  # Checks the phone number verification code for Telegram Passport.
  #
  # @param code [TD::Types::String] Verification code to check.
  # @return [TD::Types::Ok]
  def checkPhoneNumberVerificationCode(code:)
    broadcast('@type' => 'checkPhoneNumberVerificationCode',
              'code'  => code)
  end
  
  # Checks the 2-step verification recovery email address verification code.
  #
  # @param code [TD::Types::String] Verification code to check.
  # @return [TD::Types::PasswordState]
  def checkRecoveryEmailAddressCode(code:)
    broadcast('@type' => 'checkRecoveryEmailAddressCode',
              'code'  => code)
  end
  
  # Checks whether a name can be used for a new sticker set.
  #
  # @param name [TD::Types::String] Name to be checked.
  # @return [TD::Types::CheckStickerSetNameResult]
  def checkStickerSetName(name:)
    broadcast('@type' => 'checkStickerSetName',
              'name'  => name)
  end
  
  # Removes potentially dangerous characters from the name of a file.
  # The encoding of the file name is supposed to be UTF-8.
  # Returns an empty string on failure.
  # Can be called synchronously.
  #
  # @param file_name [TD::Types::String] File name or path to the file.
  # @return [TD::Types::Text]
  def cleanFileName(file_name:)
    broadcast('@type'     => 'cleanFileName',
              'file_name' => file_name)
  end
  
  # Clears message drafts in all chats.
  #
  # @param exclude_secret_chats [Boolean] Pass true to keep local message drafts in secret chats.
  # @return [TD::Types::Ok]
  def clearAllDraftMessages(exclude_secret_chats:)
    broadcast('@type'                => 'clearAllDraftMessages',
              'exclude_secret_chats' => exclude_secret_chats)
  end
  
  # Clears the list of all autosave settings exceptions.
  # The method is guaranteed to work only after at least one call to getAutosaveSettings.
  #
  # @return [TD::Types::Ok]
  def clearAutosaveSettingsExceptions
    broadcast('@type' => 'clearAutosaveSettingsExceptions')
  end
  
  # Clears all imported contacts, contact list remains unchanged.
  #
  # @return [TD::Types::Ok]
  def clearImportedContacts
    broadcast('@type' => 'clearImportedContacts')
  end
  
  # Clears the list of recently used emoji statuses.
  #
  # @return [TD::Types::Ok]
  def clearRecentEmojiStatuses
    broadcast('@type' => 'clearRecentEmojiStatuses')
  end
  
  # Clears the list of recently used reactions.
  #
  # @return [TD::Types::Ok]
  def clearRecentReactions
    broadcast('@type' => 'clearRecentReactions')
  end
  
  # Clears the list of recently used stickers.
  #
  # @param is_attached [Boolean] Pass true to clear the list of stickers recently attached to photo or video files;
  #   pass false to clear the list of recently sent stickers.
  # @return [TD::Types::Ok]
  def clearRecentStickers(is_attached:)
    broadcast('@type'       => 'clearRecentStickers',
              'is_attached' => is_attached)
  end
  
  # Clears the list of recently found chats.
  #
  # @return [TD::Types::Ok]
  def clearRecentlyFoundChats
    broadcast('@type' => 'clearRecentlyFoundChats')
  end
  
  # Informs TDLib that a message with an animated emoji was clicked by the user.
  # Returns a big animated sticker to be played or a 404 error if usual animation needs to be played.
  #
  # @param chat_id [Integer] Chat identifier of the message.
  # @param message_id [Integer] Identifier of the clicked message.
  # @return [TD::Types::Sticker]
  def clickAnimatedEmojiMessage(chat_id:, message_id:)
    broadcast('@type'      => 'clickAnimatedEmojiMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Informs TDLib that the user clicked Premium subscription button on the Premium features screen.
  #
  # @return [TD::Types::Ok]
  def clickPremiumSubscriptionButton
    broadcast('@type' => 'clickPremiumSubscriptionButton')
  end
  
  # Closes the TDLib instance.
  # All databases will be flushed to disk and properly closed.
  # After the close completes, updateAuthorizationState with authorizationStateClosed will be sent.
  # Can be called before initialization.
  #
  # @return [TD::Types::Ok]
  def close
    broadcast('@type' => 'close')
  end
  
  # Informs TDLib that the chat is closed by the user.
  # Many useful activities depend on the chat being opened or closed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def closeChat(chat_id:)
    broadcast('@type'   => 'closeChat',
              'chat_id' => chat_id)
  end
  
  # Closes a secret chat, effectively transferring its state to secretChatStateClosed.
  #
  # @param secret_chat_id [Integer] Secret chat identifier.
  # @return [TD::Types::Ok]
  def closeSecretChat(secret_chat_id:)
    broadcast('@type'          => 'closeSecretChat',
              'secret_chat_id' => secret_chat_id)
  end
  
  # Informs TDLib that a previously opened Web App was closed.
  #
  # @param web_app_launch_id [Integer] Identifier of Web App launch, received from openWebApp.
  # @return [TD::Types::Ok]
  def closeWebApp(web_app_launch_id:)
    broadcast('@type'             => 'closeWebApp',
              'web_app_launch_id' => web_app_launch_id)
  end
  
  # Confirms QR code authentication on another device.
  # Returns created session on success.
  #
  # @param link [TD::Types::String] A link from a QR code.
  #   The link must be scanned by the in-app camera.
  # @return [TD::Types::Session]
  def confirmQrCodeAuthentication(link:)
    broadcast('@type' => 'confirmQrCodeAuthentication',
              'link'  => link)
  end
  
  # Returns an existing chat corresponding to a known basic group.
  #
  # @param basic_group_id [Integer] Basic group identifier.
  # @param force [Boolean] Pass true to create the chat without a network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  # @return [TD::Types::Chat]
  def createBasicGroupChat(basic_group_id:, force:)
    broadcast('@type'          => 'createBasicGroupChat',
              'basic_group_id' => basic_group_id,
              'force'          => force)
  end
  
  # Creates a new call.
  #
  # @param user_id [Integer] Identifier of the user to be called.
  # @param protocol [TD::Types::CallProtocol] The call protocols supported by the application.
  # @param is_video [Boolean] Pass true to create a video call.
  # @return [TD::Types::CallId]
  def createCall(user_id:, protocol:, is_video:)
    broadcast('@type'    => 'createCall',
              'user_id'  => user_id,
              'protocol' => protocol,
              'is_video' => is_video)
  end
  
  # Creates new chat filter.
  # Returns information about the created chat filter.
  # There can be up to getOption("chat_filter_count_max") chat filters, but the limit can be increased with Telegram
  #   Premium.
  #
  # @param filter [TD::Types::ChatFilter] Chat filter.
  # @return [TD::Types::ChatFilterInfo]
  def createChatFilter(filter:)
    broadcast('@type'  => 'createChatFilter',
              'filter' => filter)
  end
  
  # Creates a new invite link for a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires administrator privileges and can_invite_users right in the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param name [TD::Types::String] Invite link name; 0-32 characters.
  # @param expiration_date [Integer] Point in time (Unix timestamp) when the link will expire; pass 0 if never.
  # @param member_limit [Integer] The maximum number of chat members that can join the chat via the link
  #   simultaneously; 0-99999; pass 0 if not limited.
  # @param creates_join_request [Boolean] Pass true if users joining the chat via the link need to be approved by chat
  #   administrators.
  #   In this case, member_limit must be 0.
  # @return [TD::Types::ChatInviteLink]
  def createChatInviteLink(chat_id:, name:, expiration_date:, member_limit:, creates_join_request:)
    broadcast('@type'                => 'createChatInviteLink',
              'chat_id'              => chat_id,
              'name'                 => name,
              'expiration_date'      => expiration_date,
              'member_limit'         => member_limit,
              'creates_join_request' => creates_join_request)
  end
  
  # Creates a topic in a forum supergroup chat; requires can_manage_topics rights in the supergroup.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param name [TD::Types::String] Name of the topic; 1-128 characters.
  # @param icon [TD::Types::ForumTopicIcon] Icon of the topic.
  #   Icon color must be one of 0x6FB9F0, 0xFFD67E, 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F.
  #   Telegram Premium users can use any custom emoji as topic icon, other users can use only a custom emoji returned
  #   by getForumTopicDefaultIcons.
  # @return [TD::Types::ForumTopicInfo]
  def createForumTopic(chat_id:, name:, icon:)
    broadcast('@type'   => 'createForumTopic',
              'chat_id' => chat_id,
              'name'    => name,
              'icon'    => icon)
  end
  
  # Creates a link for the given invoice; for bots only.
  #
  # @param invoice [TD::Types::InputMessageContent] Information about the invoice of the type inputMessageInvoice.
  # @return [TD::Types::HttpUrl]
  def createInvoiceLink(invoice:)
    broadcast('@type'   => 'createInvoiceLink',
              'invoice' => invoice)
  end
  
  # Creates a new basic group and sends a corresponding messageBasicGroupChatCreate.
  # Returns the newly created chat.
  #
  # @param user_ids [Array<Integer>, nil] Identifiers of users to be added to the basic group; may be empty to create a
  #   basic group without other members.
  # @param title [TD::Types::String] Title of the new basic group; 1-128 characters.
  # @param message_auto_delete_time [Integer] Message auto-delete time value, in seconds; must be from 0 up to 365 *
  #   86400 and be divisible by 86400.
  #   If 0, then messages aren't deleted automatically.
  # @return [TD::Types::Chat]
  def createNewBasicGroupChat(user_ids: nil, title:, message_auto_delete_time:)
    broadcast('@type'                    => 'createNewBasicGroupChat',
              'user_ids'                 => user_ids,
              'title'                    => title,
              'message_auto_delete_time' => message_auto_delete_time)
  end
  
  # Creates a new secret chat.
  # Returns the newly created chat.
  #
  # @param user_id [Integer] Identifier of the target user.
  # @return [TD::Types::Chat]
  def createNewSecretChat(user_id:)
    broadcast('@type'   => 'createNewSecretChat',
              'user_id' => user_id)
  end
  
  # Creates a new sticker set.
  # Returns the newly created sticker set.
  #
  # @param user_id [Integer, nil] Sticker set owner; ignored for regular users.
  # @param title [TD::Types::String, nil] Sticker set title; 1-64 characters.
  # @param name [TD::Types::String, nil] Sticker set name.
  #   Can contain only English letters, digits and underscores.
  #   Must end with *"_by_<bot username>"* (*<bot_username>* is case insensitive) for bots; 1-64 characters.
  # @param sticker_format [TD::Types::StickerFormat, nil] Format of the stickers in the set.
  # @param sticker_type [TD::Types::StickerType, nil] Type of the stickers in the set.
  # @param needs_repainting [Boolean, nil] Pass true if stickers in the sticker set must be repainted; for custom emoji
  #   sticker sets only.
  # @param stickers [Array<TD::Types::InputSticker>] List of stickers to be added to the set; must be non-empty.
  #   All stickers must have the same format.
  #   For TGS stickers, uploadStickerFile must be used before the sticker is shown.
  # @param source [TD::Types::String, nil] Source of the sticker set; may be empty if unknown.
  # @return [TD::Types::StickerSet]
  def createNewStickerSet(user_id: nil, title: nil, name: nil, sticker_format: nil, sticker_type: nil, needs_repainting:
                          nil, stickers:, source: nil)
    broadcast('@type'            => 'createNewStickerSet',
              'user_id'          => user_id,
              'title'            => title,
              'name'             => name,
              'sticker_format'   => sticker_format,
              'sticker_type'     => sticker_type,
              'needs_repainting' => needs_repainting,
              'stickers'         => stickers,
              'source'           => source)
  end
  
  # Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate.
  # Returns the newly created chat.
  #
  # @param title [TD::Types::String] Title of the new chat; 1-128 characters.
  # @param is_forum [Boolean] Pass true to create a forum supergroup chat.
  # @param is_channel [Boolean] Pass true to create a channel chat; ignored if a forum is created.
  # @param description [TD::Types::String] Chat description; 0-255 characters.
  # @param location [TD::Types::ChatLocation] Chat location if a location-based supergroup is being created; pass null
  #   to create an ordinary supergroup chat.
  # @param message_auto_delete_time [Integer] Message auto-delete time value, in seconds; must be from 0 up to 365 *
  #   86400 and be divisible by 86400.
  #   If 0, then messages aren't deleted automatically.
  # @param for_import [Boolean] Pass true to create a supergroup for importing messages using importMessage.
  # @return [TD::Types::Chat]
  def createNewSupergroupChat(title:, is_forum:, is_channel:, description:, location:, message_auto_delete_time:,
                              for_import:)
    broadcast('@type'                    => 'createNewSupergroupChat',
              'title'                    => title,
              'is_forum'                 => is_forum,
              'is_channel'               => is_channel,
              'description'              => description,
              'location'                 => location,
              'message_auto_delete_time' => message_auto_delete_time,
              'for_import'               => for_import)
  end
  
  # Returns an existing chat corresponding to a given user.
  #
  # @param user_id [Integer] User identifier.
  # @param force [Boolean] Pass true to create the chat without a network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  # @return [TD::Types::Chat]
  def createPrivateChat(user_id:, force:)
    broadcast('@type'   => 'createPrivateChat',
              'user_id' => user_id,
              'force'   => force)
  end
  
  # Returns an existing chat corresponding to a known secret chat.
  #
  # @param secret_chat_id [Integer] Secret chat identifier.
  # @return [TD::Types::Chat]
  def createSecretChat(secret_chat_id:)
    broadcast('@type'          => 'createSecretChat',
              'secret_chat_id' => secret_chat_id)
  end
  
  # Returns an existing chat corresponding to a known supergroup or channel.
  #
  # @param supergroup_id [Integer] Supergroup or channel identifier.
  # @param force [Boolean] Pass true to create the chat without a network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  # @return [TD::Types::Chat]
  def createSupergroupChat(supergroup_id:, force:)
    broadcast('@type'         => 'createSupergroupChat',
              'supergroup_id' => supergroup_id,
              'force'         => force)
  end
  
  # Creates a new temporary password for processing payments.
  #
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @param valid_for [Integer] Time during which the temporary password will be valid, in seconds; must be between 60
  #   and 86400.
  # @return [TD::Types::TemporaryPasswordState]
  def createTemporaryPassword(password:, valid_for:)
    broadcast('@type'     => 'createTemporaryPassword',
              'password'  => password,
              'valid_for' => valid_for)
  end
  
  # Creates a video chat (a group call bound to a chat).
  # Available only for basic groups, supergroups and channels; requires can_manage_video_chats rights.
  #
  # @param chat_id [Integer] Identifier of a chat in which the video chat will be created.
  # @param title [TD::Types::String, nil] Group call title; if empty, chat title will be used.
  # @param start_date [Integer] Point in time (Unix timestamp) when the group call is supposed to be started by an
  #   administrator; 0 to start the video chat immediately.
  #   The date must be at least 10 seconds and at most 8 days in the future.
  # @param is_rtmp_stream [Boolean] Pass true to create an RTMP stream instead of an ordinary video chat; requires
  #   creator privileges.
  # @return [TD::Types::GroupCallId]
  def createVideoChat(chat_id:, title: nil, start_date:, is_rtmp_stream:)
    broadcast('@type'          => 'createVideoChat',
              'chat_id'        => chat_id,
              'title'          => title,
              'start_date'     => start_date,
              'is_rtmp_stream' => is_rtmp_stream)
  end
  
  # Deletes the account of the current user, deleting all information associated with the user from the server.
  # The phone number of the account can be used to create a new account.
  # Can be called before authorization when the current authorization state is authorizationStateWaitPassword.
  #
  # @param reason [TD::Types::String, nil] The reason why the account was deleted; optional.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  #   If not specified, account deletion can be canceled within one week.
  # @return [TD::Types::Ok]
  def deleteAccount(reason: nil, password:)
    broadcast('@type'    => 'deleteAccount',
              'reason'   => reason,
              'password' => password)
  end
  
  # Deletes all call messages.
  #
  # @param revoke [Boolean] Pass true to delete the messages for all users.
  # @return [TD::Types::Ok]
  def deleteAllCallMessages(revoke:)
    broadcast('@type'  => 'deleteAllCallMessages',
              'revoke' => revoke)
  end
  
  # Deletes all revoked chat invite links created by a given chat administrator.
  # Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param creator_user_id [Integer] User identifier of a chat administrator, which links will be deleted.
  #   Must be an identifier of the current user for non-owner.
  # @return [TD::Types::Ok]
  def deleteAllRevokedChatInviteLinks(chat_id:, creator_user_id:)
    broadcast('@type'           => 'deleteAllRevokedChatInviteLinks',
              'chat_id'         => chat_id,
              'creator_user_id' => creator_user_id)
  end
  
  # Deletes a chat along with all messages in the corresponding chat for all chat members.
  # For group chats this will release the usernames and remove all members.
  # Use the field chat.can_be_deleted_for_all_users to find whether the method can be applied to the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def deleteChat(chat_id:)
    broadcast('@type'   => 'deleteChat',
              'chat_id' => chat_id)
  end
  
  # Deletes existing chat filter.
  #
  # @param chat_filter_id [Integer] Chat filter identifier.
  # @return [TD::Types::Ok]
  def deleteChatFilter(chat_filter_id:)
    broadcast('@type'          => 'deleteChatFilter',
              'chat_filter_id' => chat_filter_id)
  end
  
  # Deletes all messages in the chat.
  # Use chat.can_be_deleted_only_for_self and chat.can_be_deleted_for_all_users fields to find whether and how the
  #   method can be applied to the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param remove_from_chat_list [Boolean] Pass true to remove the chat from all chat lists.
  # @param revoke [Boolean] Pass true to delete chat history for all users.
  # @return [TD::Types::Ok]
  def deleteChatHistory(chat_id:, remove_from_chat_list:, revoke:)
    broadcast('@type'                 => 'deleteChatHistory',
              'chat_id'               => chat_id,
              'remove_from_chat_list' => remove_from_chat_list,
              'revoke'                => revoke)
  end
  
  # Deletes all messages between the specified dates in a chat.
  # Supported only for private chats and basic groups.
  # Messages sent in the last 30 seconds will not be deleted.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param min_date [Integer] The minimum date of the messages to delete.
  # @param max_date [Integer] The maximum date of the messages to delete.
  # @param revoke [Boolean] Pass true to delete chat messages for all users; private chats only.
  # @return [TD::Types::Ok]
  def deleteChatMessagesByDate(chat_id:, min_date:, max_date:, revoke:)
    broadcast('@type'    => 'deleteChatMessagesByDate',
              'chat_id'  => chat_id,
              'min_date' => min_date,
              'max_date' => max_date,
              'revoke'   => revoke)
  end
  
  # Deletes all messages sent by the specified message sender in a chat.
  # Supported only for supergroups; requires can_delete_messages administrator privileges.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param sender_id [TD::Types::MessageSender] Identifier of the sender of messages to delete.
  # @return [TD::Types::Ok]
  def deleteChatMessagesBySender(chat_id:, sender_id:)
    broadcast('@type'     => 'deleteChatMessagesBySender',
              'chat_id'   => chat_id,
              'sender_id' => sender_id)
  end
  
  # Deletes the default reply markup from a chat.
  # Must be called after a one-time keyboard or a replyMarkupForceReply reply markup has been used.
  # An updateChatReplyMarkup update will be sent if the reply markup is changed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] The message identifier of the used keyboard.
  # @return [TD::Types::Ok]
  def deleteChatReplyMarkup(chat_id:, message_id:)
    broadcast('@type'      => 'deleteChatReplyMarkup',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Deletes commands supported by the bot for the given user scope and language; for bots only.
  #
  # @param scope [TD::Types::BotCommandScope] The scope to which the commands are relevant; pass null to delete
  #   commands in the default bot command scope.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code or an empty string.
  # @return [TD::Types::Ok]
  def deleteCommands(scope:, language_code:)
    broadcast('@type'         => 'deleteCommands',
              'scope'         => scope,
              'language_code' => language_code)
  end
  
  # Deletes a file from the TDLib file cache.
  #
  # @param file_id [Integer] Identifier of the file to delete.
  # @return [TD::Types::Ok]
  def deleteFile(file_id:)
    broadcast('@type'   => 'deleteFile',
              'file_id' => file_id)
  end
  
  # Deletes all messages in a forum topic; requires can_delete_messages administrator right in the supergroup unless
  #   the user is creator of the topic, the topic has no messages from other users and has at most 11 messages.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @return [TD::Types::Ok]
  def deleteForumTopic(chat_id:, message_thread_id:)
    broadcast('@type'             => 'deleteForumTopic',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Deletes all information about a language pack in the current localization target.
  # The language pack which is currently in use (including base language pack) or is being synchronized can't be
  #   deleted.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Identifier of the language pack to delete.
  # @return [TD::Types::Ok]
  def deleteLanguagePack(language_pack_id:)
    broadcast('@type'            => 'deleteLanguagePack',
              'language_pack_id' => language_pack_id)
  end
  
  # Deletes messages.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_ids [Array<Integer>] Identifiers of the messages to be deleted.
  # @param revoke [Boolean] Pass true to delete messages for all chat members.
  #   Always true for supergroups, channels and secret chats.
  # @return [TD::Types::Ok]
  def deleteMessages(chat_id:, message_ids:, revoke:)
    broadcast('@type'       => 'deleteMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids,
              'revoke'      => revoke)
  end
  
  # Deletes a Telegram Passport element.
  #
  # @param type [TD::Types::PassportElementType] Element type.
  # @return [TD::Types::Ok]
  def deletePassportElement(type:)
    broadcast('@type' => 'deletePassportElement',
              'type'  => type)
  end
  
  # Deletes a profile photo.
  #
  # @param profile_photo_id [Integer] Identifier of the profile photo to delete.
  # @return [TD::Types::Ok]
  def deleteProfilePhoto(profile_photo_id:)
    broadcast('@type'            => 'deleteProfilePhoto',
              'profile_photo_id' => profile_photo_id)
  end
  
  # Deletes revoked chat invite links.
  # Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link to revoke.
  # @return [TD::Types::Ok]
  def deleteRevokedChatInviteLink(chat_id:, invite_link:)
    broadcast('@type'       => 'deleteRevokedChatInviteLink',
              'chat_id'     => chat_id,
              'invite_link' => invite_link)
  end
  
  # Deletes saved credentials for all payment provider bots.
  #
  # @return [TD::Types::Ok]
  def deleteSavedCredentials
    broadcast('@type' => 'deleteSavedCredentials')
  end
  
  # Deletes saved order information.
  #
  # @return [TD::Types::Ok]
  def deleteSavedOrderInfo
    broadcast('@type' => 'deleteSavedOrderInfo')
  end
  
  # Deleted a sticker set; for bots only.
  #
  # @param name [TD::Types::String] Sticker set name.
  # @return [TD::Types::Ok]
  def deleteStickerSet(name:)
    broadcast('@type' => 'deleteStickerSet',
              'name'  => name)
  end
  
  # Closes the TDLib instance, destroying all local data without a proper logout.
  # The current user session will remain in the list of all active sessions.
  # All local data will be destroyed.
  # After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent.
  # Can be called before authorization.
  #
  # @return [TD::Types::Ok]
  def destroy
    broadcast('@type' => 'destroy')
  end
  
  # Disables all active non-editable usernames of a supergroup or channel, requires owner privileges in the supergroup
  #   or channel.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @return [TD::Types::Ok]
  def disableAllSupergroupUsernames(supergroup_id:)
    broadcast('@type'         => 'disableAllSupergroupUsernames',
              'supergroup_id' => supergroup_id)
  end
  
  # Disables the currently enabled proxy.
  # Can be called before authorization.
  #
  # @return [TD::Types::Ok]
  def disableProxy
    broadcast('@type' => 'disableProxy')
  end
  
  # Discards a call.
  #
  # @param call_id [Integer] Call identifier.
  # @param is_disconnected [Boolean] Pass true if the user was disconnected.
  # @param duration [Integer] The call duration, in seconds.
  # @param is_video [Boolean] Pass true if the call was a video call.
  # @param connection_id [Integer] Identifier of the connection used during the call.
  # @return [TD::Types::Ok]
  def discardCall(call_id:, is_disconnected:, duration:, is_video:, connection_id:)
    broadcast('@type'           => 'discardCall',
              'call_id'         => call_id,
              'is_disconnected' => is_disconnected,
              'duration'        => duration,
              'is_video'        => is_video,
              'connection_id'   => connection_id)
  end
  
  # Disconnects all websites from the current user's Telegram account.
  #
  # @return [TD::Types::Ok]
  def disconnectAllWebsites
    broadcast('@type' => 'disconnectAllWebsites')
  end
  
  # Disconnects website from the current user's Telegram account.
  #
  # @param website_id [Integer] Website identifier.
  # @return [TD::Types::Ok]
  def disconnectWebsite(website_id:)
    broadcast('@type'      => 'disconnectWebsite',
              'website_id' => website_id)
  end
  
  # Downloads a file from the cloud.
  # Download progress and completion of the download will be notified through updateFile updates.
  #
  # @param file_id [Integer] Identifier of the file to download.
  # @param priority [Integer] Priority of the download (1-32).
  #   The higher the priority, the earlier the file will be downloaded.
  #   If the priorities of two files are equal, then the last one for which downloadFile/addFileToDownloads was called
  #   will be downloaded first.
  # @param offset [Integer] The starting position from which the file needs to be downloaded.
  # @param limit [Integer] Number of bytes which need to be downloaded starting from the "offset" position before the
  #   download will automatically be canceled; use 0 to download without a limit.
  # @param synchronous [Boolean] Pass true to return response only after the file download has succeeded, has failed,
  #   has been canceled, or a new downloadFile request with different offset/limit parameters was sent; pass false to return
  #   file state immediately, just after the download has been started.
  # @return [TD::Types::File]
  def downloadFile(file_id:, priority:, offset:, limit:, synchronous:)
    broadcast('@type'       => 'downloadFile',
              'file_id'     => file_id,
              'priority'    => priority,
              'offset'      => offset,
              'limit'       => limit,
              'synchronous' => synchronous)
  end
  
  # Edits existing chat filter.
  # Returns information about the edited chat filter.
  #
  # @param chat_filter_id [Integer] Chat filter identifier.
  # @param filter [TD::Types::ChatFilter] The edited chat filter.
  # @return [TD::Types::ChatFilterInfo]
  def editChatFilter(chat_filter_id:, filter:)
    broadcast('@type'          => 'editChatFilter',
              'chat_filter_id' => chat_filter_id,
              'filter'         => filter)
  end
  
  # Edits a non-primary invite link for a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link to be edited.
  # @param name [TD::Types::String] Invite link name; 0-32 characters.
  # @param expiration_date [Integer] Point in time (Unix timestamp) when the link will expire; pass 0 if never.
  # @param member_limit [Integer] The maximum number of chat members that can join the chat via the link
  #   simultaneously; 0-99999; pass 0 if not limited.
  # @param creates_join_request [Boolean] Pass true if users joining the chat via the link need to be approved by chat
  #   administrators.
  #   In this case, member_limit must be 0.
  # @return [TD::Types::ChatInviteLink]
  def editChatInviteLink(chat_id:, invite_link:, name:, expiration_date:, member_limit:, creates_join_request:)
    broadcast('@type'                => 'editChatInviteLink',
              'chat_id'              => chat_id,
              'invite_link'          => invite_link,
              'name'                 => name,
              'expiration_date'      => expiration_date,
              'member_limit'         => member_limit,
              'creates_join_request' => creates_join_request)
  end
  
  # Edits information about a custom local language pack in the current localization target.
  # Can be called before authorization.
  #
  # @param info [TD::Types::LanguagePackInfo] New information about the custom local language pack.
  # @return [TD::Types::Ok]
  def editCustomLanguagePackInfo(info:)
    broadcast('@type' => 'editCustomLanguagePackInfo',
              'info'  => info)
  end
  
  # Edits title and icon of a topic in a forum supergroup chat; requires can_manage_topics administrator right in the
  #   supergroup unless the user is creator of the topic.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @param name [TD::Types::String, nil] New name of the topic; 0-128 characters.
  #   If empty, the previous topic name is kept.
  # @param edit_icon_custom_emoji [Boolean] Pass true to edit the icon of the topic.
  #   Icon of the General topic can't be edited.
  # @param icon_custom_emoji_id [Integer] Identifier of the new custom emoji for topic icon; pass 0 to remove the
  #   custom emoji.
  #   Ignored if edit_icon_custom_emoji is false.
  #   Telegram Premium users can use any custom emoji, other users can use only a custom emoji returned by
  #   getForumTopicDefaultIcons.
  # @return [TD::Types::Ok]
  def editForumTopic(chat_id:, message_thread_id:, name: nil, edit_icon_custom_emoji:, icon_custom_emoji_id:)
    broadcast('@type'                  => 'editForumTopic',
              'chat_id'                => chat_id,
              'message_thread_id'      => message_thread_id,
              'name'                   => name,
              'edit_icon_custom_emoji' => edit_icon_custom_emoji,
              'icon_custom_emoji_id'   => icon_custom_emoji_id)
  end
  
  # Edits the caption of an inline message sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @param caption [TD::Types::FormattedText] New message content caption; pass null to remove caption;
  #   0-getOption("message_caption_length_max") characters.
  # @return [TD::Types::Ok]
  def editInlineMessageCaption(inline_message_id:, reply_markup:, caption:)
    broadcast('@type'             => 'editInlineMessageCaption',
              'inline_message_id' => inline_message_id,
              'reply_markup'      => reply_markup,
              'caption'           => caption)
  end
  
  # Edits the content of a live location in an inline message sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @param location [TD::Types::Location] New location content of the message; pass null to stop sharing the live
  #   location.
  # @param heading [Integer] The new direction in which the location moves, in degrees; 1-360.
  #   Pass 0 if unknown.
  # @param proximity_alert_radius [Integer] The new maximum distance for proximity alerts, in meters (0-100000).
  #   Pass 0 if the notification is disabled.
  # @return [TD::Types::Ok]
  def editInlineMessageLiveLocation(inline_message_id:, reply_markup:, location:, heading:, proximity_alert_radius:)
    broadcast('@type'                  => 'editInlineMessageLiveLocation',
              'inline_message_id'      => inline_message_id,
              'reply_markup'           => reply_markup,
              'location'               => location,
              'heading'                => heading,
              'proximity_alert_radius' => proximity_alert_radius)
  end
  
  # Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message
  #   sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param input_message_content [TD::Types::InputMessageContent] New content of the message.
  #   Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument,
  #   {TD::Types::InputMessageContent::Photo} or inputMessageVideo.
  # @return [TD::Types::Ok]
  def editInlineMessageMedia(inline_message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'editInlineMessageMedia',
              'inline_message_id'     => inline_message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits the reply markup of an inline message sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @return [TD::Types::Ok]
  def editInlineMessageReplyMarkup(inline_message_id:, reply_markup:)
    broadcast('@type'             => 'editInlineMessageReplyMarkup',
              'inline_message_id' => inline_message_id,
              'reply_markup'      => reply_markup)
  end
  
  # Edits the text of an inline text or game message sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @param input_message_content [TD::Types::InputMessageContent] New text content of the message.
  #   Must be of type inputMessageText.
  # @return [TD::Types::Ok]
  def editInlineMessageText(inline_message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'editInlineMessageText',
              'inline_message_id'     => inline_message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits the message content caption.
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param caption [TD::Types::FormattedText] New message content caption; 0-getOption("message_caption_length_max")
  #   characters; pass null to remove caption.
  # @return [TD::Types::Message]
  def editMessageCaption(chat_id:, message_id:, reply_markup:, caption:)
    broadcast('@type'        => 'editMessageCaption',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'reply_markup' => reply_markup,
              'caption'      => caption)
  end
  
  # Edits the message content of a live location.
  # Messages can be edited for a limited period of time specified in the live location.
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param location [TD::Types::Location] New location content of the message; pass null to stop sharing the live
  #   location.
  # @param heading [Integer] The new direction in which the location moves, in degrees; 1-360.
  #   Pass 0 if unknown.
  # @param proximity_alert_radius [Integer] The new maximum distance for proximity alerts, in meters (0-100000).
  #   Pass 0 if the notification is disabled.
  # @return [TD::Types::Message]
  def editMessageLiveLocation(chat_id:, message_id:, reply_markup:, location:, heading:, proximity_alert_radius:)
    broadcast('@type'                  => 'editMessageLiveLocation',
              'chat_id'                => chat_id,
              'message_id'             => message_id,
              'reply_markup'           => reply_markup,
              'location'               => location,
              'heading'                => heading,
              'proximity_alert_radius' => proximity_alert_radius)
  end
  
  # Edits the content of a message with an animation, an audio, a document, a photo or a video, including message
  #   caption.
  # If only the caption needs to be edited, use editMessageCaption instead.
  # The media can't be edited if the message was set to self-destruct or to a self-destructing media.
  # The type of message content in an album can't be changed with exception of replacing a photo with a video or vice
  #   versa.
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param input_message_content [TD::Types::InputMessageContent] New content of the message.
  #   Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument,
  #   {TD::Types::InputMessageContent::Photo} or inputMessageVideo.
  # @return [TD::Types::Message]
  def editMessageMedia(chat_id:, message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'editMessageMedia',
              'chat_id'               => chat_id,
              'message_id'            => message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits the message reply markup; for bots only.
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @return [TD::Types::Message]
  def editMessageReplyMarkup(chat_id:, message_id:, reply_markup:)
    broadcast('@type'        => 'editMessageReplyMarkup',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'reply_markup' => reply_markup)
  end
  
  # Edits the time when a scheduled message will be sent.
  # Scheduling state of all messages in the same album or forwarded together with the message will be also changed.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param scheduling_state [TD::Types::MessageSchedulingState] The new message scheduling state; pass null to send the
  #   message immediately.
  # @return [TD::Types::Ok]
  def editMessageSchedulingState(chat_id:, message_id:, scheduling_state:)
    broadcast('@type'            => 'editMessageSchedulingState',
              'chat_id'          => chat_id,
              'message_id'       => message_id,
              'scheduling_state' => scheduling_state)
  end
  
  # Edits the text of a message (or a text of a game message).
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param input_message_content [TD::Types::InputMessageContent] New text content of the message.
  #   Must be of type inputMessageText.
  # @return [TD::Types::Message]
  def editMessageText(chat_id:, message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'editMessageText',
              'chat_id'               => chat_id,
              'message_id'            => message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits an existing proxy server for network requests.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @param server [TD::Types::String] Proxy server IP address.
  # @param port [Integer] Proxy server port.
  # @param enable [Boolean] Pass true to immediately enable the proxy.
  # @param type [TD::Types::ProxyType] Proxy type.
  # @return [TD::Types::Proxy]
  def editProxy(proxy_id:, server:, port:, enable:, type:)
    broadcast('@type'    => 'editProxy',
              'proxy_id' => proxy_id,
              'server'   => server,
              'port'     => port,
              'enable'   => enable,
              'type'     => type)
  end
  
  # Enables a proxy.
  # Only one proxy can be enabled at a time.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @return [TD::Types::Ok]
  def enableProxy(proxy_id:)
    broadcast('@type'    => 'enableProxy',
              'proxy_id' => proxy_id)
  end
  
  # Ends a group call.
  # Requires groupCall.can_be_managed.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def endGroupCall(group_call_id:)
    broadcast('@type'         => 'endGroupCall',
              'group_call_id' => group_call_id)
  end
  
  # Ends recording of an active group call.
  # Requires groupCall.can_be_managed group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def endGroupCallRecording(group_call_id:)
    broadcast('@type'         => 'endGroupCallRecording',
              'group_call_id' => group_call_id)
  end
  
  # Ends screen sharing in a joined group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def endGroupCallScreenSharing(group_call_id:)
    broadcast('@type'         => 'endGroupCallScreenSharing',
              'group_call_id' => group_call_id)
  end
  
  # Finishes the file generation.
  #
  # @param generation_id [Integer] The identifier of the generation process.
  # @param error [TD::Types::Error] If passed, the file generation has failed and must be terminated; pass null if the
  #   file generation succeeded.
  # @return [TD::Types::Ok]
  def finishFileGeneration(generation_id:, error:)
    broadcast('@type'         => 'finishFileGeneration',
              'generation_id' => generation_id,
              'error'         => error)
  end
  
  # Forwards previously sent messages.
  # Returns the forwarded messages in the same order as the message identifiers passed in message_ids.
  # If a message can't be forwarded, null will be returned instead of the message.
  #
  # @param chat_id [Integer] Identifier of the chat to which to forward messages.
  # @param message_thread_id [Integer] If not 0, a message thread identifier in which the message will be sent; for
  #   forum threads only.
  # @param from_chat_id [Integer] Identifier of the chat from which to forward messages.
  # @param message_ids [Array<Integer>] Identifiers of the messages to forward.
  #   Message identifiers must be in a strictly increasing order.
  #   At most 100 messages can be forwarded simultaneously.
  # @param options [TD::Types::MessageSendOptions] Options to be used to send the messages; pass null to use default
  #   options.
  # @param send_copy [Boolean] Pass true to copy content of the messages without reference to the original sender.
  #   Always true if the messages are forwarded to a secret chat or are local.
  # @param remove_caption [Boolean] Pass true to remove media captions of message copies.
  #   Ignored if send_copy is false.
  # @param only_preview [Boolean] Pass true to get fake messages instead of actually forwarding them.
  # @return [TD::Types::Messages]
  def forwardMessages(chat_id:, message_thread_id:, from_chat_id:, message_ids:, options:, send_copy:, remove_caption:,
                      only_preview:)
    broadcast('@type'             => 'forwardMessages',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'from_chat_id'      => from_chat_id,
              'message_ids'       => message_ids,
              'options'           => options,
              'send_copy'         => send_copy,
              'remove_caption'    => remove_caption,
              'only_preview'      => only_preview)
  end
  
  # Returns the period of inactivity after which the account of the current user will automatically be deleted.
  #
  # @return [TD::Types::AccountTtl]
  def getAccountTtl
    broadcast('@type' => 'getAccountTtl')
  end
  
  # Returns all active live locations that need to be updated by the application.
  # The list is persistent across application restarts only if the message database is used.
  #
  # @return [TD::Types::Messages]
  def getActiveLiveLocationMessages
    broadcast('@type' => 'getActiveLiveLocationMessages')
  end
  
  # Returns all active sessions of the current user.
  #
  # @return [TD::Types::Sessions]
  def getActiveSessions
    broadcast('@type' => 'getActiveSessions')
  end
  
  # Returns all available Telegram Passport elements.
  #
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::PassportElements]
  def getAllPassportElements(password:)
    broadcast('@type'    => 'getAllPassportElements',
              'password' => password)
  end
  
  # Returns an animated emoji corresponding to a given emoji.
  # Returns a 404 error if the emoji has no animated emoji.
  #
  # @param emoji [TD::Types::String] The emoji.
  # @return [TD::Types::AnimatedEmoji]
  def getAnimatedEmoji(emoji:)
    broadcast('@type' => 'getAnimatedEmoji',
              'emoji' => emoji)
  end
  
  # Returns application config, provided by the server.
  # Can be called before authorization.
  #
  # @return [TD::Types::JsonValue]
  def getApplicationConfig
    broadcast('@type' => 'getApplicationConfig')
  end
  
  # Returns the link for downloading official Telegram application to be used when the current user invites friends to
  #   Telegram.
  #
  # @return [TD::Types::HttpUrl]
  def getApplicationDownloadLink
    broadcast('@type' => 'getApplicationDownloadLink')
  end
  
  # Returns a list of archived sticker sets.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to return.
  # @param offset_sticker_set_id [Integer] Identifier of the sticker set from which to return the result.
  # @param limit [Integer] The maximum number of sticker sets to return; up to 100.
  # @return [TD::Types::StickerSets]
  def getArchivedStickerSets(sticker_type:, offset_sticker_set_id:, limit:)
    broadcast('@type'                 => 'getArchivedStickerSets',
              'sticker_type'          => sticker_type,
              'offset_sticker_set_id' => offset_sticker_set_id,
              'limit'                 => limit)
  end
  
  # Returns a list of sticker sets attached to a file, including regular, mask, and emoji sticker sets.
  # Currently, only animations, photos, and videos can have attached sticker sets.
  #
  # @param file_id [Integer] File identifier.
  # @return [TD::Types::StickerSets]
  def getAttachedStickerSets(file_id:)
    broadcast('@type'   => 'getAttachedStickerSets',
              'file_id' => file_id)
  end
  
  # Returns information about a bot that can be added to attachment menu.
  #
  # @param bot_user_id [Integer] Bot's user identifier.
  # @return [TD::Types::AttachmentMenuBot]
  def getAttachmentMenuBot(bot_user_id:)
    broadcast('@type'       => 'getAttachmentMenuBot',
              'bot_user_id' => bot_user_id)
  end
  
  # Returns the current authorization state; this is an offline request.
  # For informational purposes only.
  # Use updateAuthorizationState instead to maintain the current authorization state.
  # Can be called before initialization.
  #
  # @return [TD::Types::AuthorizationState]
  def getAuthorizationState
    broadcast('@type' => 'getAuthorizationState')
  end
  
  # Returns auto-download settings presets for the current user.
  #
  # @return [TD::Types::AutoDownloadSettingsPresets]
  def getAutoDownloadSettingsPresets
    broadcast('@type' => 'getAutoDownloadSettingsPresets')
  end
  
  # Returns autosave settings for the current user.
  #
  # @return [TD::Types::AutosaveSettings]
  def getAutosaveSettings
    broadcast('@type' => 'getAutosaveSettings')
  end
  
  # Constructs a persistent HTTP URL for a background.
  #
  # @param name [TD::Types::String] Background name.
  # @param type [TD::Types::BackgroundType] Background type.
  # @return [TD::Types::HttpUrl]
  def getBackgroundUrl(name:, type:)
    broadcast('@type' => 'getBackgroundUrl',
              'name'  => name,
              'type'  => type)
  end
  
  # Returns backgrounds installed by the user.
  #
  # @param for_dark_theme [Boolean] Pass true to order returned backgrounds for a dark theme.
  # @return [TD::Types::Backgrounds]
  def getBackgrounds(for_dark_theme:)
    broadcast('@type'          => 'getBackgrounds',
              'for_dark_theme' => for_dark_theme)
  end
  
  # Returns information about a bank card.
  #
  # @param bank_card_number [TD::Types::String] The bank card number.
  # @return [TD::Types::BankCardInfo]
  def getBankCardInfo(bank_card_number:)
    broadcast('@type'            => 'getBankCardInfo',
              'bank_card_number' => bank_card_number)
  end
  
  # Returns information about a basic group by its identifier.
  # This is an offline request if the current user is not a bot.
  #
  # @param basic_group_id [Integer] Basic group identifier.
  # @return [TD::Types::BasicGroup]
  def getBasicGroup(basic_group_id:)
    broadcast('@type'          => 'getBasicGroup',
              'basic_group_id' => basic_group_id)
  end
  
  # Returns full information about a basic group by its identifier.
  #
  # @param basic_group_id [Integer] Basic group identifier.
  # @return [TD::Types::BasicGroupFullInfo]
  def getBasicGroupFullInfo(basic_group_id:)
    broadcast('@type'          => 'getBasicGroupFullInfo',
              'basic_group_id' => basic_group_id)
  end
  
  # Returns users and chats that were blocked by the current user.
  #
  # @param offset [Integer] Number of users and chats to skip in the result; must be non-negative.
  # @param limit [Integer] The maximum number of users and chats to return; up to 100.
  # @return [TD::Types::MessageSenders]
  def getBlockedMessageSenders(offset:, limit:)
    broadcast('@type'  => 'getBlockedMessageSenders',
              'offset' => offset,
              'limit'  => limit)
  end
  
  # Returns the text shown in the chat with the bot if the chat is empty in the given language; bots only.
  #
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code or an empty string.
  # @return [TD::Types::Text]
  def getBotInfoDescription(language_code:)
    broadcast('@type'         => 'getBotInfoDescription',
              'language_code' => language_code)
  end
  
  # Returns the text shown on the bot's profile page and sent together with the link when users share the bot in the
  #   given language; bots only.
  #
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code or an empty string.
  # @return [TD::Types::Text]
  def getBotInfoShortDescription(language_code:)
    broadcast('@type'         => 'getBotInfoShortDescription',
              'language_code' => language_code)
  end
  
  # Sends a callback query to a bot and returns an answer.
  # Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  #
  # @param chat_id [Integer] Identifier of the chat with the message.
  # @param message_id [Integer] Identifier of the message from which the query originated.
  # @param payload [TD::Types::CallbackQueryPayload] Query payload.
  # @return [TD::Types::CallbackQueryAnswer]
  def getCallbackQueryAnswer(chat_id:, message_id:, payload:)
    broadcast('@type'      => 'getCallbackQueryAnswer',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'payload'    => payload)
  end
  
  # Returns information about a message with the callback button that originated a callback query; for bots only.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Message identifier.
  # @param callback_query_id [Integer] Identifier of the callback query.
  # @return [TD::Types::Message]
  def getCallbackQueryMessage(chat_id:, message_id:, callback_query_id:)
    broadcast('@type'             => 'getCallbackQueryMessage',
              'chat_id'           => chat_id,
              'message_id'        => message_id,
              'callback_query_id' => callback_query_id)
  end
  
  # Returns information about a chat by its identifier, this is an offline request if the current user is not a bot.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Chat]
  def getChat(chat_id:)
    broadcast('@type'   => 'getChat',
              'chat_id' => chat_id)
  end
  
  # Returns a list of administrators of the chat with their custom titles.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatAdministrators]
  def getChatAdministrators(chat_id:)
    broadcast('@type'   => 'getChatAdministrators',
              'chat_id' => chat_id)
  end
  
  # Returns list of message sender identifiers, which can be used to send messages in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatMessageSenders]
  def getChatAvailableMessageSenders(chat_id:)
    broadcast('@type'   => 'getChatAvailableMessageSenders',
              'chat_id' => chat_id)
  end
  
  # Returns a list of service actions taken by chat members and administrators in the last 48 hours.
  # Available only for supergroups and channels.
  # Requires administrator rights.
  # Returns results in reverse chronological order (i.e., in order of decreasing event_id).
  #
  # @param chat_id [Integer] Chat identifier.
  # @param query [TD::Types::String] Search query by which to filter events.
  # @param from_event_id [Integer] Identifier of an event from which to return results.
  #   Use 0 to get results from the latest events.
  # @param limit [Integer] The maximum number of events to return; up to 100.
  # @param filters [TD::Types::ChatEventLogFilters] The types of events to return; pass null to get chat events of all
  #   types.
  # @param user_ids [Array<Integer>] User identifiers by which to filter events.
  #   By default, events relating to all users will be returned.
  # @return [TD::Types::ChatEvents]
  def getChatEventLog(chat_id:, query:, from_event_id:, limit:, filters:, user_ids:)
    broadcast('@type'         => 'getChatEventLog',
              'chat_id'       => chat_id,
              'query'         => query,
              'from_event_id' => from_event_id,
              'limit'         => limit,
              'filters'       => filters,
              'user_ids'      => user_ids)
  end
  
  # Returns information about a chat filter by its identifier.
  #
  # @param chat_filter_id [Integer] Chat filter identifier.
  # @return [TD::Types::ChatFilter]
  def getChatFilter(chat_filter_id:)
    broadcast('@type'          => 'getChatFilter',
              'chat_filter_id' => chat_filter_id)
  end
  
  # Returns default icon name for a filter.
  # Can be called synchronously.
  #
  # @param filter [TD::Types::ChatFilter] Chat filter.
  # @return [TD::Types::Text]
  def getChatFilterDefaultIconName(filter:)
    broadcast('@type'  => 'getChatFilterDefaultIconName',
              'filter' => filter)
  end
  
  # Returns messages in a chat.
  # The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
  # For optimal performance, the number of returned messages is chosen by TDLib.
  # This is an offline request if only_local is true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param from_message_id [Integer] Identifier of the message starting from which history must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to
  #   get additionally some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than or equal to -offset.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param only_local [Boolean] Pass true to get only messages that are available without sending network requests.
  # @return [TD::Types::Messages]
  def getChatHistory(chat_id:, from_message_id:, offset:, limit:, only_local:)
    broadcast('@type'           => 'getChatHistory',
              'chat_id'         => chat_id,
              'from_message_id' => from_message_id,
              'offset'          => offset,
              'limit'           => limit,
              'only_local'      => only_local)
  end
  
  # Returns information about an invite link.
  # Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to
  #   get other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link to get.
  # @return [TD::Types::ChatInviteLink]
  def getChatInviteLink(chat_id:, invite_link:)
    broadcast('@type'       => 'getChatInviteLink',
              'chat_id'     => chat_id,
              'invite_link' => invite_link)
  end
  
  # Returns list of chat administrators with number of their invite links.
  # Requires owner privileges in the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatInviteLinkCounts]
  def getChatInviteLinkCounts(chat_id:)
    broadcast('@type'   => 'getChatInviteLinkCounts',
              'chat_id' => chat_id)
  end
  
  # Returns chat members joined a chat via an invite link.
  # Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link for which to return chat members.
  # @param offset_member [TD::Types::ChatInviteLinkMember] A chat member from which to return next chat members; pass
  #   null to get results from the beginning.
  # @param limit [Integer] The maximum number of chat members to return; up to 100.
  # @return [TD::Types::ChatInviteLinkMembers]
  def getChatInviteLinkMembers(chat_id:, invite_link:, offset_member:, limit:)
    broadcast('@type'         => 'getChatInviteLinkMembers',
              'chat_id'       => chat_id,
              'invite_link'   => invite_link,
              'offset_member' => offset_member,
              'limit'         => limit)
  end
  
  # Returns invite links for a chat created by specified administrator.
  # Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to
  #   get other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param creator_user_id [Integer] User identifier of a chat administrator.
  #   Must be an identifier of the current user for non-owner.
  # @param is_revoked [Boolean] Pass true if revoked links needs to be returned instead of active or expired.
  # @param offset_date [Integer] Creation date of an invite link starting after which to return invite links; use 0 to
  #   get results from the beginning.
  # @param offset_invite_link [TD::Types::String] Invite link starting after which to return invite links; use empty
  #   string to get results from the beginning.
  # @param limit [Integer] The maximum number of invite links to return; up to 100.
  # @return [TD::Types::ChatInviteLinks]
  def getChatInviteLinks(chat_id:, creator_user_id:, is_revoked:, offset_date:, offset_invite_link:, limit:)
    broadcast('@type'              => 'getChatInviteLinks',
              'chat_id'            => chat_id,
              'creator_user_id'    => creator_user_id,
              'is_revoked'         => is_revoked,
              'offset_date'        => offset_date,
              'offset_invite_link' => offset_invite_link,
              'limit'              => limit)
  end
  
  # Returns pending join requests in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link for which to return join requests.
  #   If empty, all join requests will be returned.
  #   Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  # @param query [TD::Types::String] A query to search for in the first names, last names and usernames of the users to
  #   return.
  # @param offset_request [TD::Types::ChatJoinRequest] A chat join request from which to return next requests; pass
  #   null to get results from the beginning.
  # @param limit [Integer] The maximum number of requests to join the chat to return.
  # @return [TD::Types::ChatJoinRequests]
  def getChatJoinRequests(chat_id:, invite_link:, query:, offset_request:, limit:)
    broadcast('@type'          => 'getChatJoinRequests',
              'chat_id'        => chat_id,
              'invite_link'    => invite_link,
              'query'          => query,
              'offset_request' => offset_request,
              'limit'          => limit)
  end
  
  # Returns chat lists to which the chat can be added.
  # This is an offline request.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatLists]
  def getChatListsToAddChat(chat_id:)
    broadcast('@type'   => 'getChatListsToAddChat',
              'chat_id' => chat_id)
  end
  
  # Returns information about a single member of a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param member_id [TD::Types::MessageSender] Member identifier.
  # @return [TD::Types::ChatMember]
  def getChatMember(chat_id:, member_id:)
    broadcast('@type'     => 'getChatMember',
              'chat_id'   => chat_id,
              'member_id' => member_id)
  end
  
  # Returns the last message sent in a chat no later than the specified date.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param date [Integer] Point in time (Unix timestamp) relative to which to search for messages.
  # @return [TD::Types::Message]
  def getChatMessageByDate(chat_id:, date:)
    broadcast('@type'   => 'getChatMessageByDate',
              'chat_id' => chat_id,
              'date'    => date)
  end
  
  # Returns information about the next messages of the specified type in the chat split by days.
  # Returns the results in reverse chronological order.
  # Can return partial result for the last returned day.
  # Behavior of this method depends on the value of the option "utc_time_offset".
  #
  # @param chat_id [Integer] Identifier of the chat in which to return information about messages.
  # @param filter [TD::Types::SearchMessagesFilter] Filter for message content.
  #   Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and
  #   {TD::Types::SearchMessagesFilter::UnreadReaction} are unsupported in this function.
  # @param from_message_id [Integer] The message identifier from which to return information about messages; use 0 to
  #   get results from the last message.
  # @return [TD::Types::MessageCalendar]
  def getChatMessageCalendar(chat_id:, filter:, from_message_id:)
    broadcast('@type'           => 'getChatMessageCalendar',
              'chat_id'         => chat_id,
              'filter'          => filter,
              'from_message_id' => from_message_id)
  end
  
  # Returns approximate number of messages of the specified type in the chat.
  #
  # @param chat_id [Integer] Identifier of the chat in which to count messages.
  # @param filter [TD::Types::SearchMessagesFilter] Filter for message content;
  #   {TD::Types::SearchMessagesFilter::Empty} is unsupported in this function.
  # @param return_local [Boolean] Pass true to get the number of messages without sending network requests, or -1 if
  #   the number of messages is unknown locally.
  # @return [TD::Types::Count]
  def getChatMessageCount(chat_id:, filter:, return_local:)
    broadcast('@type'        => 'getChatMessageCount',
              'chat_id'      => chat_id,
              'filter'       => filter,
              'return_local' => return_local)
  end
  
  # Returns approximate 1-based position of a message among messages, which can be found by the specified filter in the
  #   chat.
  # Cannot be used in secret chats.
  #
  # @param chat_id [Integer] Identifier of the chat in which to find message position.
  # @param message_id [Integer] Message identifier.
  # @param filter [TD::Types::SearchMessagesFilter] Filter for message content; searchMessagesFilterEmpty,
  #   searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and
  #   {TD::Types::SearchMessagesFilter::FailedToSend} are unsupported in this function.
  # @param message_thread_id [Integer] If not 0, only messages in the specified thread will be considered; supergroups
  #   only.
  # @return [TD::Types::Count]
  def getChatMessagePosition(chat_id:, message_id:, filter:, message_thread_id:)
    broadcast('@type'             => 'getChatMessagePosition',
              'chat_id'           => chat_id,
              'message_id'        => message_id,
              'filter'            => filter,
              'message_thread_id' => message_thread_id)
  end
  
  # Returns list of chats with non-default notification settings.
  #
  # @param scope [TD::Types::NotificationSettingsScope] If specified, only chats from the scope will be returned; pass
  #   null to return chats from all scopes.
  # @param compare_sound [Boolean] Pass true to include in the response chats with only non-default sound.
  # @return [TD::Types::Chats]
  def getChatNotificationSettingsExceptions(scope:, compare_sound:)
    broadcast('@type'         => 'getChatNotificationSettingsExceptions',
              'scope'         => scope,
              'compare_sound' => compare_sound)
  end
  
  # Returns information about a newest pinned message in the chat.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @return [TD::Types::Message]
  def getChatPinnedMessage(chat_id:)
    broadcast('@type'   => 'getChatPinnedMessage',
              'chat_id' => chat_id)
  end
  
  # Returns all scheduled messages in a chat.
  # The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Messages]
  def getChatScheduledMessages(chat_id:)
    broadcast('@type'   => 'getChatScheduledMessages',
              'chat_id' => chat_id)
  end
  
  # Returns sparse positions of messages of the specified type in the chat to be used for shared media scroll
  #   implementation.
  # Returns the results in reverse chronological order (i.e., in order of decreasing message_id).
  # Cannot be used in secret chats or with searchMessagesFilterFailedToSend filter without an enabled message database.
  #
  # @param chat_id [Integer] Identifier of the chat in which to return information about message positions.
  # @param filter [TD::Types::SearchMessagesFilter] Filter for message content.
  #   Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and
  #   {TD::Types::SearchMessagesFilter::UnreadReaction} are unsupported in this function.
  # @param from_message_id [Integer] The message identifier from which to return information about message positions.
  # @param limit [Integer] The expected number of message positions to be returned; 50-2000.
  #   A smaller number of positions can be returned, if there are not enough appropriate messages.
  # @return [TD::Types::MessagePositions]
  def getChatSparseMessagePositions(chat_id:, filter:, from_message_id:, limit:)
    broadcast('@type'           => 'getChatSparseMessagePositions',
              'chat_id'         => chat_id,
              'filter'          => filter,
              'from_message_id' => from_message_id,
              'limit'           => limit)
  end
  
  # Returns sponsored messages to be shown in a chat; for channel chats only.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @return [TD::Types::SponsoredMessages]
  def getChatSponsoredMessages(chat_id:)
    broadcast('@type'   => 'getChatSponsoredMessages',
              'chat_id' => chat_id)
  end
  
  # Returns detailed statistics about a chat.
  # Currently, this method can be used only for supergroups and channels.
  # Can be used only if supergroupFullInfo.can_get_statistics == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_dark [Boolean] Pass true if a dark theme is used by the application.
  # @return [TD::Types::ChatStatistics]
  def getChatStatistics(chat_id:, is_dark:)
    broadcast('@type'   => 'getChatStatistics',
              'chat_id' => chat_id,
              'is_dark' => is_dark)
  end
  
  # Returns an ordered list of chats from the beginning of a chat list.
  # For informational purposes only.
  # Use loadChats and updates processing instead to maintain chat lists in a consistent state.
  #
  # @param chat_list [TD::Types::ChatList] The chat list in which to return chats; pass null to get chats from the main
  #   chat list.
  # @param limit [Integer] The maximum number of chats to be returned.
  # @return [TD::Types::Chats]
  def getChats(chat_list:, limit:)
    broadcast('@type'     => 'getChats',
              'chat_list' => chat_list,
              'limit'     => limit)
  end
  
  # Returns list of commands supported by the bot for the given user scope and language; for bots only.
  #
  # @param scope [TD::Types::BotCommandScope] The scope to which the commands are relevant; pass null to get commands
  #   in the default bot command scope.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code or an empty string.
  # @return [TD::Types::BotCommands]
  def getCommands(scope:, language_code:)
    broadcast('@type'         => 'getCommands',
              'scope'         => scope,
              'language_code' => language_code)
  end
  
  # Returns all website where the current user used Telegram to log in.
  #
  # @return [TD::Types::ConnectedWebsites]
  def getConnectedWebsites
    broadcast('@type' => 'getConnectedWebsites')
  end
  
  # Returns all user contacts.
  #
  # @return [TD::Types::Users]
  def getContacts
    broadcast('@type' => 'getContacts')
  end
  
  # Returns information about existing countries.
  # Can be called before authorization.
  #
  # @return [TD::Types::Countries]
  def getCountries
    broadcast('@type' => 'getCountries')
  end
  
  # Uses the current IP address to find the current country.
  # Returns two-letter ISO 3166-1 alpha-2 country code.
  # Can be called before authorization.
  #
  # @return [TD::Types::Text]
  def getCountryCode
    broadcast('@type' => 'getCountryCode')
  end
  
  # Returns a list of public chats of the specified type, owned by the user.
  #
  # @param type [TD::Types::PublicChatType] Type of the public chats to return.
  # @return [TD::Types::Chats]
  def getCreatedPublicChats(type:)
    broadcast('@type' => 'getCreatedPublicChats',
              'type'  => type)
  end
  
  # Returns all updates needed to restore current TDLib state, i.e.
  # all actual updateAuthorizationState/updateUser/updateNewChat and others.
  # This is especially useful if TDLib is run in a separate process.
  # Can be called before initialization.
  #
  # @return [TD::Types::Updates]
  def getCurrentState
    broadcast('@type' => 'getCurrentState')
  end
  
  # Returns TGS stickers with generic animations for custom emoji reactions.
  #
  # @return [TD::Types::Stickers]
  def getCustomEmojiReactionAnimations
    broadcast('@type' => 'getCustomEmojiReactionAnimations')
  end
  
  # Returns list of custom emoji stickers by their identifiers.
  # Stickers are returned in arbitrary order.
  # Only found stickers are returned.
  #
  # @param custom_emoji_ids [Array<Integer>] Identifiers of custom emoji stickers.
  #   At most 200 custom emoji stickers can be received simultaneously.
  # @return [TD::Types::Stickers]
  def getCustomEmojiStickers(custom_emoji_ids:)
    broadcast('@type'            => 'getCustomEmojiStickers',
              'custom_emoji_ids' => custom_emoji_ids)
  end
  
  # Returns database statistics.
  #
  # @return [TD::Types::DatabaseStatistics]
  def getDatabaseStatistics
    broadcast('@type' => 'getDatabaseStatistics')
  end
  
  # Returns information about a tg:// deep link.
  # Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing.
  # Returns a 404 error for unknown links.
  # Can be called before authorization.
  #
  # @param link [TD::Types::String] The link.
  # @return [TD::Types::DeepLinkInfo]
  def getDeepLinkInfo(link:)
    broadcast('@type' => 'getDeepLinkInfo',
              'link'  => link)
  end
  
  # Returns default list of custom emoji stickers for placing on a chat photo.
  #
  # @return [TD::Types::Stickers]
  def getDefaultChatPhotoCustomEmojiStickers
    broadcast('@type' => 'getDefaultChatPhotoCustomEmojiStickers')
  end
  
  # Returns default emoji statuses.
  #
  # @return [TD::Types::EmojiStatuses]
  def getDefaultEmojiStatuses
    broadcast('@type' => 'getDefaultEmojiStatuses')
  end
  
  # Returns default message auto-delete time setting for new chats.
  #
  # @return [TD::Types::MessageAutoDeleteTime]
  def getDefaultMessageAutoDeleteTime
    broadcast('@type' => 'getDefaultMessageAutoDeleteTime')
  end
  
  # Returns default list of custom emoji stickers for placing on a profile photo.
  #
  # @return [TD::Types::Stickers]
  def getDefaultProfilePhotoCustomEmojiStickers
    broadcast('@type' => 'getDefaultProfilePhotoCustomEmojiStickers')
  end
  
  # Returns available emojis categories.
  #
  # @param type [TD::Types::EmojiCategoryType] Type of emoji categories to return; pass null to get default emoji
  #   categories.
  # @return [TD::Types::EmojiCategories]
  def getEmojiCategories(type:)
    broadcast('@type' => 'getEmojiCategories',
              'type'  => type)
  end
  
  # Returns information about a emoji reaction.
  # Returns a 404 error if the reaction is not found.
  #
  # @param emoji [TD::Types::String] Text representation of the reaction.
  # @return [TD::Types::EmojiReaction]
  def getEmojiReaction(emoji:)
    broadcast('@type' => 'getEmojiReaction',
              'emoji' => emoji)
  end
  
  # Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji
  #   replacements.
  # The URL will be valid for 30 seconds after generation.
  #
  # @param language_code [TD::Types::String] Language code for which the emoji replacements will be suggested.
  # @return [TD::Types::HttpUrl]
  def getEmojiSuggestionsUrl(language_code:)
    broadcast('@type'         => 'getEmojiSuggestionsUrl',
              'language_code' => language_code)
  end
  
  # Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an
  #   HTTP link.
  # Use the method getExternalLinkInfo to find whether a prior user confirmation is needed.
  #
  # @param link [TD::Types::String] The HTTP link.
  # @param allow_write_access [Boolean] Pass true if the current user allowed the bot, returned in getExternalLinkInfo,
  #   to send them messages.
  # @return [TD::Types::HttpUrl]
  def getExternalLink(link:, allow_write_access:)
    broadcast('@type'              => 'getExternalLink',
              'link'               => link,
              'allow_write_access' => allow_write_access)
  end
  
  # Returns information about an action to be done when the current user clicks an external link.
  # Don't use this method for links from secret chats if web page preview is disabled in secret chats.
  #
  # @param link [TD::Types::String] The link.
  # @return [TD::Types::LoginUrlInfo]
  def getExternalLinkInfo(link:)
    broadcast('@type' => 'getExternalLinkInfo',
              'link'  => link)
  end
  
  # Returns favorite stickers.
  #
  # @return [TD::Types::Stickers]
  def getFavoriteStickers
    broadcast('@type' => 'getFavoriteStickers')
  end
  
  # Returns information about a file; this is an offline request.
  #
  # @param file_id [Integer] Identifier of the file to get.
  # @return [TD::Types::File]
  def getFile(file_id:)
    broadcast('@type'   => 'getFile',
              'file_id' => file_id)
  end
  
  # Returns file downloaded prefix size from a given offset, in bytes.
  #
  # @param file_id [Integer] Identifier of the file.
  # @param offset [Integer] Offset from which downloaded prefix size needs to be calculated.
  # @return [TD::Types::FileDownloadedPrefixSize]
  def getFileDownloadedPrefixSize(file_id:, offset:)
    broadcast('@type'   => 'getFileDownloadedPrefixSize',
              'file_id' => file_id,
              'offset'  => offset)
  end
  
  # Returns the extension of a file, guessed by its MIME type.
  # Returns an empty string on failure.
  # Can be called synchronously.
  #
  # @param mime_type [TD::Types::String] The MIME type of the file.
  # @return [TD::Types::Text]
  def getFileExtension(mime_type:)
    broadcast('@type'     => 'getFileExtension',
              'mime_type' => mime_type)
  end
  
  # Returns the MIME type of a file, guessed by its extension.
  # Returns an empty string on failure.
  # Can be called synchronously.
  #
  # @param file_name [TD::Types::String] The name of the file or path to the file.
  # @return [TD::Types::Text]
  def getFileMimeType(file_name:)
    broadcast('@type'     => 'getFileMimeType',
              'file_name' => file_name)
  end
  
  # Returns information about a forum topic.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @return [TD::Types::ForumTopic]
  def getForumTopic(chat_id:, message_thread_id:)
    broadcast('@type'             => 'getForumTopic',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Returns list of custom emojis, which can be used as forum topic icon by all users.
  #
  # @return [TD::Types::Stickers]
  def getForumTopicDefaultIcons
    broadcast('@type' => 'getForumTopicDefaultIcons')
  end
  
  # Returns an HTTPS link to a topic in a forum chat.
  # This is an offline request.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @return [TD::Types::MessageLink]
  def getForumTopicLink(chat_id:, message_thread_id:)
    broadcast('@type'             => 'getForumTopicLink',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Returns found forum topics in a forum chat.
  # This is a temporary method for getting information about topic list from the server.
  #
  # @param chat_id [Integer] Identifier of the forum chat.
  # @param query [TD::Types::String] Query to search for in the forum topic's name.
  # @param offset_date [Integer] The date starting from which the results need to be fetched.
  #   Use 0 or any date in the future to get results from the last topic.
  # @param offset_message_id [Integer] The message identifier of the last message in the last found topic, or 0 for the
  #   first request.
  # @param offset_message_thread_id [Integer] The message thread identifier of the last found topic, or 0 for the first
  #   request.
  # @param limit [Integer] The maximum number of forum topics to be returned; up to 100.
  #   For optimal performance, the number of returned forum topics is chosen by TDLib and can be smaller than the
  #   specified limit.
  # @return [TD::Types::ForumTopics]
  def getForumTopics(chat_id:, query:, offset_date:, offset_message_id:, offset_message_thread_id:, limit:)
    broadcast('@type'                    => 'getForumTopics',
              'chat_id'                  => chat_id,
              'query'                    => query,
              'offset_date'              => offset_date,
              'offset_message_id'        => offset_message_id,
              'offset_message_thread_id' => offset_message_thread_id,
              'limit'                    => limit)
  end
  
  # Returns the high scores for a game and some part of the high score table in the range of the specified user; for
  #   bots only.
  #
  # @param chat_id [Integer] The chat that contains the message with the game.
  # @param message_id [Integer] Identifier of the message.
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::GameHighScores]
  def getGameHighScores(chat_id:, message_id:, user_id:)
    broadcast('@type'      => 'getGameHighScores',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'user_id'    => user_id)
  end
  
  # Returns information about a group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::GroupCall]
  def getGroupCall(group_call_id:)
    broadcast('@type'         => 'getGroupCall',
              'group_call_id' => group_call_id)
  end
  
  # Returns invite link to a video chat in a public chat.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param can_self_unmute [Boolean] Pass true if the invite link needs to contain an invite hash, passing which to
  #   joinGroupCall would allow the invited user to unmute themselves.
  #   Requires groupCall.can_be_managed group call flag.
  # @return [TD::Types::HttpUrl]
  def getGroupCallInviteLink(group_call_id:, can_self_unmute:)
    broadcast('@type'           => 'getGroupCallInviteLink',
              'group_call_id'   => group_call_id,
              'can_self_unmute' => can_self_unmute)
  end
  
  # Returns a file with a segment of a group call stream in a modified OGG format for audio or MPEG-4 format for video.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param time_offset [Integer] Point in time when the stream segment begins; Unix timestamp in milliseconds.
  # @param scale [Integer] Segment duration scale; 0-1.
  #   Segment's duration is 1000/(2**scale) milliseconds.
  # @param channel_id [Integer] Identifier of an audio/video channel to get as received from tgcalls.
  # @param video_quality [TD::Types::GroupCallVideoQuality] Video quality as received from tgcalls; pass null to get
  #   the worst available quality.
  # @return [TD::Types::FilePart]
  def getGroupCallStreamSegment(group_call_id:, time_offset:, scale:, channel_id:, video_quality:)
    broadcast('@type'         => 'getGroupCallStreamSegment',
              'group_call_id' => group_call_id,
              'time_offset'   => time_offset,
              'scale'         => scale,
              'channel_id'    => channel_id,
              'video_quality' => video_quality)
  end
  
  # Returns information about available group call streams.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::GroupCallStreams]
  def getGroupCallStreams(group_call_id:)
    broadcast('@type'         => 'getGroupCallStreams',
              'group_call_id' => group_call_id)
  end
  
  # Returns a list of common group chats with a given user.
  # Chats are sorted by their type and creation date.
  #
  # @param user_id [Integer] User identifier.
  # @param offset_chat_id [Integer] Chat identifier starting from which to return chats; use 0 for the first request.
  # @param limit [Integer] The maximum number of chats to be returned; up to 100.
  # @return [TD::Types::Chats]
  def getGroupsInCommon(user_id:, offset_chat_id:, limit:)
    broadcast('@type'          => 'getGroupsInCommon',
              'user_id'        => user_id,
              'offset_chat_id' => offset_chat_id,
              'limit'          => limit)
  end
  
  # Returns the total number of imported contacts.
  #
  # @return [TD::Types::Count]
  def getImportedContactCount
    broadcast('@type' => 'getImportedContactCount')
  end
  
  # Returns a list of recently inactive supergroups and channels.
  # Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH
  #   error.
  # Also, the limit can be increased with Telegram Premium.
  #
  # @return [TD::Types::Chats]
  def getInactiveSupergroupChats
    broadcast('@type' => 'getInactiveSupergroupChats')
  end
  
  # Returns game high scores and some part of the high score table in the range of the specified user; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::GameHighScores]
  def getInlineGameHighScores(inline_message_id:, user_id:)
    broadcast('@type'             => 'getInlineGameHighScores',
              'inline_message_id' => inline_message_id,
              'user_id'           => user_id)
  end
  
  # Sends an inline query to a bot and returns its results.
  # Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  #
  # @param bot_user_id [Integer] The identifier of the target bot.
  # @param chat_id [Integer] Identifier of the chat where the query was sent.
  # @param user_location [TD::Types::Location] Location of the user; pass null if unknown or the bot doesn't need
  #   user's location.
  # @param query [TD::Types::String] Text of the query.
  # @param offset [TD::Types::String] Offset of the first entry to return.
  # @return [TD::Types::InlineQueryResults]
  def getInlineQueryResults(bot_user_id:, chat_id:, user_location:, query:, offset:)
    broadcast('@type'         => 'getInlineQueryResults',
              'bot_user_id'   => bot_user_id,
              'chat_id'       => chat_id,
              'user_location' => user_location,
              'query'         => query,
              'offset'        => offset)
  end
  
  # Returns a list of installed sticker sets.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to return.
  # @return [TD::Types::StickerSets]
  def getInstalledStickerSets(sticker_type:)
    broadcast('@type'        => 'getInstalledStickerSets',
              'sticker_type' => sticker_type)
  end
  
  # Returns an HTTPS or a tg: link with the given type.
  # Can be called before authorization.
  #
  # @param type [TD::Types::InternalLinkType] Expected type of the link.
  # @param is_http [Boolean] Pass true to create an HTTPS link (only available for some link types); pass false to
  #   create a tg: link.
  # @return [TD::Types::HttpUrl]
  def getInternalLink(type:, is_http:)
    broadcast('@type'   => 'getInternalLink',
              'type'    => type,
              'is_http' => is_http)
  end
  
  # Returns information about the type of an internal link.
  # Returns a 404 error if the link is not internal.
  # Can be called before authorization.
  #
  # @param link [TD::Types::String] The link.
  # @return [TD::Types::InternalLinkType]
  def getInternalLinkType(link:)
    broadcast('@type' => 'getInternalLinkType',
              'link'  => link)
  end
  
  # Converts a JsonValue object to corresponding JSON-serialized string.
  # Can be called synchronously.
  #
  # @param json_value [TD::Types::JsonValue] The {TD::Types::JsonValue} object.
  # @return [TD::Types::Text]
  def getJsonString(json_value:)
    broadcast('@type'      => 'getJsonString',
              'json_value' => json_value)
  end
  
  # Converts a JSON-serialized string to corresponding JsonValue object.
  # Can be called synchronously.
  #
  # @param json [TD::Types::String] The JSON-serialized string.
  # @return [TD::Types::JsonValue]
  def getJsonValue(json:)
    broadcast('@type' => 'getJsonValue',
              'json'  => json)
  end
  
  # Returns information about a language pack.
  # Returned language pack identifier may be different from a provided one.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Language pack identifier.
  # @return [TD::Types::LanguagePackInfo]
  def getLanguagePackInfo(language_pack_id:)
    broadcast('@type'            => 'getLanguagePackInfo',
              'language_pack_id' => language_pack_id)
  end
  
  # Returns a string stored in the local database from the specified localization target and language pack by its key.
  # Returns a 404 error if the string is not found.
  # Can be called synchronously.
  #
  # @param language_pack_database_path [TD::Types::String] Path to the language pack database in which strings are
  #   stored.
  # @param localization_target [TD::Types::String] Localization target to which the language pack belongs.
  # @param language_pack_id [TD::Types::String] Language pack identifier.
  # @param key [TD::Types::String] Language pack key of the string to be returned.
  # @return [TD::Types::LanguagePackStringValue]
  def getLanguagePackString(language_pack_database_path:, localization_target:, language_pack_id:, key:)
    broadcast('@type'                       => 'getLanguagePackString',
              'language_pack_database_path' => language_pack_database_path,
              'localization_target'         => localization_target,
              'language_pack_id'            => language_pack_id,
              'key'                         => key)
  end
  
  # Returns strings from a language pack in the current localization target by their keys.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Language pack identifier of the strings to be returned.
  # @param keys [Array<TD::Types::String>] Language pack keys of the strings to be returned; leave empty to request all
  #   available strings.
  # @return [TD::Types::LanguagePackStrings]
  def getLanguagePackStrings(language_pack_id:, keys:)
    broadcast('@type'            => 'getLanguagePackStrings',
              'language_pack_id' => language_pack_id,
              'keys'             => keys)
  end
  
  # Returns information about the current localization target.
  # This is an offline request if only_local is true.
  # Can be called before authorization.
  #
  # @param only_local [Boolean] Pass true to get only locally available information without sending network requests.
  # @return [TD::Types::LocalizationTargetInfo]
  def getLocalizationTargetInfo(only_local:)
    broadcast('@type'      => 'getLocalizationTargetInfo',
              'only_local' => only_local)
  end
  
  # Returns information about currently used log stream for internal logging of TDLib.
  # Can be called synchronously.
  #
  # @return [TD::Types::LogStream]
  def getLogStream
    broadcast('@type' => 'getLogStream')
  end
  
  # Returns current verbosity level for a specified TDLib internal log tag.
  # Can be called synchronously.
  #
  # @param tag [TD::Types::String] Logging tag to change verbosity level.
  # @return [TD::Types::LogVerbosityLevel]
  def getLogTagVerbosityLevel(tag:)
    broadcast('@type' => 'getLogTagVerbosityLevel',
              'tag'   => tag)
  end
  
  # Returns list of available TDLib internal log tags, for example, ["actor", "binlog", "connections", "notifications",
  #   "proxy"].
  # Can be called synchronously.
  #
  # @return [TD::Types::LogTags]
  def getLogTags
    broadcast('@type' => 'getLogTags')
  end
  
  # Returns current verbosity level of the internal logging of TDLib.
  # Can be called synchronously.
  #
  # @return [TD::Types::LogVerbosityLevel]
  def getLogVerbosityLevel
    broadcast('@type' => 'getLogVerbosityLevel')
  end
  
  # Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline
  #   button of type inlineKeyboardButtonTypeLoginUrl.
  # Use the method getLoginUrlInfo to find whether a prior user confirmation is needed.
  # If an error is returned, then the button must be handled as an ordinary URL button.
  #
  # @param chat_id [Integer] Chat identifier of the message with the button.
  # @param message_id [Integer] Message identifier of the message with the button.
  # @param button_id [Integer] Button identifier.
  # @param allow_write_access [Boolean] Pass true to allow the bot to send messages to the current user.
  # @return [TD::Types::HttpUrl]
  def getLoginUrl(chat_id:, message_id:, button_id:, allow_write_access:)
    broadcast('@type'              => 'getLoginUrl',
              'chat_id'            => chat_id,
              'message_id'         => message_id,
              'button_id'          => button_id,
              'allow_write_access' => allow_write_access)
  end
  
  # Returns information about a button of type inlineKeyboardButtonTypeLoginUrl.
  # The method needs to be called when the user presses the button.
  #
  # @param chat_id [Integer] Chat identifier of the message with the button.
  # @param message_id [Integer] Message identifier of the message with the button.
  # @param button_id [Integer] Button identifier.
  # @return [TD::Types::LoginUrlInfo]
  def getLoginUrlInfo(chat_id:, message_id:, button_id:)
    broadcast('@type'      => 'getLoginUrlInfo',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'button_id'  => button_id)
  end
  
  # Returns information about a file with a map thumbnail in PNG format.
  # Only map thumbnail files with size less than 1MB can be downloaded.
  #
  # @param location [TD::Types::Location] Location of the map center.
  # @param zoom [Integer] Map zoom level; 13-20.
  # @param width [Integer] Map width in pixels before applying scale; 16-1024.
  # @param height [Integer] Map height in pixels before applying scale; 16-1024.
  # @param scale [Integer] Map scale; 1-3.
  # @param chat_id [Integer] Identifier of a chat in which the thumbnail will be shown.
  #   Use 0 if unknown.
  # @return [TD::Types::File]
  def getMapThumbnailFile(location:, zoom:, width:, height:, scale:, chat_id:)
    broadcast('@type'    => 'getMapThumbnailFile',
              'location' => location,
              'zoom'     => zoom,
              'width'    => width,
              'height'   => height,
              'scale'    => scale,
              'chat_id'  => chat_id)
  end
  
  # Replaces text entities with Markdown formatting in a human-friendly format.
  # Entities that can't be represented in Markdown unambiguously are kept as is.
  # Can be called synchronously.
  #
  # @param text [TD::Types::FormattedText] The text.
  # @return [TD::Types::FormattedText]
  def getMarkdownText(text:)
    broadcast('@type' => 'getMarkdownText',
              'text'  => text)
  end
  
  # Returns the current user.
  #
  # @return [TD::Types::User]
  def getMe
    broadcast('@type' => 'getMe')
  end
  
  # Returns menu button set by the bot for the given user; for bots only.
  #
  # @param user_id [Integer] Identifier of the user or 0 to get the default menu button.
  # @return [TD::Types::BotMenuButton]
  def getMenuButton(user_id:)
    broadcast('@type'   => 'getMenuButton',
              'user_id' => user_id)
  end
  
  # Returns information about a message.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Identifier of the message to get.
  # @return [TD::Types::Message]
  def getMessage(chat_id:, message_id:)
    broadcast('@type'      => 'getMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns reactions added for a message, along with their sender.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param reaction_type [TD::Types::ReactionType] Type of the reactions to return; pass null to return all added
  #   reactions.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of reactions to be returned; must be positive and can't be greater than
  #   100.
  # @return [TD::Types::AddedReactions]
  def getMessageAddedReactions(chat_id:, message_id:, reaction_type:, offset:, limit:)
    broadcast('@type'         => 'getMessageAddedReactions',
              'chat_id'       => chat_id,
              'message_id'    => message_id,
              'reaction_type' => reaction_type,
              'offset'        => offset,
              'limit'         => limit)
  end
  
  # Returns reactions, which can be added to a message.
  # The list can change after updateActiveEmojiReactions, updateChatAvailableReactions for the chat, or
  #   updateMessageInteractionInfo for the message.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param row_size [Integer] Number of reaction per row, 5-25.
  # @return [TD::Types::AvailableReactions]
  def getMessageAvailableReactions(chat_id:, message_id:, row_size:)
    broadcast('@type'      => 'getMessageAvailableReactions',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'row_size'   => row_size)
  end
  
  # Returns an HTML code for embedding the message.
  # Available only for messages in supergroups and channels with a username.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param for_album [Boolean] Pass true to return an HTML code for embedding of the whole media album.
  # @return [TD::Types::Text]
  def getMessageEmbeddingCode(chat_id:, message_id:, for_album:)
    broadcast('@type'      => 'getMessageEmbeddingCode',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'for_album'  => for_album)
  end
  
  # Returns information about a file with messages exported from another application.
  #
  # @param message_file_head [TD::Types::String] Beginning of the message file; up to 100 first lines.
  # @return [TD::Types::MessageFileType]
  def getMessageFileType(message_file_head:)
    broadcast('@type'             => 'getMessageFileType',
              'message_file_head' => message_file_head)
  end
  
  # Returns a confirmation text to be shown to the user before starting message import.
  #
  # @param chat_id [Integer] Identifier of a chat to which the messages will be imported.
  #   It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with
  #   can_change_info administrator right.
  # @return [TD::Types::Text]
  def getMessageImportConfirmationText(chat_id:)
    broadcast('@type'   => 'getMessageImportConfirmationText',
              'chat_id' => chat_id)
  end
  
  # Returns an HTTPS link to a message in a chat.
  # Available only for already sent messages in supergroups and channels, or if message.can_get_media_timestamp_links
  #   and a media timestamp link is generated.
  # This is an offline request.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param media_timestamp [Integer] If not 0, timestamp from which the video/audio/video note/voice note playing must
  #   start, in seconds.
  #   The media can be in the message content or in its web page preview.
  # @param for_album [Boolean] Pass true to create a link for the whole media album.
  # @param in_message_thread [Boolean] Pass true to create a link to the message as a channel post comment, in a
  #   message thread, or a forum topic.
  # @return [TD::Types::MessageLink]
  def getMessageLink(chat_id:, message_id:, media_timestamp:, for_album:, in_message_thread:)
    broadcast('@type'             => 'getMessageLink',
              'chat_id'           => chat_id,
              'message_id'        => message_id,
              'media_timestamp'   => media_timestamp,
              'for_album'         => for_album,
              'in_message_thread' => in_message_thread)
  end
  
  # Returns information about a public or private message link.
  # Can be called for any internal link of the type internalLinkTypeMessage.
  #
  # @param url [TD::Types::String] The message link.
  # @return [TD::Types::MessageLinkInfo]
  def getMessageLinkInfo(url:)
    broadcast('@type' => 'getMessageLinkInfo',
              'url'   => url)
  end
  
  # Returns information about a message, if it is available without sending network request.
  # This is an offline request.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Identifier of the message to get.
  # @return [TD::Types::Message]
  def getMessageLocally(chat_id:, message_id:)
    broadcast('@type'      => 'getMessageLocally',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns forwarded copies of a channel message to different public channels.
  # For optimal performance, the number of returned messages is chosen by TDLib.
  #
  # @param chat_id [Integer] Chat identifier of the message.
  # @param message_id [Integer] Message identifier.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::FoundMessages]
  def getMessagePublicForwards(chat_id:, message_id:, offset:, limit:)
    broadcast('@type'      => 'getMessagePublicForwards',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'offset'     => offset,
              'limit'      => limit)
  end
  
  # Returns detailed statistics about a message.
  # Can be used only if message.can_get_statistics == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Message identifier.
  # @param is_dark [Boolean] Pass true if a dark theme is used by the application.
  # @return [TD::Types::MessageStatistics]
  def getMessageStatistics(chat_id:, message_id:, is_dark:)
    broadcast('@type'      => 'getMessageStatistics',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'is_dark'    => is_dark)
  end
  
  # Returns information about a message thread.
  # Can be used only if message.can_get_message_thread == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Identifier of the message.
  # @return [TD::Types::MessageThreadInfo]
  def getMessageThread(chat_id:, message_id:)
    broadcast('@type'      => 'getMessageThread',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns messages in a message thread of a message.
  # Can be used only if message.can_get_message_thread == true.
  # Message thread of a channel message is in the channel's linked supergroup.
  # The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
  # For optimal performance, the number of returned messages is chosen by TDLib.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Message identifier, which thread history needs to be returned.
  # @param from_message_id [Integer] Identifier of the message starting from which history must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to
  #   get additionally some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than or equal to -offset.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::Messages]
  def getMessageThreadHistory(chat_id:, message_id:, from_message_id:, offset:, limit:)
    broadcast('@type'           => 'getMessageThreadHistory',
              'chat_id'         => chat_id,
              'message_id'      => message_id,
              'from_message_id' => from_message_id,
              'offset'          => offset,
              'limit'           => limit)
  end
  
  # Returns viewers of a recent outgoing message in a basic group or a supergroup chat.
  # For video notes and voice notes only users, opened content of the message, are returned.
  # The method can be called if message.can_get_viewers == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Identifier of the message.
  # @return [TD::Types::MessageViewers]
  def getMessageViewers(chat_id:, message_id:)
    broadcast('@type'      => 'getMessageViewers',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns information about messages.
  # If a message is not found, returns null on the corresponding position of the result.
  #
  # @param chat_id [Integer] Identifier of the chat the messages belong to.
  # @param message_ids [Array<Integer>] Identifiers of the messages to get.
  # @return [TD::Types::Messages]
  def getMessages(chat_id:, message_ids:)
    broadcast('@type'       => 'getMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids)
  end
  
  # Returns network data usage statistics.
  # Can be called before authorization.
  #
  # @param only_current [Boolean] Pass true to get statistics only for the current library launch.
  # @return [TD::Types::NetworkStatistics]
  def getNetworkStatistics(only_current:)
    broadcast('@type'        => 'getNetworkStatistics',
              'only_current' => only_current)
  end
  
  # Returns the value of an option by its name.
  # (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before
  #   authorization.
  # Can be called synchronously for options "version" and "commit_hash".
  #
  # @param name [TD::Types::String] The name of the option.
  # @return [TD::Types::OptionValue]
  def getOption(name:)
    broadcast('@type' => 'getOption',
              'name'  => name)
  end
  
  # Returns a Telegram Passport authorization form for sharing data with a service.
  #
  # @param bot_user_id [Integer] User identifier of the service's bot.
  # @param scope [TD::Types::String] Telegram Passport element types requested by the service.
  # @param public_key [TD::Types::String] Service's public key.
  # @param nonce [TD::Types::String] Unique request identifier provided by the service.
  # @return [TD::Types::PassportAuthorizationForm]
  def getPassportAuthorizationForm(bot_user_id:, scope:, public_key:, nonce:)
    broadcast('@type'       => 'getPassportAuthorizationForm',
              'bot_user_id' => bot_user_id,
              'scope'       => scope,
              'public_key'  => public_key,
              'nonce'       => nonce)
  end
  
  # Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization
  #   form.
  # Result can be received only once for each authorization form.
  #
  # @param authorization_form_id [Integer] Authorization form identifier.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::PassportElementsWithErrors]
  def getPassportAuthorizationFormAvailableElements(authorization_form_id:, password:)
    broadcast('@type'                 => 'getPassportAuthorizationFormAvailableElements',
              'authorization_form_id' => authorization_form_id,
              'password'              => password)
  end
  
  # Returns one of the available Telegram Passport elements.
  #
  # @param type [TD::Types::PassportElementType] Telegram Passport element type.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::PassportElement]
  def getPassportElement(type:, password:)
    broadcast('@type'    => 'getPassportElement',
              'type'     => type,
              'password' => password)
  end
  
  # Returns the current state of 2-step verification.
  #
  # @return [TD::Types::PasswordState]
  def getPasswordState
    broadcast('@type' => 'getPasswordState')
  end
  
  # Returns an invoice payment form.
  # This method must be called when the user presses inlineKeyboardButtonBuy.
  #
  # @param input_invoice [TD::Types::InputInvoice] The invoice.
  # @param theme [TD::Types::ThemeParameters] Preferred payment form theme; pass null to use the default theme.
  # @return [TD::Types::PaymentForm]
  def getPaymentForm(input_invoice:, theme:)
    broadcast('@type'         => 'getPaymentForm',
              'input_invoice' => input_invoice,
              'theme'         => theme)
  end
  
  # Returns information about a successful payment.
  #
  # @param chat_id [Integer] Chat identifier of the {TD::Types::MessageContent::PaymentSuccessful} message.
  # @param message_id [Integer] Message identifier.
  # @return [TD::Types::PaymentReceipt]
  def getPaymentReceipt(chat_id:, message_id:)
    broadcast('@type'      => 'getPaymentReceipt',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns information about a phone number by its prefix.
  # Can be called before authorization.
  #
  # @param phone_number_prefix [TD::Types::String] The phone number prefix.
  # @return [TD::Types::PhoneNumberInfo]
  def getPhoneNumberInfo(phone_number_prefix:)
    broadcast('@type'               => 'getPhoneNumberInfo',
              'phone_number_prefix' => phone_number_prefix)
  end
  
  # Returns information about a phone number by its prefix synchronously.
  # getCountries must be called at least once after changing localization to the specified language if properly
  #   localized country information is expected.
  # Can be called synchronously.
  #
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code for country information localization.
  # @param phone_number_prefix [TD::Types::String] The phone number prefix.
  # @return [TD::Types::PhoneNumberInfo]
  def getPhoneNumberInfoSync(language_code:, phone_number_prefix:)
    broadcast('@type'               => 'getPhoneNumberInfoSync',
              'language_code'       => language_code,
              'phone_number_prefix' => phone_number_prefix)
  end
  
  # Returns users voted for the specified option in a non-anonymous polls.
  # For optimal performance, the number of returned users is chosen by TDLib.
  #
  # @param chat_id [Integer] Identifier of the chat to which the poll belongs.
  # @param message_id [Integer] Identifier of the message containing the poll.
  # @param option_id [Integer] 0-based identifier of the answer option.
  # @param offset [Integer] Number of users to skip in the result; must be non-negative.
  # @param limit [Integer] The maximum number of users to be returned; must be positive and can't be greater than 50.
  #   For optimal performance, the number of returned users is chosen by TDLib and can be smaller than the specified
  #   limit, even if the end of the voter list has not been reached.
  # @return [TD::Types::Users]
  def getPollVoters(chat_id:, message_id:, option_id:, offset:, limit:)
    broadcast('@type'      => 'getPollVoters',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'option_id'  => option_id,
              'offset'     => offset,
              'limit'      => limit)
  end
  
  # Returns an IETF language tag of the language preferred in the country, which must be used to fill native fields in
  #   Telegram Passport personal details.
  # Returns a 404 error if unknown.
  #
  # @param country_code [TD::Types::String] A two-letter ISO 3166-1 alpha-2 country code.
  # @return [TD::Types::Text]
  def getPreferredCountryLanguage(country_code:)
    broadcast('@type'        => 'getPreferredCountryLanguage',
              'country_code' => country_code)
  end
  
  # Returns information about features, available to Premium users.
  #
  # @param source [TD::Types::PremiumSource] Source of the request; pass null if the method is called from some
  #   non-standard source.
  # @return [TD::Types::PremiumFeatures]
  def getPremiumFeatures(source:)
    broadcast('@type'  => 'getPremiumFeatures',
              'source' => source)
  end
  
  # Returns information about a limit, increased for Premium users.
  # Returns a 404 error if the limit is unknown.
  #
  # @param limit_type [TD::Types::PremiumLimitType] Type of the limit.
  # @return [TD::Types::PremiumLimit]
  def getPremiumLimit(limit_type:)
    broadcast('@type'      => 'getPremiumLimit',
              'limit_type' => limit_type)
  end
  
  # Returns state of Telegram Premium subscription and promotion videos for Premium features.
  #
  # @return [TD::Types::PremiumState]
  def getPremiumState
    broadcast('@type' => 'getPremiumState')
  end
  
  # Returns examples of premium stickers for demonstration purposes.
  #
  # @return [TD::Types::Stickers]
  def getPremiumStickerExamples
    broadcast('@type' => 'getPremiumStickerExamples')
  end
  
  # Returns premium stickers from regular sticker sets.
  #
  # @param limit [Integer] The maximum number of stickers to be returned; 0-100.
  # @return [TD::Types::Stickers]
  def getPremiumStickers(limit:)
    broadcast('@type' => 'getPremiumStickers',
              'limit' => limit)
  end
  
  # Returns list of proxies that are currently set up.
  # Can be called before authorization.
  #
  # @return [TD::Types::Proxies]
  def getProxies
    broadcast('@type' => 'getProxies')
  end
  
  # Returns an HTTPS link, which can be used to add a proxy.
  # Available only for SOCKS5 and MTProto proxies.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @return [TD::Types::HttpUrl]
  def getProxyLink(proxy_id:)
    broadcast('@type'    => 'getProxyLink',
              'proxy_id' => proxy_id)
  end
  
  # Returns a globally unique push notification subscription identifier for identification of an account, which has
  #   received a push notification.
  # Can be called synchronously.
  #
  # @param payload [TD::Types::String] JSON-encoded push notification payload.
  # @return [TD::Types::PushReceiverId]
  def getPushReceiverId(payload:)
    broadcast('@type'   => 'getPushReceiverId',
              'payload' => payload)
  end
  
  # Returns recent emoji statuses.
  #
  # @return [TD::Types::EmojiStatuses]
  def getRecentEmojiStatuses
    broadcast('@type' => 'getRecentEmojiStatuses')
  end
  
  # Returns up to 20 recently used inline bots in the order of their last usage.
  #
  # @return [TD::Types::Users]
  def getRecentInlineBots
    broadcast('@type' => 'getRecentInlineBots')
  end
  
  # Returns a list of recently used stickers.
  #
  # @param is_attached [Boolean] Pass true to return stickers and masks that were recently attached to photos or video
  #   files; pass false to return recently sent stickers.
  # @return [TD::Types::Stickers]
  def getRecentStickers(is_attached:)
    broadcast('@type'       => 'getRecentStickers',
              'is_attached' => is_attached)
  end
  
  # Returns recently opened chats, this is an offline request.
  # Returns chats in the order of last opening.
  #
  # @param limit [Integer] The maximum number of chats to be returned.
  # @return [TD::Types::Chats]
  def getRecentlyOpenedChats(limit:)
    broadcast('@type' => 'getRecentlyOpenedChats',
              'limit' => limit)
  end
  
  # Returns t.me URLs recently visited by a newly registered user.
  #
  # @param referrer [TD::Types::String] Google Play referrer to identify the user.
  # @return [TD::Types::TMeUrls]
  def getRecentlyVisitedTMeUrls(referrer:)
    broadcast('@type'    => 'getRecentlyVisitedTMeUrls',
              'referrer' => referrer)
  end
  
  # Returns recommended chat filters for the current user.
  #
  # @return [TD::Types::RecommendedChatFilters]
  def getRecommendedChatFilters
    broadcast('@type' => 'getRecommendedChatFilters')
  end
  
  # Returns a 2-step verification recovery email address that was previously set up.
  # This method can be used to verify a password provided by the user.
  #
  # @param password [TD::Types::String] The 2-step verification password for the current user.
  # @return [TD::Types::RecoveryEmailAddress]
  def getRecoveryEmailAddress(password:)
    broadcast('@type'    => 'getRecoveryEmailAddress',
              'password' => password)
  end
  
  # Returns information about a file by its remote ID; this is an offline request.
  # Can be used to register a URL as a file for further uploading, or sending as a message.
  # Even the request succeeds, the file can be used only if it is still accessible to the user.
  # For example, if the file is from a message, then the message must be not deleted and accessible to the user.
  # If the file database is disabled, then the corresponding object with the file must be preloaded by the application.
  #
  # @param remote_file_id [TD::Types::String] Remote identifier of the file to get.
  # @param file_type [TD::Types::FileType] File type; pass null if unknown.
  # @return [TD::Types::File]
  def getRemoteFile(remote_file_id:, file_type:)
    broadcast('@type'          => 'getRemoteFile',
              'remote_file_id' => remote_file_id,
              'file_type'      => file_type)
  end
  
  # Returns information about a message that is replied by a given message.
  # Also, returns the pinned message, the game message, the invoice message, and the topic creation message for
  #   messages of the types messagePinMessage, messageGameScore, messagePaymentSuccessful, and topic messages without replied
  #   message respectively.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Identifier of the reply message.
  # @return [TD::Types::Message]
  def getRepliedMessage(chat_id:, message_id:)
    broadcast('@type'      => 'getRepliedMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns saved animations.
  #
  # @return [TD::Types::Animations]
  def getSavedAnimations
    broadcast('@type' => 'getSavedAnimations')
  end
  
  # Returns saved notification sound by its identifier.
  # Returns a 404 error if there is no saved notification sound with the specified identifier.
  #
  # @param notification_sound_id [Integer] Identifier of the notification sound.
  # @return [TD::Types::NotificationSounds]
  def getSavedNotificationSound(notification_sound_id:)
    broadcast('@type'                 => 'getSavedNotificationSound',
              'notification_sound_id' => notification_sound_id)
  end
  
  # Returns list of saved notification sounds.
  # If a sound isn't in the list, then default sound needs to be used.
  #
  # @return [TD::Types::NotificationSounds]
  def getSavedNotificationSounds
    broadcast('@type' => 'getSavedNotificationSounds')
  end
  
  # Returns saved order information.
  # Returns a 404 error if there is no saved order information.
  #
  # @return [TD::Types::OrderInfo]
  def getSavedOrderInfo
    broadcast('@type' => 'getSavedOrderInfo')
  end
  
  # Returns the notification settings for chats of a given type.
  #
  # @param scope [TD::Types::NotificationSettingsScope] Types of chats for which to return the notification settings
  #   information.
  # @return [TD::Types::ScopeNotificationSettings]
  def getScopeNotificationSettings(scope:)
    broadcast('@type' => 'getScopeNotificationSettings',
              'scope' => scope)
  end
  
  # Returns information about a secret chat by its identifier.
  # This is an offline request.
  #
  # @param secret_chat_id [Integer] Secret chat identifier.
  # @return [TD::Types::SecretChat]
  def getSecretChat(secret_chat_id:)
    broadcast('@type'          => 'getSecretChat',
              'secret_chat_id' => secret_chat_id)
  end
  
  # Loads an asynchronous or a zoomed in statistical graph.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param token [TD::Types::String] The token for graph loading.
  # @param x [Integer] X-value for zoomed in graph or 0 otherwise.
  # @return [TD::Types::StatisticalGraph]
  def getStatisticalGraph(chat_id:, token:, x:)
    broadcast('@type'   => 'getStatisticalGraph',
              'chat_id' => chat_id,
              'token'   => token,
              'x'       => x)
  end
  
  # Returns emoji corresponding to a sticker.
  # The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the
  #   corresponding Sticker object.
  #
  # @param sticker [TD::Types::InputFile] Sticker file identifier.
  # @return [TD::Types::Emojis]
  def getStickerEmojis(sticker:)
    broadcast('@type'   => 'getStickerEmojis',
              'sticker' => sticker)
  end
  
  # Returns information about a sticker set by its identifier.
  #
  # @param set_id [Integer] Identifier of the sticker set.
  # @return [TD::Types::StickerSet]
  def getStickerSet(set_id:)
    broadcast('@type'  => 'getStickerSet',
              'set_id' => set_id)
  end
  
  # Returns stickers from the installed sticker sets that correspond to any of the given emoji or can be found by
  #   sticker-specific keywords.
  # If the query is non-empty, then favorite, recently used or trending stickers may also be returned.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the stickers to return.
  # @param query [TD::Types::String, nil] Search query; a space-separated list of emoji or a keyword prefix.
  #   If empty, returns all known installed stickers.
  # @param limit [Integer] The maximum number of stickers to be returned.
  # @param chat_id [Integer] Chat identifier for which to return stickers.
  #   Available custom emoji stickers may be different for different chats.
  # @return [TD::Types::Stickers]
  def getStickers(sticker_type:, query: nil, limit:, chat_id:)
    broadcast('@type'        => 'getStickers',
              'sticker_type' => sticker_type,
              'query'        => query,
              'limit'        => limit,
              'chat_id'      => chat_id)
  end
  
  # Returns storage usage statistics.
  # Can be called before authorization.
  #
  # @param chat_limit [Integer] The maximum number of chats with the largest storage usage for which separate
  #   statistics need to be returned.
  #   All other chats will be grouped in entries with chat_id == 0.
  #   If the chat info database is not used, the chat_limit is ignored and is always set to 0.
  # @return [TD::Types::StorageStatistics]
  def getStorageStatistics(chat_limit:)
    broadcast('@type'      => 'getStorageStatistics',
              'chat_limit' => chat_limit)
  end
  
  # Quickly returns approximate storage usage statistics.
  # Can be called before authorization.
  #
  # @return [TD::Types::StorageStatisticsFast]
  def getStorageStatisticsFast
    broadcast('@type' => 'getStorageStatisticsFast')
  end
  
  # Returns suggested name for saving a file in a given directory.
  #
  # @param file_id [Integer] Identifier of the file.
  # @param directory [TD::Types::String] Directory in which the file is supposed to be saved.
  # @return [TD::Types::Text]
  def getSuggestedFileName(file_id:, directory:)
    broadcast('@type'     => 'getSuggestedFileName',
              'file_id'   => file_id,
              'directory' => directory)
  end
  
  # Returns a suggested name for a new sticker set with a given title.
  #
  # @param title [TD::Types::String] Sticker set title; 1-64 characters.
  # @return [TD::Types::Text]
  def getSuggestedStickerSetName(title:)
    broadcast('@type' => 'getSuggestedStickerSetName',
              'title' => title)
  end
  
  # Returns a list of basic group and supergroup chats, which can be used as a discussion group for a channel.
  # Returned basic group chats must be first upgraded to supergroups before they can be set as a discussion group.
  # To set a returned supergroup as a discussion group, access to its old messages must be enabled using
  #   toggleSupergroupIsAllHistoryAvailable first.
  #
  # @return [TD::Types::Chats]
  def getSuitableDiscussionChats
    broadcast('@type' => 'getSuitableDiscussionChats')
  end
  
  # Returns information about a supergroup or a channel by its identifier.
  # This is an offline request if the current user is not a bot.
  #
  # @param supergroup_id [Integer] Supergroup or channel identifier.
  # @return [TD::Types::Supergroup]
  def getSupergroup(supergroup_id:)
    broadcast('@type'         => 'getSupergroup',
              'supergroup_id' => supergroup_id)
  end
  
  # Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute.
  #
  # @param supergroup_id [Integer] Supergroup or channel identifier.
  # @return [TD::Types::SupergroupFullInfo]
  def getSupergroupFullInfo(supergroup_id:)
    broadcast('@type'         => 'getSupergroupFullInfo',
              'supergroup_id' => supergroup_id)
  end
  
  # Returns information about members or banned users in a supergroup or channel.
  # Can be used only if supergroupFullInfo.can_get_members == true; additionally, administrator privileges may be
  #   required for some filters.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param filter [TD::Types::SupergroupMembersFilter] The type of users to return; pass null to use
  #   supergroupMembersFilterRecent.
  # @param offset [Integer] Number of users to skip.
  # @param limit [Integer] The maximum number of users be returned; up to 200.
  # @return [TD::Types::ChatMembers]
  def getSupergroupMembers(supergroup_id:, filter:, offset:, limit:)
    broadcast('@type'         => 'getSupergroupMembers',
              'supergroup_id' => supergroup_id,
              'filter'        => filter,
              'offset'        => offset,
              'limit'         => limit)
  end
  
  # Returns localized name of the Telegram support user; for Telegram support only.
  #
  # @return [TD::Types::Text]
  def getSupportName
    broadcast('@type' => 'getSupportName')
  end
  
  # Returns a user that can be contacted to get support.
  #
  # @return [TD::Types::User]
  def getSupportUser
    broadcast('@type' => 'getSupportUser')
  end
  
  # Returns information about the current temporary password.
  #
  # @return [TD::Types::TemporaryPasswordState]
  def getTemporaryPasswordState
    broadcast('@type' => 'getTemporaryPasswordState')
  end
  
  # Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses)
  #   found in the text.
  # Can be called synchronously.
  #
  # @param text [TD::Types::String] The text in which to look for entities.
  # @return [TD::Types::TextEntities]
  def getTextEntities(text:)
    broadcast('@type' => 'getTextEntities',
              'text'  => text)
  end
  
  # Converts a themeParameters object to corresponding JSON-serialized string.
  # Can be called synchronously.
  #
  # @param theme [TD::Types::ThemeParameters] Theme parameters to convert to JSON.
  # @return [TD::Types::Text]
  def getThemeParametersJsonString(theme:)
    broadcast('@type' => 'getThemeParametersJsonString',
              'theme' => theme)
  end
  
  # Returns up to 8 emoji statuses, which must be shown right after the default Premium Badge in the emoji status list.
  #
  # @return [TD::Types::EmojiStatuses]
  def getThemedEmojiStatuses
    broadcast('@type' => 'getThemedEmojiStatuses')
  end
  
  # Returns a list of frequently used chats.
  # Supported only if the chat info database is enabled.
  #
  # @param category [TD::Types::TopChatCategory] Category of chats to be returned.
  # @param limit [Integer] The maximum number of chats to be returned; up to 30.
  # @return [TD::Types::Chats]
  def getTopChats(category:, limit:)
    broadcast('@type'    => 'getTopChats',
              'category' => category,
              'limit'    => limit)
  end
  
  # Returns a list of trending sticker sets.
  # For optimal performance, the number of returned sticker sets is chosen by TDLib.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to return.
  # @param offset [Integer] The offset from which to return the sticker sets; must be non-negative.
  # @param limit [Integer] The maximum number of sticker sets to be returned; up to 100.
  #   For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the
  #   specified limit, even if the end of the list has not been reached.
  # @return [TD::Types::TrendingStickerSets]
  def getTrendingStickerSets(sticker_type:, offset:, limit:)
    broadcast('@type'        => 'getTrendingStickerSets',
              'sticker_type' => sticker_type,
              'offset'       => offset,
              'limit'        => limit)
  end
  
  # Returns information about a user by their identifier.
  # This is an offline request if the current user is not a bot.
  #
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::User]
  def getUser(user_id:)
    broadcast('@type'   => 'getUser',
              'user_id' => user_id)
  end
  
  # Returns full information about a user by their identifier.
  #
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::UserFullInfo]
  def getUserFullInfo(user_id:)
    broadcast('@type'   => 'getUserFullInfo',
              'user_id' => user_id)
  end
  
  # Returns an HTTPS link, which can be used to get information about the current user.
  #
  # @return [TD::Types::UserLink]
  def getUserLink
    broadcast('@type' => 'getUserLink')
  end
  
  # Returns the current privacy settings.
  #
  # @param setting [TD::Types::UserPrivacySetting] The privacy setting.
  # @return [TD::Types::UserPrivacySettingRules]
  def getUserPrivacySettingRules(setting:)
    broadcast('@type'   => 'getUserPrivacySettingRules',
              'setting' => setting)
  end
  
  # Returns the profile photos of a user.
  # Personal and public photo aren't returned.
  #
  # @param user_id [Integer] User identifier.
  # @param offset [Integer] The number of photos to skip; must be non-negative.
  # @param limit [Integer] The maximum number of photos to be returned; up to 100.
  # @return [TD::Types::ChatPhotos]
  def getUserProfilePhotos(user_id:, offset:, limit:)
    broadcast('@type'   => 'getUserProfilePhotos',
              'user_id' => user_id,
              'offset'  => offset,
              'limit'   => limit)
  end
  
  # Returns support information for the given user; for Telegram support only.
  #
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::UserSupportInfo]
  def getUserSupportInfo(user_id:)
    broadcast('@type'   => 'getUserSupportInfo',
              'user_id' => user_id)
  end
  
  # Returns list of participant identifiers, on whose behalf a video chat in the chat can be joined.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::MessageSenders]
  def getVideoChatAvailableParticipants(chat_id:)
    broadcast('@type'   => 'getVideoChatAvailableParticipants',
              'chat_id' => chat_id)
  end
  
  # Returns RTMP URL for streaming to the chat; requires creator privileges.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::RtmpUrl]
  def getVideoChatRtmpUrl(chat_id:)
    broadcast('@type'   => 'getVideoChatRtmpUrl',
              'chat_id' => chat_id)
  end
  
  # Returns an HTTPS URL of a Web App to open after a link of the type internalLinkTypeWebApp is clicked.
  #
  # @param chat_id [Integer] Identifier of the chat in which the link was clicked; pass 0 if none.
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param web_app_short_name [TD::Types::String] Short name of the Web App.
  # @param start_parameter [TD::Types::String] Start parameter from internalLinkTypeWebApp.
  # @param theme [TD::Types::ThemeParameters] Preferred Web App theme; pass null to use the default theme.
  # @param application_name [TD::Types::String] Short name of the application; 0-64 English letters, digits, and
  #   underscores.
  # @param allow_write_access [Boolean] Pass true if the current user allowed the bot to send them messages.
  # @return [TD::Types::HttpUrl]
  def getWebAppLinkUrl(chat_id:, bot_user_id:, web_app_short_name:, start_parameter:, theme:, application_name:,
                       allow_write_access:)
    broadcast('@type'              => 'getWebAppLinkUrl',
              'chat_id'            => chat_id,
              'bot_user_id'        => bot_user_id,
              'web_app_short_name' => web_app_short_name,
              'start_parameter'    => start_parameter,
              'theme'              => theme,
              'application_name'   => application_name,
              'allow_write_access' => allow_write_access)
  end
  
  # Returns an HTTPS URL of a Web App to open after keyboardButtonTypeWebApp or inlineQueryResultsButtonTypeWebApp
  #   button is pressed.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param url [TD::Types::String] The URL from the {TD::Types::KeyboardButtonType::WebApp} or
  #   {TD::Types::InlineQueryResultsButtonType::WebApp} button.
  # @param theme [TD::Types::ThemeParameters] Preferred Web App theme; pass null to use the default theme.
  # @param application_name [TD::Types::String] Short name of the application; 0-64 English letters, digits, and
  #   underscores.
  # @return [TD::Types::HttpUrl]
  def getWebAppUrl(bot_user_id:, url:, theme:, application_name:)
    broadcast('@type'            => 'getWebAppUrl',
              'bot_user_id'      => bot_user_id,
              'url'              => url,
              'theme'            => theme,
              'application_name' => application_name)
  end
  
  # Returns an instant view version of a web page if available.
  # Returns a 404 error if the web page has no instant view page.
  #
  # @param url [TD::Types::String] The web page URL.
  # @param force_full [Boolean] Pass true to get full instant view for the web page.
  # @return [TD::Types::WebPageInstantView]
  def getWebPageInstantView(url:, force_full:)
    broadcast('@type'      => 'getWebPageInstantView',
              'url'        => url,
              'force_full' => force_full)
  end
  
  # Returns a web page preview by the text of the message.
  # Do not call this function too often.
  # Returns a 404 error if the web page has no preview.
  #
  # @param text [TD::Types::FormattedText] Message text with formatting.
  # @return [TD::Types::WebPage]
  def getWebPagePreview(text:)
    broadcast('@type' => 'getWebPagePreview',
              'text'  => text)
  end
  
  # Hides a suggested action.
  #
  # @param action [TD::Types::SuggestedAction] Suggested action to hide.
  # @return [TD::Types::Ok]
  def hideSuggestedAction(action:)
    broadcast('@type'  => 'hideSuggestedAction',
              'action' => action)
  end
  
  # Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored.
  #
  # @param contacts [Array<TD::Types::Contact>] The list of contacts to import or edit; contacts' vCard are ignored and
  #   are not imported.
  # @return [TD::Types::ImportedContacts]
  def importContacts(contacts:)
    broadcast('@type'    => 'importContacts',
              'contacts' => contacts)
  end
  
  # Imports messages exported from another app.
  #
  # @param chat_id [Integer] Identifier of a chat to which the messages will be imported.
  #   It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with
  #   can_change_info administrator right.
  # @param message_file [TD::Types::InputFile] File with messages to import.
  #   Only {TD::Types::InputFile::Local} and {TD::Types::InputFile::Generated} are supported.
  #   The file must not be previously uploaded.
  # @param attached_files [Array<TD::Types::InputFile>] Files used in the imported messages.
  #   Only {TD::Types::InputFile::Local} and {TD::Types::InputFile::Generated} are supported.
  #   The files must not be previously uploaded.
  # @return [TD::Types::Ok]
  def importMessages(chat_id:, message_file:, attached_files:)
    broadcast('@type'          => 'importMessages',
              'chat_id'        => chat_id,
              'message_file'   => message_file,
              'attached_files' => attached_files)
  end
  
  # Invites users to an active group call.
  # Sends a service message of type messageInviteToGroupCall for video chats.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param user_ids [Array<Integer>] User identifiers.
  #   At most 10 users can be invited simultaneously.
  # @return [TD::Types::Ok]
  def inviteGroupCallParticipants(group_call_id:, user_ids:)
    broadcast('@type'         => 'inviteGroupCallParticipants',
              'group_call_id' => group_call_id,
              'user_ids'      => user_ids)
  end
  
  # Adds the current user as a new member to a chat.
  # Private and secret chats can't be joined using this method.
  # May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def joinChat(chat_id:)
    broadcast('@type'   => 'joinChat',
              'chat_id' => chat_id)
  end
  
  # Uses an invite link to add the current user to the chat if possible.
  # May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created.
  #
  # @param invite_link [TD::Types::String] Invite link to use.
  # @return [TD::Types::Chat]
  def joinChatByInviteLink(invite_link:)
    broadcast('@type'       => 'joinChatByInviteLink',
              'invite_link' => invite_link)
  end
  
  # Joins an active group call.
  # Returns join response payload for tgcalls.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param participant_id [TD::Types::MessageSender] Identifier of a group call participant, which will be used to join
  #   the call; pass null to join as self; video chats only.
  # @param audio_source_id [Integer] Caller audio channel synchronization source identifier; received from tgcalls.
  # @param payload [TD::Types::String] Group call join payload; received from tgcalls.
  # @param is_muted [Boolean] Pass true to join the call with muted microphone.
  # @param is_my_video_enabled [Boolean] Pass true if the user's video is enabled.
  # @param invite_hash [TD::Types::String] If non-empty, invite hash to be used to join the group call without being
  #   muted by administrators.
  # @return [TD::Types::Text]
  def joinGroupCall(group_call_id:, participant_id:, audio_source_id:, payload:, is_muted:, is_my_video_enabled:,
                    invite_hash:)
    broadcast('@type'               => 'joinGroupCall',
              'group_call_id'       => group_call_id,
              'participant_id'      => participant_id,
              'audio_source_id'     => audio_source_id,
              'payload'             => payload,
              'is_muted'            => is_muted,
              'is_my_video_enabled' => is_my_video_enabled,
              'invite_hash'         => invite_hash)
  end
  
  # Removes the current user from chat members.
  # Private and secret chats can't be left using this method.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def leaveChat(chat_id:)
    broadcast('@type'   => 'leaveChat',
              'chat_id' => chat_id)
  end
  
  # Leaves a group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def leaveGroupCall(group_call_id:)
    broadcast('@type'         => 'leaveGroupCall',
              'group_call_id' => group_call_id)
  end
  
  # Loads more chats from a chat list.
  # The loaded chats and their positions in the chat list will be sent through updates.
  # Chats are sorted by the pair (chat.position.order, chat.id) in descending order.
  # Returns a 404 error if all chats have been loaded.
  #
  # @param chat_list [TD::Types::ChatList] The chat list in which to load chats; pass null to load chats from the main
  #   chat list.
  # @param limit [Integer] The maximum number of chats to be loaded.
  #   For optimal performance, the number of loaded chats is chosen by TDLib and can be smaller than the specified
  #   limit, even if the end of the list is not reached.
  # @return [TD::Types::Ok]
  def loadChats(chat_list:, limit:)
    broadcast('@type'     => 'loadChats',
              'chat_list' => chat_list,
              'limit'     => limit)
  end
  
  # Loads more participants of a group call.
  # The loaded participants will be received through updates.
  # Use the field groupCall.loaded_all_participants to check whether all participants have already been loaded.
  #
  # @param group_call_id [Integer] Group call identifier.
  #   The group call must be previously received through getGroupCall and must be joined or being joined.
  # @param limit [Integer] The maximum number of participants to load; up to 100.
  # @return [TD::Types::Ok]
  def loadGroupCallParticipants(group_call_id:, limit:)
    broadcast('@type'         => 'loadGroupCallParticipants',
              'group_call_id' => group_call_id,
              'limit'         => limit)
  end
  
  # Closes the TDLib instance after a proper logout.
  # Requires an available network connection.
  # All local data will be destroyed.
  # After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent.
  #
  # @return [TD::Types::Ok]
  def logOut
    broadcast('@type' => 'logOut')
  end
  
  # Informs TDLib that the chat is opened by the user.
  # Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are
  #   received only for opened chats).
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def openChat(chat_id:)
    broadcast('@type'   => 'openChat',
              'chat_id' => chat_id)
  end
  
  # Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document,
  #   location or venue, or has listened to an audio file or voice note message).
  # An updateMessageContentOpened update will be generated if something has changed.
  #
  # @param chat_id [Integer] Chat identifier of the message.
  # @param message_id [Integer] Identifier of the message with the opened content.
  # @return [TD::Types::Ok]
  def openMessageContent(chat_id:, message_id:)
    broadcast('@type'      => 'openMessageContent',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Informs TDLib that a Web App is being opened from attachment menu, a botMenuButton button, an
  #   internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button.
  # For each bot, a confirmation alert about data sent to the bot must be shown once.
  #
  # @param chat_id [Integer] Identifier of the chat in which the Web App is opened.
  #   The Web App can't be opened in secret chats.
  # @param bot_user_id [Integer] Identifier of the bot, providing the Web App.
  # @param url [TD::Types::String] The URL from an {TD::Types::InlineKeyboardButtonType::WebApp} button, a
  #   {TD::Types::BotMenuButton} button, or an {TD::Types::InternalLinkType::AttachmentMenuBot} link, or an empty string
  #   otherwise.
  # @param theme [TD::Types::ThemeParameters] Preferred Web App theme; pass null to use the default theme.
  # @param application_name [TD::Types::String] Short name of the application; 0-64 English letters, digits, and
  #   underscores.
  # @param message_thread_id [Integer] If not 0, a message thread identifier in which the message will be sent.
  # @param reply_to_message_id [Integer] Identifier of the replied message for the message sent by the Web App; 0 if
  #   none.
  # @return [TD::Types::WebAppInfo]
  def openWebApp(chat_id:, bot_user_id:, url:, theme:, application_name:, message_thread_id:, reply_to_message_id:)
    broadcast('@type'               => 'openWebApp',
              'chat_id'             => chat_id,
              'bot_user_id'         => bot_user_id,
              'url'                 => url,
              'theme'               => theme,
              'application_name'    => application_name,
              'message_thread_id'   => message_thread_id,
              'reply_to_message_id' => reply_to_message_id)
  end
  
  # Optimizes storage usage, i.e.
  # deletes some files and returns new storage usage statistics.
  # Secret thumbnails can't be deleted.
  #
  # @param size [Integer] Limit on the total size of files after deletion, in bytes.
  #   Pass -1 to use the default limit.
  # @param ttl [Integer] Limit on the time that has passed since the last time a file was accessed (or creation time
  #   for some filesystems).
  #   Pass -1 to use the default limit.
  # @param count [Integer] Limit on the total number of files after deletion.
  #   Pass -1 to use the default limit.
  # @param immunity_delay [Integer] The amount of time after the creation of a file during which it can't be deleted,
  #   in seconds.
  #   Pass -1 to use the default value.
  # @param file_types [Array<TD::Types::FileType>] If non-empty, only files with the given types are considered.
  #   By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted.
  # @param chat_ids [Array<Integer>] If non-empty, only files from the given chats are considered.
  #   Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos).
  # @param exclude_chat_ids [Array<Integer>] If non-empty, files from the given chats are excluded.
  #   Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos).
  # @param return_deleted_file_statistics [Boolean] Pass true if statistics about the files that were deleted must be
  #   returned instead of the whole storage usage statistics.
  #   Affects only returned statistics.
  # @param chat_limit [Integer] Same as in getStorageStatistics.
  #   Affects only returned statistics.
  # @return [TD::Types::StorageStatistics]
  def optimizeStorage(size:, ttl:, count:, immunity_delay:, file_types:, chat_ids:, exclude_chat_ids:,
                      return_deleted_file_statistics:, chat_limit:)
    broadcast('@type'                          => 'optimizeStorage',
              'size'                           => size,
              'ttl'                            => ttl,
              'count'                          => count,
              'immunity_delay'                 => immunity_delay,
              'file_types'                     => file_types,
              'chat_ids'                       => chat_ids,
              'exclude_chat_ids'               => exclude_chat_ids,
              'return_deleted_file_statistics' => return_deleted_file_statistics,
              'chat_limit'                     => chat_limit)
  end
  
  # Parses Markdown entities in a human-friendly format, ignoring markup errors.
  # Can be called synchronously.
  #
  # @param text [TD::Types::FormattedText] The text to parse.
  #   For example, "__italic__ ~~strikethrough~~ ||spoiler|| **bold** `code` ```pre``` __[italic__
  #   text_url](telegram.org) __italic**bold italic__bold**".
  # @return [TD::Types::FormattedText]
  def parseMarkdown(text:)
    broadcast('@type' => 'parseMarkdown',
              'text'  => text)
  end
  
  # Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Code, Pre, PreCode, TextUrl and MentionName
  #   entities from a marked-up text.
  # Can be called synchronously.
  #
  # @param text [TD::Types::String] The text to parse.
  # @param parse_mode [TD::Types::TextParseMode] Text parse mode.
  # @return [TD::Types::FormattedText]
  def parseTextEntities(text:, parse_mode:)
    broadcast('@type'      => 'parseTextEntities',
              'text'       => text,
              'parse_mode' => parse_mode)
  end
  
  # Pins a message in a chat; requires can_pin_messages rights or can_edit_messages rights in the channel.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_id [Integer] Identifier of the new pinned message.
  # @param disable_notification [Boolean] Pass true to disable notification about the pinned message.
  #   Notifications are always disabled in channels and private chats.
  # @param only_for_self [Boolean] Pass true to pin the message only for self; private chats only.
  # @return [TD::Types::Ok]
  def pinChatMessage(chat_id:, message_id:, disable_notification:, only_for_self:)
    broadcast('@type'                => 'pinChatMessage',
              'chat_id'              => chat_id,
              'message_id'           => message_id,
              'disable_notification' => disable_notification,
              'only_for_self'        => only_for_self)
  end
  
  # Computes time needed to receive a response from a Telegram server through a proxy.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  #   Use 0 to ping a Telegram server without a proxy.
  # @return [TD::Types::Seconds]
  def pingProxy(proxy_id:)
    broadcast('@type'    => 'pingProxy',
              'proxy_id' => proxy_id)
  end
  
  # Preliminary uploads a file to the cloud before sending it in a message, which can be useful for uploading of being
  #   recorded voice and video notes.
  # Updates updateFile will be used to notify about upload progress and successful completion of the upload.
  # The file will not have a persistent remote identifier until it will be sent in a message.
  #
  # @param file [TD::Types::InputFile] File to upload.
  # @param file_type [TD::Types::FileType] File type; pass null if unknown.
  # @param priority [Integer] Priority of the upload (1-32).
  #   The higher the priority, the earlier the file will be uploaded.
  #   If the priorities of two files are equal, then the first one for which preliminaryUploadFile was called will be
  #   uploaded first.
  # @return [TD::Types::File]
  def preliminaryUploadFile(file:, file_type:, priority:)
    broadcast('@type'     => 'preliminaryUploadFile',
              'file'      => file,
              'file_type' => file_type,
              'priority'  => priority)
  end
  
  # Handles a pending join request in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] Identifier of the user that sent the request.
  # @param approve [Boolean] Pass true to approve the request; pass false to decline it.
  # @return [TD::Types::Ok]
  def processChatJoinRequest(chat_id:, user_id:, approve:)
    broadcast('@type'   => 'processChatJoinRequest',
              'chat_id' => chat_id,
              'user_id' => user_id,
              'approve' => approve)
  end
  
  # Handles all pending join requests for a given link in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link for which to process join requests.
  #   If empty, all join requests will be processed.
  #   Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  # @param approve [Boolean] Pass true to approve all requests; pass false to decline them.
  # @return [TD::Types::Ok]
  def processChatJoinRequests(chat_id:, invite_link:, approve:)
    broadcast('@type'       => 'processChatJoinRequests',
              'chat_id'     => chat_id,
              'invite_link' => invite_link,
              'approve'     => approve)
  end
  
  # Handles a push notification.
  # Returns error with code 406 if the push notification is not supported and connection to the server is required to
  #   fetch new data.
  # Can be called before authorization.
  #
  # @param payload [TD::Types::String] JSON-encoded push notification payload with all fields sent by the server, and
  #   "google.sent_time" and "google.notification.sound" fields added.
  # @return [TD::Types::Ok]
  def processPushNotification(payload:)
    broadcast('@type'   => 'processPushNotification',
              'payload' => payload)
  end
  
  # Rates recognized speech in a video note or a voice note message.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param is_good [Boolean] Pass true if the speech recognition is good.
  # @return [TD::Types::Ok]
  def rateSpeechRecognition(chat_id:, message_id:, is_good:)
    broadcast('@type'      => 'rateSpeechRecognition',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'is_good'    => is_good)
  end
  
  # Marks all mentions in a chat as read.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def readAllChatMentions(chat_id:)
    broadcast('@type'   => 'readAllChatMentions',
              'chat_id' => chat_id)
  end
  
  # Marks all reactions in a chat or a forum topic as read.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def readAllChatReactions(chat_id:)
    broadcast('@type'   => 'readAllChatReactions',
              'chat_id' => chat_id)
  end
  
  # Marks all mentions in a forum topic as read.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] Message thread identifier in which mentions are marked as read.
  # @return [TD::Types::Ok]
  def readAllMessageThreadMentions(chat_id:, message_thread_id:)
    broadcast('@type'             => 'readAllMessageThreadMentions',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Marks all reactions in a forum topic as read.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] Message thread identifier in which reactions are marked as read.
  # @return [TD::Types::Ok]
  def readAllMessageThreadReactions(chat_id:, message_thread_id:)
    broadcast('@type'             => 'readAllMessageThreadReactions',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Reads a part of a file from the TDLib file cache and returns read bytes.
  # This method is intended to be used only if the application has no direct access to TDLib's file system, because it
  #   is usually slower than a direct read from the file.
  #
  # @param file_id [Integer] Identifier of the file.
  #   The file must be located in the TDLib file cache.
  # @param offset [Integer] The offset from which to read the file.
  # @param count [Integer] Number of bytes to read.
  #   An error will be returned if there are not enough bytes available in the file from the specified position.
  #   Pass 0 to read all available data from the specified position.
  # @return [TD::Types::FilePart]
  def readFilePart(file_id:, offset:, count:)
    broadcast('@type'   => 'readFilePart',
              'file_id' => file_id,
              'offset'  => offset,
              'count'   => count)
  end
  
  # Recognizes speech in a video note or a voice note message.
  # The message must be successfully sent and must not be scheduled.
  # May return an error with a message "MSG_VOICE_TOO_LONG" if media duration is too big to be recognized.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @return [TD::Types::Ok]
  def recognizeSpeech(chat_id:, message_id:)
    broadcast('@type'      => 'recognizeSpeech',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Recovers the 2-step verification password with a password recovery code sent to an email address that was
  #   previously set up.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # @param recovery_code [TD::Types::String] Recovery code to check.
  # @param new_password [TD::Types::String, nil] New 2-step verification password of the user; may be empty to remove
  #   the password.
  # @param new_hint [TD::Types::String, nil] New password hint; may be empty.
  # @return [TD::Types::Ok]
  def recoverAuthenticationPassword(recovery_code:, new_password: nil, new_hint: nil)
    broadcast('@type'         => 'recoverAuthenticationPassword',
              'recovery_code' => recovery_code,
              'new_password'  => new_password,
              'new_hint'      => new_hint)
  end
  
  # Recovers the 2-step verification password using a recovery code sent to an email address that was previously set
  #   up.
  #
  # @param recovery_code [TD::Types::String] Recovery code to check.
  # @param new_password [TD::Types::String, nil] New 2-step verification password of the user; may be empty to remove
  #   the password.
  # @param new_hint [TD::Types::String, nil] New password hint; may be empty.
  # @return [TD::Types::PasswordState]
  def recoverPassword(recovery_code:, new_password: nil, new_hint: nil)
    broadcast('@type'         => 'recoverPassword',
              'recovery_code' => recovery_code,
              'new_password'  => new_password,
              'new_hint'      => new_hint)
  end
  
  # Registers the currently used device for receiving push notifications.
  # Returns a globally unique identifier of the push notification subscription.
  #
  # @param device_token [TD::Types::DeviceToken] Device token.
  # @param other_user_ids [Array<Integer>] List of user identifiers of other users currently using the application.
  # @return [TD::Types::PushReceiverId]
  def registerDevice(device_token:, other_user_ids:)
    broadcast('@type'          => 'registerDevice',
              'device_token'   => device_token,
              'other_user_ids' => other_user_ids)
  end
  
  # Finishes user registration.
  # Works only when the current authorization state is authorizationStateWaitRegistration.
  #
  # @param first_name [TD::Types::String] The first name of the user; 1-64 characters.
  # @param last_name [TD::Types::String] The last name of the user; 0-64 characters.
  # @return [TD::Types::Ok]
  def registerUser(first_name:, last_name:)
    broadcast('@type'      => 'registerUser',
              'first_name' => first_name,
              'last_name'  => last_name)
  end
  
  # Removes all files from the file download list.
  #
  # @param only_active [Boolean] Pass true to remove only active downloads, including paused.
  # @param only_completed [Boolean] Pass true to remove only completed downloads.
  # @param delete_from_cache [Boolean] Pass true to delete the file from the TDLib file cache.
  # @return [TD::Types::Ok]
  def removeAllFilesFromDownloads(only_active:, only_completed:, delete_from_cache:)
    broadcast('@type'             => 'removeAllFilesFromDownloads',
              'only_active'       => only_active,
              'only_completed'    => only_completed,
              'delete_from_cache' => delete_from_cache)
  end
  
  # Removes background from the list of installed backgrounds.
  #
  # @param background_id [Integer] The background identifier.
  # @return [TD::Types::Ok]
  def removeBackground(background_id:)
    broadcast('@type'         => 'removeBackground',
              'background_id' => background_id)
  end
  
  # Removes a chat action bar without any other action.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def removeChatActionBar(chat_id:)
    broadcast('@type'   => 'removeChatActionBar',
              'chat_id' => chat_id)
  end
  
  # Removes users from the contact list.
  #
  # @param user_ids [Array<Integer>] Identifiers of users to be deleted.
  # @return [TD::Types::Ok]
  def removeContacts(user_ids:)
    broadcast('@type'    => 'removeContacts',
              'user_ids' => user_ids)
  end
  
  # Removes a sticker from the list of favorite stickers.
  #
  # @param sticker [TD::Types::InputFile] Sticker file to delete from the list.
  # @return [TD::Types::Ok]
  def removeFavoriteSticker(sticker:)
    broadcast('@type'   => 'removeFavoriteSticker',
              'sticker' => sticker)
  end
  
  # Removes a file from the file download list.
  #
  # @param file_id [Integer] Identifier of the downloaded file.
  # @param delete_from_cache [Boolean] Pass true to delete the file from the TDLib file cache.
  # @return [TD::Types::Ok]
  def removeFileFromDownloads(file_id:, delete_from_cache:)
    broadcast('@type'             => 'removeFileFromDownloads',
              'file_id'           => file_id,
              'delete_from_cache' => delete_from_cache)
  end
  
  # Removes a reaction from a message.
  # A chosen reaction can always be removed.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param reaction_type [TD::Types::ReactionType] Type of the reaction to remove.
  # @return [TD::Types::Ok]
  def removeMessageReaction(chat_id:, message_id:, reaction_type:)
    broadcast('@type'         => 'removeMessageReaction',
              'chat_id'       => chat_id,
              'message_id'    => message_id,
              'reaction_type' => reaction_type)
  end
  
  # Removes an active notification from notification list.
  # Needs to be called only if the notification is removed by the current user.
  #
  # @param notification_group_id [Integer] Identifier of notification group to which the notification belongs.
  # @param notification_id [Integer] Identifier of removed notification.
  # @return [TD::Types::Ok]
  def removeNotification(notification_group_id:, notification_id:)
    broadcast('@type'                 => 'removeNotification',
              'notification_group_id' => notification_group_id,
              'notification_id'       => notification_id)
  end
  
  # Removes a group of active notifications.
  # Needs to be called only if the notification group is removed by the current user.
  #
  # @param notification_group_id [Integer] Notification group identifier.
  # @param max_notification_id [Integer] The maximum identifier of removed notifications.
  # @return [TD::Types::Ok]
  def removeNotificationGroup(notification_group_id:, max_notification_id:)
    broadcast('@type'                 => 'removeNotificationGroup',
              'notification_group_id' => notification_group_id,
              'max_notification_id'   => max_notification_id)
  end
  
  # Removes a proxy server.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @return [TD::Types::Ok]
  def removeProxy(proxy_id:)
    broadcast('@type'    => 'removeProxy',
              'proxy_id' => proxy_id)
  end
  
  # Removes a hashtag from the list of recently used hashtags.
  #
  # @param hashtag [TD::Types::String] Hashtag to delete.
  # @return [TD::Types::Ok]
  def removeRecentHashtag(hashtag:)
    broadcast('@type'   => 'removeRecentHashtag',
              'hashtag' => hashtag)
  end
  
  # Removes a sticker from the list of recently used stickers.
  #
  # @param is_attached [Boolean] Pass true to remove the sticker from the list of stickers recently attached to photo
  #   or video files; pass false to remove the sticker from the list of recently sent stickers.
  # @param sticker [TD::Types::InputFile] Sticker file to delete.
  # @return [TD::Types::Ok]
  def removeRecentSticker(is_attached:, sticker:)
    broadcast('@type'       => 'removeRecentSticker',
              'is_attached' => is_attached,
              'sticker'     => sticker)
  end
  
  # Removes a chat from the list of recently found chats.
  #
  # @param chat_id [Integer] Identifier of the chat to be removed.
  # @return [TD::Types::Ok]
  def removeRecentlyFoundChat(chat_id:)
    broadcast('@type'   => 'removeRecentlyFoundChat',
              'chat_id' => chat_id)
  end
  
  # Removes an animation from the list of saved animations.
  #
  # @param animation [TD::Types::InputFile] Animation file to be removed.
  # @return [TD::Types::Ok]
  def removeSavedAnimation(animation:)
    broadcast('@type'     => 'removeSavedAnimation',
              'animation' => animation)
  end
  
  # Removes a notification sound from the list of saved notification sounds.
  #
  # @param notification_sound_id [Integer] Identifier of the notification sound.
  # @return [TD::Types::Ok]
  def removeSavedNotificationSound(notification_sound_id:)
    broadcast('@type'                 => 'removeSavedNotificationSound',
              'notification_sound_id' => notification_sound_id)
  end
  
  # Removes a sticker from the set to which it belongs; for bots only.
  # The sticker set must have been created by the bot.
  #
  # @param sticker [TD::Types::InputFile] Sticker.
  # @return [TD::Types::Ok]
  def removeStickerFromSet(sticker:)
    broadcast('@type'   => 'removeStickerFromSet',
              'sticker' => sticker)
  end
  
  # Removes a chat from the list of frequently used chats.
  # Supported only if the chat info database is enabled.
  #
  # @param category [TD::Types::TopChatCategory] Category of frequently used chats.
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def removeTopChat(category:, chat_id:)
    broadcast('@type'    => 'removeTopChat',
              'category' => category,
              'chat_id'  => chat_id)
  end
  
  # Changes order of active usernames of the current user.
  #
  # @param usernames [Array<TD::Types::String>] The new order of active usernames.
  #   All currently active usernames must be specified.
  # @return [TD::Types::Ok]
  def reorderActiveUsernames(usernames:)
    broadcast('@type'     => 'reorderActiveUsernames',
              'usernames' => usernames)
  end
  
  # Changes the order of chat filters.
  #
  # @param chat_filter_ids [Array<Integer>] Identifiers of chat filters in the new correct order.
  # @param main_chat_list_position [Integer] Position of the main chat list among chat filters, 0-based.
  #   Can be non-zero only for Premium users.
  # @return [TD::Types::Ok]
  def reorderChatFilters(chat_filter_ids:, main_chat_list_position:)
    broadcast('@type'                   => 'reorderChatFilters',
              'chat_filter_ids'         => chat_filter_ids,
              'main_chat_list_position' => main_chat_list_position)
  end
  
  # Changes the order of installed sticker sets.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to reorder.
  # @param sticker_set_ids [Array<Integer>] Identifiers of installed sticker sets in the new correct order.
  # @return [TD::Types::Ok]
  def reorderInstalledStickerSets(sticker_type:, sticker_set_ids:)
    broadcast('@type'           => 'reorderInstalledStickerSets',
              'sticker_type'    => sticker_type,
              'sticker_set_ids' => sticker_set_ids)
  end
  
  # Changes order of active usernames of a supergroup or channel, requires owner privileges in the supergroup or
  #   channel.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param usernames [Array<TD::Types::String>] The new order of active usernames.
  #   All currently active usernames must be specified.
  # @return [TD::Types::Ok]
  def reorderSupergroupActiveUsernames(supergroup_id:, usernames:)
    broadcast('@type'         => 'reorderSupergroupActiveUsernames',
              'supergroup_id' => supergroup_id,
              'usernames'     => usernames)
  end
  
  # Replaces current primary invite link for a chat with a new primary invite link.
  # Available for basic groups, supergroups, and channels.
  # Requires administrator privileges and can_invite_users right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatInviteLink]
  def replacePrimaryChatInviteLink(chat_id:)
    broadcast('@type'   => 'replacePrimaryChatInviteLink',
              'chat_id' => chat_id)
  end
  
  # Replaces the current RTMP URL for streaming to the chat; requires creator privileges.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::RtmpUrl]
  def replaceVideoChatRtmpUrl(chat_id:)
    broadcast('@type'   => 'replaceVideoChatRtmpUrl',
              'chat_id' => chat_id)
  end
  
  # Reports a chat to the Telegram moderators.
  # A chat can be reported only from the chat action bar, or if chat.can_be_reported.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_ids [Array<Integer>, nil] Identifiers of reported messages; may be empty to report the whole chat.
  # @param reason [TD::Types::ChatReportReason] The reason for reporting the chat.
  # @param text [TD::Types::String] Additional report details; 0-1024 characters.
  # @return [TD::Types::Ok]
  def reportChat(chat_id:, message_ids: nil, reason:, text:)
    broadcast('@type'       => 'reportChat',
              'chat_id'     => chat_id,
              'message_ids' => message_ids,
              'reason'      => reason,
              'text'        => text)
  end
  
  # Reports a chat photo to the Telegram moderators.
  # A chat photo can be reported only if chat.can_be_reported.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param file_id [Integer] Identifier of the photo to report.
  #   Only full photos from {TD::Types::ChatPhoto} can be reported.
  # @param reason [TD::Types::ChatReportReason] The reason for reporting the chat photo.
  # @param text [TD::Types::String] Additional report details; 0-1024 characters.
  # @return [TD::Types::Ok]
  def reportChatPhoto(chat_id:, file_id:, reason:, text:)
    broadcast('@type'   => 'reportChatPhoto',
              'chat_id' => chat_id,
              'file_id' => file_id,
              'reason'  => reason,
              'text'    => text)
  end
  
  # Reports reactions set on a message to the Telegram moderators.
  # Reactions on a message can be reported only if message.can_report_reactions.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Message identifier.
  # @param sender_id [TD::Types::MessageSender] Identifier of the sender, which added the reaction.
  # @return [TD::Types::Ok]
  def reportMessageReactions(chat_id:, message_id:, sender_id:)
    broadcast('@type'      => 'reportMessageReactions',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'sender_id'  => sender_id)
  end
  
  # Reports a false deletion of a message by aggressive anti-spam checks; requires administrator rights in the
  #   supergroup.
  # Can be called only for messages from chatEventMessageDeleted with can_report_anti_spam_false_positive == true.
  #
  # @param supergroup_id [Integer] Supergroup identifier.
  # @param message_id [Integer] Identifier of the erroneously deleted message.
  # @return [TD::Types::Ok]
  def reportSupergroupAntiSpamFalsePositive(supergroup_id:, message_id:)
    broadcast('@type'         => 'reportSupergroupAntiSpamFalsePositive',
              'supergroup_id' => supergroup_id,
              'message_id'    => message_id)
  end
  
  # Reports messages in a supergroup as spam; requires administrator rights in the supergroup.
  #
  # @param supergroup_id [Integer] Supergroup identifier.
  # @param message_ids [Array<Integer>] Identifiers of messages to report.
  # @return [TD::Types::Ok]
  def reportSupergroupSpam(supergroup_id:, message_ids:)
    broadcast('@type'         => 'reportSupergroupSpam',
              'supergroup_id' => supergroup_id,
              'message_ids'   => message_ids)
  end
  
  # Requests to send a 2-step verification password recovery code to an email address that was previously set up.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # @return [TD::Types::Ok]
  def requestAuthenticationPasswordRecovery
    broadcast('@type' => 'requestAuthenticationPasswordRecovery')
  end
  
  # Requests to send a 2-step verification password recovery code to an email address that was previously set up.
  #
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def requestPasswordRecovery
    broadcast('@type' => 'requestPasswordRecovery')
  end
  
  # Requests QR code authentication by scanning a QR code on another logged in device.
  # Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending
  #   authentication query and the current authorization state is authorizationStateWaitEmailAddress,
  #   authorizationStateWaitEmailCode, authorizationStateWaitCode, authorizationStateWaitRegistration, or
  #   authorizationStateWaitPassword.
  #
  # @param other_user_ids [Array<Integer>] List of user identifiers of other users currently using the application.
  # @return [TD::Types::Ok]
  def requestQrCodeAuthentication(other_user_ids:)
    broadcast('@type'          => 'requestQrCodeAuthentication',
              'other_user_ids' => other_user_ids)
  end
  
  # Resends an authentication code to the user.
  # Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is
  #   not null and the server-specified timeout has passed, or when the current authorization state is
  #   authorizationStateWaitEmailCode.
  #
  # @return [TD::Types::Ok]
  def resendAuthenticationCode
    broadcast('@type' => 'resendAuthenticationCode')
  end
  
  # Resends the authentication code sent to confirm a new phone number for the current user.
  # Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified
  #   timeout has passed.
  #
  # @return [TD::Types::AuthenticationCodeInfo]
  def resendChangePhoneNumberCode
    broadcast('@type' => 'resendChangePhoneNumberCode')
  end
  
  # Resends the code to verify an email address to be added to a user's Telegram Passport.
  #
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def resendEmailAddressVerificationCode
    broadcast('@type' => 'resendEmailAddressVerificationCode')
  end
  
  # Resends the login email address verification code.
  #
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def resendLoginEmailAddressCode
    broadcast('@type' => 'resendLoginEmailAddressCode')
  end
  
  # Resends messages which failed to send.
  # Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in
  #   messageSendingStateFailed.retry_after time passed.
  # If a message is re-sent, the corresponding failed to send message is deleted.
  # Returns the sent messages in the same order as the message identifiers passed in message_ids.
  # If a message can't be re-sent, null will be returned instead of the message.
  #
  # @param chat_id [Integer] Identifier of the chat to send messages.
  # @param message_ids [Array<Integer>] Identifiers of the messages to resend.
  #   Message identifiers must be in a strictly increasing order.
  # @return [TD::Types::Messages]
  def resendMessages(chat_id:, message_ids:)
    broadcast('@type'       => 'resendMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids)
  end
  
  # Resends phone number confirmation code.
  #
  # @return [TD::Types::AuthenticationCodeInfo]
  def resendPhoneNumberConfirmationCode
    broadcast('@type' => 'resendPhoneNumberConfirmationCode')
  end
  
  # Resends the code to verify a phone number to be added to a user's Telegram Passport.
  #
  # @return [TD::Types::AuthenticationCodeInfo]
  def resendPhoneNumberVerificationCode
    broadcast('@type' => 'resendPhoneNumberVerificationCode')
  end
  
  # Resends the 2-step verification recovery email address verification code.
  #
  # @return [TD::Types::PasswordState]
  def resendRecoveryEmailAddressCode
    broadcast('@type' => 'resendRecoveryEmailAddressCode')
  end
  
  # Resets all notification settings to their default values.
  # By default, all chats are unmuted and message previews are shown.
  #
  # @return [TD::Types::Ok]
  def resetAllNotificationSettings
    broadcast('@type' => 'resetAllNotificationSettings')
  end
  
  # Resets the login email address.
  # May return an error with a message "TASK_ALREADY_EXISTS" if reset is still pending.
  # Works only when the current authorization state is authorizationStateWaitEmailCode and
  #   authorization_state.can_reset_email_address == true.
  #
  # @return [TD::Types::Ok]
  def resetAuthenticationEmailAddress
    broadcast('@type' => 'resetAuthenticationEmailAddress')
  end
  
  # Resets list of installed backgrounds to its default value.
  #
  # @return [TD::Types::Ok]
  def resetBackgrounds
    broadcast('@type' => 'resetBackgrounds')
  end
  
  # Resets all network data usage statistics to zero.
  # Can be called before authorization.
  #
  # @return [TD::Types::Ok]
  def resetNetworkStatistics
    broadcast('@type' => 'resetNetworkStatistics')
  end
  
  # Removes 2-step verification password without previous password and access to recovery email address.
  # The password can't be reset immediately and the request needs to be repeated after the specified time.
  #
  # @return [TD::Types::ResetPasswordResult]
  def resetPassword
    broadcast('@type' => 'resetPassword')
  end
  
  # Revokes invite link for a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  # If a primary link is revoked, then additionally to the revoked link returns new primary link.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link to be revoked.
  # @return [TD::Types::ChatInviteLinks]
  def revokeChatInviteLink(chat_id:, invite_link:)
    broadcast('@type'       => 'revokeChatInviteLink',
              'chat_id'     => chat_id,
              'invite_link' => invite_link)
  end
  
  # Revokes invite link for a group call.
  # Requires groupCall.can_be_managed group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def revokeGroupCallInviteLink(group_call_id:)
    broadcast('@type'         => 'revokeGroupCallInviteLink',
              'group_call_id' => group_call_id)
  end
  
  # Saves application log event on the server.
  # Can be called before authorization.
  #
  # @param type [TD::Types::String] Event type.
  # @param chat_id [Integer] Optional chat identifier, associated with the event.
  # @param data [TD::Types::JsonValue] The log event data.
  # @return [TD::Types::Ok]
  def saveApplicationLogEvent(type:, chat_id:, data:)
    broadcast('@type'   => 'saveApplicationLogEvent',
              'type'    => type,
              'chat_id' => chat_id,
              'data'    => data)
  end
  
  # Searches for a background by its name.
  #
  # @param name [TD::Types::String] The name of the background.
  # @return [TD::Types::Background]
  def searchBackground(name:)
    broadcast('@type' => 'searchBackground',
              'name'  => name)
  end
  
  # Searches for call messages.
  # Returns the results in reverse chronological order (i.e., in order of decreasing message_id).
  # For optimal performance, the number of returned messages is chosen by TDLib.
  #
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param only_missed [Boolean] Pass true to search only for messages with missed/declined calls.
  # @return [TD::Types::FoundMessages]
  def searchCallMessages(offset:, limit:, only_missed:)
    broadcast('@type'       => 'searchCallMessages',
              'offset'      => offset,
              'limit'       => limit,
              'only_missed' => only_missed)
  end
  
  # Searches for a specified query in the first name, last name and usernames of the members of a specified chat.
  # Requires administrator rights in channels.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param query [TD::Types::String] Query to search for.
  # @param limit [Integer] The maximum number of users to be returned; up to 200.
  # @param filter [TD::Types::ChatMembersFilter] The type of users to search for; pass null to search among all chat
  #   members.
  # @return [TD::Types::ChatMembers]
  def searchChatMembers(chat_id:, query:, limit:, filter:)
    broadcast('@type'   => 'searchChatMembers',
              'chat_id' => chat_id,
              'query'   => query,
              'limit'   => limit,
              'filter'  => filter)
  end
  
  # Searches for messages with given words in the chat.
  # Returns the results in reverse chronological order, i.e.
  # in order of decreasing message_id.
  # Cannot be used in secret chats with a non-empty query (searchSecretMessages must be used instead), or without an
  #   enabled message database.
  # For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # A combination of query, sender_id, filter and message_thread_id search criteria is expected to be supported, only
  #   if it is required for Telegram official application implementation.
  #
  # @param chat_id [Integer] Identifier of the chat in which to search messages.
  # @param query [TD::Types::String] Query to search for.
  # @param sender_id [TD::Types::MessageSender] Identifier of the sender of messages to search for; pass null to search
  #   for messages from any sender.
  #   Not supported in secret chats.
  # @param from_message_id [Integer] Identifier of the message starting from which history must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the from_message_id or a negative offset to get the
  #   specified message and some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than -offset.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param filter [TD::Types::SearchMessagesFilter] Additional filter for messages to search; pass null to search for
  #   all messages.
  # @param message_thread_id [Integer] If not 0, only messages in the specified thread will be returned; supergroups
  #   only.
  # @return [TD::Types::FoundChatMessages]
  def searchChatMessages(chat_id:, query:, sender_id:, from_message_id:, offset:, limit:, filter:, message_thread_id:)
    broadcast('@type'             => 'searchChatMessages',
              'chat_id'           => chat_id,
              'query'             => query,
              'sender_id'         => sender_id,
              'from_message_id'   => from_message_id,
              'offset'            => offset,
              'limit'             => limit,
              'filter'            => filter,
              'message_thread_id' => message_thread_id)
  end
  
  # Returns information about the recent locations of chat members that were sent to the chat.
  # Returns up to 1 location message per user.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param limit [Integer] The maximum number of messages to be returned.
  # @return [TD::Types::Messages]
  def searchChatRecentLocationMessages(chat_id:, limit:)
    broadcast('@type'   => 'searchChatRecentLocationMessages',
              'chat_id' => chat_id,
              'limit'   => limit)
  end
  
  # Searches for the specified query in the title and username of already known chats, this is an offline request.
  # Returns chats in the order seen in the main chat list.
  #
  # @param query [TD::Types::String] Query to search for.
  #   If the query is empty, returns up to 50 recently found chats.
  # @param limit [Integer] The maximum number of chats to be returned.
  # @return [TD::Types::Chats]
  def searchChats(query:, limit:)
    broadcast('@type' => 'searchChats',
              'query' => query,
              'limit' => limit)
  end
  
  # Returns a list of users and location-based supergroups nearby.
  # The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby.
  # The request must be sent again every 25 seconds with adjusted location to not miss new chats.
  #
  # @param location [TD::Types::Location] Current user location.
  # @return [TD::Types::ChatsNearby]
  def searchChatsNearby(location:)
    broadcast('@type'    => 'searchChatsNearby',
              'location' => location)
  end
  
  # Searches for the specified query in the title and username of already known chats via request to the server.
  # Returns chats in the order seen in the main chat list.
  #
  # @param query [TD::Types::String] Query to search for.
  # @param limit [Integer] The maximum number of chats to be returned.
  # @return [TD::Types::Chats]
  def searchChatsOnServer(query:, limit:)
    broadcast('@type' => 'searchChatsOnServer',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches for the specified query in the first names, last names and usernames of the known user contacts.
  #
  # @param query [TD::Types::String, nil] Query to search for; may be empty to return all contacts.
  # @param limit [Integer] The maximum number of users to be returned.
  # @return [TD::Types::Users]
  def searchContacts(query: nil, limit:)
    broadcast('@type' => 'searchContacts',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches for emojis by keywords.
  # Supported only if the file database is enabled.
  #
  # @param text [TD::Types::String] Text to search for.
  # @param exact_match [Boolean] Pass true if only emojis, which exactly match the text, needs to be returned.
  # @param input_language_codes [Array<TD::Types::String>, nil] List of possible IETF language tags of the user's input
  #   language; may be empty if unknown.
  # @return [TD::Types::Emojis]
  def searchEmojis(text:, exact_match:, input_language_codes: nil)
    broadcast('@type'                => 'searchEmojis',
              'text'                 => text,
              'exact_match'          => exact_match,
              'input_language_codes' => input_language_codes)
  end
  
  # Searches for files in the file download list or recently downloaded files from the list.
  #
  # @param query [TD::Types::String, nil] Query to search for; may be empty to return all downloaded files.
  # @param only_active [Boolean] Pass true to search only for active downloads, including paused.
  # @param only_completed [Boolean] Pass true to search only for completed downloads.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of files to be returned.
  # @return [TD::Types::FoundFileDownloads]
  def searchFileDownloads(query: nil, only_active:, only_completed:, offset:, limit:)
    broadcast('@type'          => 'searchFileDownloads',
              'query'          => query,
              'only_active'    => only_active,
              'only_completed' => only_completed,
              'offset'         => offset,
              'limit'          => limit)
  end
  
  # Searches for recently used hashtags by their prefix.
  #
  # @param prefix [TD::Types::String] Hashtag prefix to search for.
  # @param limit [Integer] The maximum number of hashtags to be returned.
  # @return [TD::Types::Hashtags]
  def searchHashtags(prefix:, limit:)
    broadcast('@type'  => 'searchHashtags',
              'prefix' => prefix,
              'limit'  => limit)
  end
  
  # Searches for installed sticker sets by looking for specified query in their title and name.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to search for.
  # @param query [TD::Types::String] Query to search for.
  # @param limit [Integer] The maximum number of sticker sets to return.
  # @return [TD::Types::StickerSets]
  def searchInstalledStickerSets(sticker_type:, query:, limit:)
    broadcast('@type'        => 'searchInstalledStickerSets',
              'sticker_type' => sticker_type,
              'query'        => query,
              'limit'        => limit)
  end
  
  # Searches for messages in all chats except secret chats.
  # Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)).
  # For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  #
  # @param chat_list [TD::Types::ChatList] Chat list in which to search messages; pass null to search in all chats
  #   regardless of their chat list.
  #   Only Main and Archive chat lists are supported.
  # @param query [TD::Types::String] Query to search for.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param filter [TD::Types::SearchMessagesFilter] Additional filter for messages to search; pass null to search for
  #   all messages.
  #   Filters searchMessagesFilterMention, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction,
  #   searchMessagesFilterFailedToSend, and {TD::Types::SearchMessagesFilter::Pinned} are unsupported in this function.
  # @param min_date [Integer] If not 0, the minimum date of the messages to return.
  # @param max_date [Integer] If not 0, the maximum date of the messages to return.
  # @return [TD::Types::FoundMessages]
  def searchMessages(chat_list:, query:, offset:, limit:, filter:, min_date:, max_date:)
    broadcast('@type'     => 'searchMessages',
              'chat_list' => chat_list,
              'query'     => query,
              'offset'    => offset,
              'limit'     => limit,
              'filter'    => filter,
              'min_date'  => min_date,
              'max_date'  => max_date)
  end
  
  # Searches for outgoing messages with content of the type messageDocument in all chats except secret chats.
  # Returns the results in reverse chronological order.
  #
  # @param query [TD::Types::String] Query to search for in document file name and message caption.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  # @return [TD::Types::FoundMessages]
  def searchOutgoingDocumentMessages(query:, limit:)
    broadcast('@type' => 'searchOutgoingDocumentMessages',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches a public chat by its username.
  # Currently, only private chats, supergroups and channels can be public.
  # Returns the chat if found; otherwise, an error is returned.
  #
  # @param username [TD::Types::String] Username to be resolved.
  # @return [TD::Types::Chat]
  def searchPublicChat(username:)
    broadcast('@type'    => 'searchPublicChat',
              'username' => username)
  end
  
  # Searches public chats by looking for specified query in their username and title.
  # Currently, only private chats, supergroups and channels can be public.
  # Returns a meaningful number of results.
  # Excludes private chats with contacts and chats from the chat list from the results.
  #
  # @param query [TD::Types::String] Query to search for.
  # @return [TD::Types::Chats]
  def searchPublicChats(query:)
    broadcast('@type' => 'searchPublicChats',
              'query' => query)
  end
  
  # Searches for messages in secret chats.
  # Returns the results in reverse chronological order.
  # For optimal performance, the number of returned messages is chosen by TDLib.
  #
  # @param chat_id [Integer] Identifier of the chat in which to search.
  #   Specify 0 to search in all secret chats.
  # @param query [TD::Types::String] Query to search for.
  #   If empty, searchChatMessages must be used instead.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param filter [TD::Types::SearchMessagesFilter] Additional filter for messages to search; pass null to search for
  #   all messages.
  # @return [TD::Types::FoundMessages]
  def searchSecretMessages(chat_id:, query:, offset:, limit:, filter:)
    broadcast('@type'   => 'searchSecretMessages',
              'chat_id' => chat_id,
              'query'   => query,
              'offset'  => offset,
              'limit'   => limit,
              'filter'  => filter)
  end
  
  # Searches for a sticker set by its name.
  #
  # @param name [TD::Types::String] Name of the sticker set.
  # @return [TD::Types::StickerSet]
  def searchStickerSet(name:)
    broadcast('@type' => 'searchStickerSet',
              'name'  => name)
  end
  
  # Searches for ordinary sticker sets by looking for specified query in their title and name.
  # Excludes installed sticker sets from the results.
  #
  # @param query [TD::Types::String] Query to search for.
  # @return [TD::Types::StickerSets]
  def searchStickerSets(query:)
    broadcast('@type' => 'searchStickerSets',
              'query' => query)
  end
  
  # Searches for stickers from public sticker sets that correspond to any of the given emoji.
  #
  # @param sticker_type [TD::Types::StickerType, nil] Type of the stickers to return.
  # @param emojis [TD::Types::String] Space-separated list of emoji to search for; must be non-empty.
  # @param limit [Integer, nil] The maximum number of stickers to be returned; 0-100.
  # @return [TD::Types::Stickers]
  def searchStickers(sticker_type: nil, emojis:, limit: nil)
    broadcast('@type'        => 'searchStickers',
              'sticker_type' => sticker_type,
              'emojis'       => emojis,
              'limit'        => limit)
  end
  
  # Searches a user by their phone number.
  # Returns a 404 error if the user can't be found.
  #
  # @param phone_number [TD::Types::String] Phone number to search for.
  # @return [TD::Types::User]
  def searchUserByPhoneNumber(phone_number:)
    broadcast('@type'        => 'searchUserByPhoneNumber',
              'phone_number' => phone_number)
  end
  
  # Searches a user by a token from the user's link.
  #
  # @param token [TD::Types::String] Token to search for.
  # @return [TD::Types::User]
  def searchUserByToken(token:)
    broadcast('@type' => 'searchUserByToken',
              'token' => token)
  end
  
  # Returns information about a Web App by its short name.
  # Returns a 404 error if the Web App is not found.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param web_app_short_name [TD::Types::String] Short name of the Web App.
  # @return [TD::Types::FoundWebApp]
  def searchWebApp(bot_user_id:, web_app_short_name:)
    broadcast('@type'              => 'searchWebApp',
              'bot_user_id'        => bot_user_id,
              'web_app_short_name' => web_app_short_name)
  end
  
  # Sends Firebase Authentication SMS to the phone number of the user.
  # Works only when the current authorization state is authorizationStateWaitCode and the server returned code of the
  #   type authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos.
  #
  # @param token [TD::Types::String] SafetyNet Attestation API token for the Android application, or secret from push
  #   notification for the iOS application.
  # @return [TD::Types::Ok]
  def sendAuthenticationFirebaseSms(token:)
    broadcast('@type' => 'sendAuthenticationFirebaseSms',
              'token' => token)
  end
  
  # Invites a bot to a chat (if it is not yet a member) and sends it the /start command.
  # Bots can't be invited to a private chat other than the chat with the bot.
  # Bots can't be invited to channels (although they can be added as admins) and secret chats.
  # Returns the sent message.
  #
  # @param bot_user_id [Integer] Identifier of the bot.
  # @param chat_id [Integer] Identifier of the target chat.
  # @param parameter [TD::Types::String] A hidden parameter sent to the bot for deep linking purposes
  #   (https://core.telegram.org/bots#deep-linking).
  # @return [TD::Types::Message]
  def sendBotStartMessage(bot_user_id:, chat_id:, parameter:)
    broadcast('@type'       => 'sendBotStartMessage',
              'bot_user_id' => bot_user_id,
              'chat_id'     => chat_id,
              'parameter'   => parameter)
  end
  
  # Sends debug information for a call to Telegram servers.
  #
  # @param call_id [Integer] Call identifier.
  # @param debug_information [TD::Types::String] Debug information in application-specific format.
  # @return [TD::Types::Ok]
  def sendCallDebugInformation(call_id:, debug_information:)
    broadcast('@type'             => 'sendCallDebugInformation',
              'call_id'           => call_id,
              'debug_information' => debug_information)
  end
  
  # Sends log file for a call to Telegram servers.
  #
  # @param call_id [Integer] Call identifier.
  # @param log_file [TD::Types::InputFile] Call log file.
  #   Only {TD::Types::InputFile::Local} and {TD::Types::InputFile::Generated} are supported.
  # @return [TD::Types::Ok]
  def sendCallLog(call_id:, log_file:)
    broadcast('@type'    => 'sendCallLog',
              'call_id'  => call_id,
              'log_file' => log_file)
  end
  
  # Sends a call rating.
  #
  # @param call_id [Integer] Call identifier.
  # @param rating [Integer] Call rating; 1-5.
  # @param comment [TD::Types::String] An optional user comment if the rating is less than 5.
  # @param problems [Array<TD::Types::CallProblem>] List of the exact types of problems with the call, specified by the
  #   user.
  # @return [TD::Types::Ok]
  def sendCallRating(call_id:, rating:, comment:, problems:)
    broadcast('@type'    => 'sendCallRating',
              'call_id'  => call_id,
              'rating'   => rating,
              'comment'  => comment,
              'problems' => problems)
  end
  
  # Sends call signaling data.
  #
  # @param call_id [Integer] Call identifier.
  # @param data [String] The data.
  # @return [TD::Types::Ok]
  def sendCallSignalingData(call_id:, data:)
    broadcast('@type'   => 'sendCallSignalingData',
              'call_id' => call_id,
              'data'    => data)
  end
  
  # Sends a notification about user activity in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] If not 0, a message thread identifier in which the action was performed.
  # @param action [TD::Types::ChatAction] The action description; pass null to cancel the currently active action.
  # @return [TD::Types::Ok]
  def sendChatAction(chat_id:, message_thread_id:, action:)
    broadcast('@type'             => 'sendChatAction',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'action'            => action)
  end
  
  # Sends a notification about a screenshot taken in a chat.
  # Supported only in private and secret chats.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def sendChatScreenshotTakenNotification(chat_id:)
    broadcast('@type'   => 'sendChatScreenshotTakenNotification',
              'chat_id' => chat_id)
  end
  
  # Sends a custom request; for bots only.
  #
  # @param method [TD::Types::String] The method name.
  # @param parameters [TD::Types::String] JSON-serialized method parameters.
  # @return [TD::Types::CustomRequestResult]
  def sendCustomRequest(method:, parameters:)
    broadcast('@type'      => 'sendCustomRequest',
              'method'     => method,
              'parameters' => parameters)
  end
  
  # Sends a code to verify an email address to be added to a user's Telegram Passport.
  #
  # @param email_address [TD::Types::String] Email address.
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def sendEmailAddressVerificationCode(email_address:)
    broadcast('@type'         => 'sendEmailAddressVerificationCode',
              'email_address' => email_address)
  end
  
  # Sends the result of an inline query as a message.
  # Returns the sent message.
  # Always clears a chat draft message.
  #
  # @param chat_id [Integer] Target chat.
  # @param message_thread_id [Integer] If not 0, a message thread identifier in which the message will be sent.
  # @param reply_to_message_id [Integer] Identifier of a replied message; 0 if none.
  # @param options [TD::Types::MessageSendOptions] Options to be used to send the message; pass null to use default
  #   options.
  # @param query_id [Integer] Identifier of the inline query.
  # @param result_id [TD::Types::String] Identifier of the inline result.
  # @param hide_via_bot [Boolean] Pass true to hide the bot, via which the message is sent.
  #   Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and
  #   getOption("venue_search_bot_username").
  # @return [TD::Types::Message]
  def sendInlineQueryResultMessage(chat_id:, message_thread_id:, reply_to_message_id:, options:, query_id:, result_id:,
                                   hide_via_bot:)
    broadcast('@type'               => 'sendInlineQueryResultMessage',
              'chat_id'             => chat_id,
              'message_thread_id'   => message_thread_id,
              'reply_to_message_id' => reply_to_message_id,
              'options'             => options,
              'query_id'            => query_id,
              'result_id'           => result_id,
              'hide_via_bot'        => hide_via_bot)
  end
  
  # Sends a message.
  # Returns the sent message.
  #
  # @param chat_id [Integer] Target chat.
  # @param message_thread_id [Integer] If not 0, a message thread identifier in which the message will be sent.
  # @param reply_to_message_id [Integer] Identifier of the replied message; 0 if none.
  # @param options [TD::Types::MessageSendOptions] Options to be used to send the message; pass null to use default
  #   options.
  # @param reply_markup [TD::Types::ReplyMarkup] Markup for replying to the message; pass null if none; for bots only.
  # @param input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  # @return [TD::Types::Message]
  def sendMessage(chat_id:, message_thread_id:, reply_to_message_id:, options:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'sendMessage',
              'chat_id'               => chat_id,
              'message_thread_id'     => message_thread_id,
              'reply_to_message_id'   => reply_to_message_id,
              'options'               => options,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Sends 2-10 messages grouped together into an album.
  # Currently, only audio, document, photo and video messages can be grouped into an album.
  # Documents and audio files can be only grouped in an album with messages of the same type.
  # Returns sent messages.
  #
  # @param chat_id [Integer] Target chat.
  # @param message_thread_id [Integer] If not 0, a message thread identifier in which the messages will be sent.
  # @param reply_to_message_id [Integer] Identifier of a replied message; 0 if none.
  # @param options [TD::Types::MessageSendOptions] Options to be used to send the messages; pass null to use default
  #   options.
  # @param input_message_contents [Array<TD::Types::InputMessageContent>] Contents of messages to be sent.
  #   At most 10 messages can be added to an album.
  # @param only_preview [Boolean] Pass true to get fake messages instead of actually sending them.
  # @return [TD::Types::Messages]
  def sendMessageAlbum(chat_id:, message_thread_id:, reply_to_message_id:, options:, input_message_contents:,
                       only_preview:)
    broadcast('@type'                  => 'sendMessageAlbum',
              'chat_id'                => chat_id,
              'message_thread_id'      => message_thread_id,
              'reply_to_message_id'    => reply_to_message_id,
              'options'                => options,
              'input_message_contents' => input_message_contents,
              'only_preview'           => only_preview)
  end
  
  # Sends a Telegram Passport authorization form, effectively sharing data with the service.
  # This method must be called after getPassportAuthorizationFormAvailableElements if some previously available
  #   elements are going to be reused.
  #
  # @param authorization_form_id [Integer] Authorization form identifier.
  # @param types [Array<TD::Types::PassportElementType>] Types of Telegram Passport elements chosen by user to complete
  #   the authorization form.
  # @return [TD::Types::Ok]
  def sendPassportAuthorizationForm(authorization_form_id:, types:)
    broadcast('@type'                 => 'sendPassportAuthorizationForm',
              'authorization_form_id' => authorization_form_id,
              'types'                 => types)
  end
  
  # Sends a filled-out payment form to the bot for final verification.
  #
  # @param input_invoice [TD::Types::InputInvoice] The invoice.
  # @param payment_form_id [Integer] Payment form identifier returned by getPaymentForm.
  # @param order_info_id [TD::Types::String] Identifier returned by validateOrderInfo, or an empty string.
  # @param shipping_option_id [TD::Types::String] Identifier of a chosen shipping option, if applicable.
  # @param credentials [TD::Types::InputCredentials] The credentials chosen by user for payment.
  # @param tip_amount [Integer] Chosen by the user amount of tip in the smallest units of the currency.
  # @return [TD::Types::PaymentResult]
  def sendPaymentForm(input_invoice:, payment_form_id:, order_info_id:, shipping_option_id:, credentials:, tip_amount:)
    broadcast('@type'              => 'sendPaymentForm',
              'input_invoice'      => input_invoice,
              'payment_form_id'    => payment_form_id,
              'order_info_id'      => order_info_id,
              'shipping_option_id' => shipping_option_id,
              'credentials'        => credentials,
              'tip_amount'         => tip_amount)
  end
  
  # Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation.
  #
  # @param hash [TD::Types::String] Hash value from the link.
  # @param phone_number [TD::Types::String] Phone number value from the link.
  # @param settings [TD::Types::PhoneNumberAuthenticationSettings] Settings for the authentication of the user's phone
  #   number; pass null to use default settings.
  # @return [TD::Types::AuthenticationCodeInfo]
  def sendPhoneNumberConfirmationCode(hash:, phone_number:, settings:)
    broadcast('@type'        => 'sendPhoneNumberConfirmationCode',
              'hash'         => hash,
              'phone_number' => phone_number,
              'settings'     => settings)
  end
  
  # Sends a code to verify a phone number to be added to a user's Telegram Passport.
  #
  # @param phone_number [TD::Types::String] The phone number of the user, in international format.
  # @param settings [TD::Types::PhoneNumberAuthenticationSettings] Settings for the authentication of the user's phone
  #   number; pass null to use default settings.
  # @return [TD::Types::AuthenticationCodeInfo]
  def sendPhoneNumberVerificationCode(phone_number:, settings:)
    broadcast('@type'        => 'sendPhoneNumberVerificationCode',
              'phone_number' => phone_number,
              'settings'     => settings)
  end
  
  # Sends data received from a keyboardButtonTypeWebApp Web App to a bot.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param button_text [TD::Types::String] Text of the {TD::Types::KeyboardButtonType::WebApp} button, which opened the
  #   Web App.
  # @param data [TD::Types::String] Received data.
  # @return [TD::Types::Ok]
  def sendWebAppData(bot_user_id:, button_text:, data:)
    broadcast('@type'       => 'sendWebAppData',
              'bot_user_id' => bot_user_id,
              'button_text' => button_text,
              'data'        => data)
  end
  
  # Changes the period of inactivity after which the account of the current user will automatically be deleted.
  #
  # @param ttl [TD::Types::AccountTtl] New account TTL.
  # @return [TD::Types::Ok]
  def setAccountTtl(ttl:)
    broadcast('@type' => 'setAccountTtl',
              'ttl'   => ttl)
  end
  
  # Succeeds after a specified amount of time has passed.
  # Can be called before initialization.
  #
  # @param seconds [Float] Number of seconds before the function returns.
  # @return [TD::Types::Ok]
  def setAlarm(seconds:)
    broadcast('@type'   => 'setAlarm',
              'seconds' => seconds)
  end
  
  # Sets the email address of the user and sends an authentication code to the email address.
  # Works only when the current authorization state is authorizationStateWaitEmailAddress.
  #
  # @param email_address [TD::Types::String] The email address of the user.
  # @return [TD::Types::Ok]
  def setAuthenticationEmailAddress(email_address:)
    broadcast('@type'         => 'setAuthenticationEmailAddress',
              'email_address' => email_address)
  end
  
  # Sets the phone number of the user and sends an authentication code to the user.
  # Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending
  #   authentication query and the current authorization state is authorizationStateWaitEmailAddress,
  #   authorizationStateWaitEmailCode, authorizationStateWaitCode, authorizationStateWaitRegistration, or
  #   authorizationStateWaitPassword.
  #
  # @param phone_number [TD::Types::String] The phone number of the user, in international format.
  # @param settings [TD::Types::PhoneNumberAuthenticationSettings] Settings for the authentication of the user's phone
  #   number; pass null to use default settings.
  # @return [TD::Types::Ok]
  def setAuthenticationPhoneNumber(phone_number:, settings:)
    broadcast('@type'        => 'setAuthenticationPhoneNumber',
              'phone_number' => phone_number,
              'settings'     => settings)
  end
  
  # Sets auto-download settings.
  #
  # @param settings [TD::Types::AutoDownloadSettings] New user auto-download settings.
  # @param type [TD::Types::NetworkType] Type of the network for which the new settings are relevant.
  # @return [TD::Types::Ok]
  def setAutoDownloadSettings(settings:, type:)
    broadcast('@type'    => 'setAutoDownloadSettings',
              'settings' => settings,
              'type'     => type)
  end
  
  # Sets autosave settings for the given scope.
  # The method is guaranteed to work only after at least one call to getAutosaveSettings.
  #
  # @param scope [TD::Types::AutosaveSettingsScope] Autosave settings scope.
  # @param settings [TD::Types::ScopeAutosaveSettings] New autosave settings for the scope; pass null to set autosave
  #   settings to default.
  # @return [TD::Types::Ok]
  def setAutosaveSettings(scope:, settings:)
    broadcast('@type'    => 'setAutosaveSettings',
              'scope'    => scope,
              'settings' => settings)
  end
  
  # Changes the background selected by the user; adds background to the list of installed backgrounds.
  #
  # @param background [TD::Types::InputBackground] The input background to use; pass null to create a new filled
  #   backgrounds or to remove the current background.
  # @param type [TD::Types::BackgroundType] Background type; pass null to use the default type of the remote background
  #   or to remove the current background.
  # @param for_dark_theme [Boolean] Pass true if the background is changed for a dark theme.
  # @return [TD::Types::Background]
  def setBackground(background:, type:, for_dark_theme:)
    broadcast('@type'          => 'setBackground',
              'background'     => background,
              'type'           => type,
              'for_dark_theme' => for_dark_theme)
  end
  
  # Changes the bio of the current user.
  #
  # @param bio [TD::Types::String] The new value of the user bio; 0-getOption("bio_length_max") characters without line
  #   feeds.
  # @return [TD::Types::Ok]
  def setBio(bio:)
    broadcast('@type' => 'setBio',
              'bio'   => bio)
  end
  
  # Sets the text shown in the chat with the bot if the chat is empty; bots only.
  #
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code.
  #   If empty, the description will be shown to all users, for which language there are no dedicated description.
  # @param description [TD::Types::String] New bot's description on the specified language.
  # @return [TD::Types::Ok]
  def setBotInfoDescription(language_code:, description:)
    broadcast('@type'         => 'setBotInfoDescription',
              'language_code' => language_code,
              'description'   => description)
  end
  
  # Sets the text shown on the bot's profile page and sent together with the link when users share the bot; bots only.
  #
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code.
  #   If empty, the short description will be shown to all users, for which language there are no dedicated
  #   description.
  # @param short_description [TD::Types::String] New bot's short description on the specified language.
  # @return [TD::Types::Ok]
  def setBotInfoShortDescription(language_code:, short_description:)
    broadcast('@type'             => 'setBotInfoShortDescription',
              'language_code'     => language_code,
              'short_description' => short_description)
  end
  
  # Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots
  #   only.
  #
  # @param pending_update_count [Integer] The number of pending updates.
  # @param error_message [TD::Types::String] The last error message.
  # @return [TD::Types::Ok]
  def setBotUpdatesStatus(pending_update_count:, error_message:)
    broadcast('@type'                => 'setBotUpdatesStatus',
              'pending_update_count' => pending_update_count,
              'error_message'        => error_message)
  end
  
  # Changes reactions, available in a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires can_change_info administrator right.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param available_reactions [TD::Types::ChatAvailableReactions] Reactions available in the chat.
  #   All emoji reactions must be active.
  # @return [TD::Types::Ok]
  def setChatAvailableReactions(chat_id:, available_reactions:)
    broadcast('@type'               => 'setChatAvailableReactions',
              'chat_id'             => chat_id,
              'available_reactions' => available_reactions)
  end
  
  # Changes application-specific data associated with a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param client_data [TD::Types::String] New value of client_data.
  # @return [TD::Types::Ok]
  def setChatClientData(chat_id:, client_data:)
    broadcast('@type'       => 'setChatClientData',
              'chat_id'     => chat_id,
              'client_data' => client_data)
  end
  
  # Changes information about a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires can_change_info administrator right.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param description [TD::Types::String] New chat description; 0-255 characters.
  # @return [TD::Types::Ok]
  def setChatDescription(chat_id:, description:)
    broadcast('@type'       => 'setChatDescription',
              'chat_id'     => chat_id,
              'description' => description)
  end
  
  # Changes the discussion group of a channel chat; requires can_change_info administrator right in the channel if it
  #   is specified.
  #
  # @param chat_id [Integer] Identifier of the channel chat.
  #   Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires
  #   can_pin_messages rights in the supergroup).
  # @param discussion_chat_id [Integer] Identifier of a new channel's discussion group.
  #   Use 0 to remove the discussion group.
  #   Use the method getSuitableDiscussionChats to find all suitable groups.
  #   Basic group chats must be first upgraded to supergroup chats.
  #   If new chat members don't have access to old messages in the supergroup, then
  #   toggleSupergroupIsAllHistoryAvailable must be used first to change that.
  # @return [TD::Types::Ok]
  def setChatDiscussionGroup(chat_id:, discussion_chat_id:)
    broadcast('@type'              => 'setChatDiscussionGroup',
              'chat_id'            => chat_id,
              'discussion_chat_id' => discussion_chat_id)
  end
  
  # Changes the draft message in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] If not 0, a message thread identifier in which the draft was changed.
  # @param draft_message [TD::Types::DraftMessage] New draft message; pass null to remove the draft.
  # @return [TD::Types::Ok]
  def setChatDraftMessage(chat_id:, message_thread_id:, draft_message:)
    broadcast('@type'             => 'setChatDraftMessage',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'draft_message'     => draft_message)
  end
  
  # Changes the location of a chat.
  # Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the
  #   method is allowed to use.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param location [TD::Types::ChatLocation] New location for the chat; must be valid and not null.
  # @return [TD::Types::Ok]
  def setChatLocation(chat_id:, location:)
    broadcast('@type'    => 'setChatLocation',
              'chat_id'  => chat_id,
              'location' => location)
  end
  
  # Changes the status of a chat member, needs appropriate privileges.
  # This function is currently not suitable for transferring chat ownership; use transferChatOwnership instead.
  # Use addChatMember or banChatMember if some additional parameters needs to be passed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param member_id [TD::Types::MessageSender] Member identifier.
  #   Chats can be only banned and unbanned in supergroups and channels.
  # @param status [TD::Types::ChatMemberStatus] The new status of the member in the chat.
  # @return [TD::Types::Ok]
  def setChatMemberStatus(chat_id:, member_id:, status:)
    broadcast('@type'     => 'setChatMemberStatus',
              'chat_id'   => chat_id,
              'member_id' => member_id,
              'status'    => status)
  end
  
  # Changes the message auto-delete or self-destruct (for secret chats) time in a chat.
  # Requires change_info administrator right in basic groups, supergroups and channels Message auto-delete time can't
  #   be changed in a chat with the current user (Saved Messages) and the chat 777000 (Telegram)..
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_auto_delete_time [Integer] New time value, in seconds; unless the chat is secret, it must be from 0
  #   up to 365 * 86400 and be divisible by 86400.
  #   If 0, then messages aren't deleted automatically.
  # @return [TD::Types::Ok]
  def setChatMessageAutoDeleteTime(chat_id:, message_auto_delete_time:)
    broadcast('@type'                    => 'setChatMessageAutoDeleteTime',
              'chat_id'                  => chat_id,
              'message_auto_delete_time' => message_auto_delete_time)
  end
  
  # Selects a message sender to send messages in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_sender_id [TD::Types::MessageSender] New message sender for the chat.
  # @return [TD::Types::Ok]
  def setChatMessageSender(chat_id:, message_sender_id:)
    broadcast('@type'             => 'setChatMessageSender',
              'chat_id'           => chat_id,
              'message_sender_id' => message_sender_id)
  end
  
  # Changes the notification settings of a chat.
  # Notification settings of a chat with the current user (Saved Messages) can't be changed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param notification_settings [TD::Types::ChatNotificationSettings] New notification settings for the chat.
  #   If the chat is muted for more than 366 days, it is considered to be muted forever.
  # @return [TD::Types::Ok]
  def setChatNotificationSettings(chat_id:, notification_settings:)
    broadcast('@type'                 => 'setChatNotificationSettings',
              'chat_id'               => chat_id,
              'notification_settings' => notification_settings)
  end
  
  # Changes the chat members permissions.
  # Supported only for basic groups and supergroups.
  # Requires can_restrict_members administrator right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param permissions [TD::Types::ChatPermissions] New non-administrator members permissions in the chat.
  # @return [TD::Types::Ok]
  def setChatPermissions(chat_id:, permissions:)
    broadcast('@type'       => 'setChatPermissions',
              'chat_id'     => chat_id,
              'permissions' => permissions)
  end
  
  # Changes the photo of a chat.
  # Supported only for basic groups, supergroups and channels.
  # Requires can_change_info administrator right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param photo [TD::Types::InputChatPhoto] New chat photo; pass null to delete the chat photo.
  # @return [TD::Types::Ok]
  def setChatPhoto(chat_id:, photo:)
    broadcast('@type'   => 'setChatPhoto',
              'chat_id' => chat_id,
              'photo'   => photo)
  end
  
  # Changes the slow mode delay of a chat.
  # Available only for supergroups; requires can_restrict_members rights.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param slow_mode_delay [Integer] New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300,
  #   900, 3600.
  # @return [TD::Types::Ok]
  def setChatSlowModeDelay(chat_id:, slow_mode_delay:)
    broadcast('@type'           => 'setChatSlowModeDelay',
              'chat_id'         => chat_id,
              'slow_mode_delay' => slow_mode_delay)
  end
  
  # Changes the chat theme.
  # Supported only in private and secret chats.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param theme_name [TD::Types::String] Name of the new chat theme; pass an empty string to return the default theme.
  # @return [TD::Types::Ok]
  def setChatTheme(chat_id:, theme_name:)
    broadcast('@type'      => 'setChatTheme',
              'chat_id'    => chat_id,
              'theme_name' => theme_name)
  end
  
  # Changes the chat title.
  # Supported only for basic groups, supergroups and channels.
  # Requires can_change_info administrator right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param title [TD::Types::String] New title of the chat; 1-128 characters.
  # @return [TD::Types::Ok]
  def setChatTitle(chat_id:, title:)
    broadcast('@type'   => 'setChatTitle',
              'chat_id' => chat_id,
              'title'   => title)
  end
  
  # Sets the list of commands supported by the bot for the given user scope and language; for bots only.
  #
  # @param scope [TD::Types::BotCommandScope] The scope to which the commands are relevant; pass null to change
  #   commands in the default bot command scope.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code.
  #   If empty, the commands will be applied to all users from the given scope, for which language there are no
  #   dedicated commands.
  # @param commands [Array<TD::Types::BotCommand>] List of the bot's commands.
  # @return [TD::Types::Ok]
  def setCommands(scope:, language_code:, commands:)
    broadcast('@type'         => 'setCommands',
              'scope'         => scope,
              'language_code' => language_code,
              'commands'      => commands)
  end
  
  # Sets a custom emoji sticker set thumbnail; for bots only.
  #
  # @param name [TD::Types::String] Sticker set name.
  # @param custom_emoji_id [Integer] Identifier of the custom emoji from the sticker set, which will be set as sticker
  #   set thumbnail; pass 0 to remove the sticker set thumbnail.
  # @return [TD::Types::Ok]
  def setCustomEmojiStickerSetThumbnail(name:, custom_emoji_id:)
    broadcast('@type'           => 'setCustomEmojiStickerSetThumbnail',
              'name'            => name,
              'custom_emoji_id' => custom_emoji_id)
  end
  
  # Adds or changes a custom local language pack to the current localization target.
  #
  # @param info [TD::Types::LanguagePackInfo] Information about the language pack.
  #   Language pack ID must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64
  #   characters.
  #   Can be called before authorization.
  # @param strings [Array<TD::Types::LanguagePackString>] Strings of the new language pack.
  # @return [TD::Types::Ok]
  def setCustomLanguagePack(info:, strings:)
    broadcast('@type'   => 'setCustomLanguagePack',
              'info'    => info,
              'strings' => strings)
  end
  
  # Adds, edits or deletes a string in a custom local language pack.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Identifier of a previously added custom local language pack in the
  #   current localization target.
  # @param new_string [TD::Types::LanguagePackString] New language pack string.
  # @return [TD::Types::Ok]
  def setCustomLanguagePackString(language_pack_id:, new_string:)
    broadcast('@type'            => 'setCustomLanguagePackString',
              'language_pack_id' => language_pack_id,
              'new_string'       => new_string)
  end
  
  # Changes the database encryption key.
  # Usually the encryption key is never changed and is stored in some OS keychain.
  #
  # @param new_encryption_key [String] New encryption key.
  # @return [TD::Types::Ok]
  def setDatabaseEncryptionKey(new_encryption_key:)
    broadcast('@type'              => 'setDatabaseEncryptionKey',
              'new_encryption_key' => new_encryption_key)
  end
  
  # Sets default administrator rights for adding the bot to channel chats; for bots only.
  #
  # @param default_channel_administrator_rights [TD::Types::ChatAdministratorRights, nil] Default administrator rights
  #   for adding the bot to channels; may be null.
  # @return [TD::Types::Ok]
  def setDefaultChannelAdministratorRights(default_channel_administrator_rights: nil)
    broadcast('@type'                                => 'setDefaultChannelAdministratorRights',
              'default_channel_administrator_rights' => default_channel_administrator_rights)
  end
  
  # Sets default administrator rights for adding the bot to basic group and supergroup chats; for bots only.
  #
  # @param default_group_administrator_rights [TD::Types::ChatAdministratorRights, nil] Default administrator rights
  #   for adding the bot to basic group and supergroup chats; may be null.
  # @return [TD::Types::Ok]
  def setDefaultGroupAdministratorRights(default_group_administrator_rights: nil)
    broadcast('@type'                              => 'setDefaultGroupAdministratorRights',
              'default_group_administrator_rights' => default_group_administrator_rights)
  end
  
  # Changes the default message auto-delete time for new chats.
  #
  # @param message_auto_delete_time [TD::Types::MessageAutoDeleteTime] New default message auto-delete time; must be
  #   from 0 up to 365 * 86400 and be divisible by 86400.
  #   If 0, then messages aren't deleted automatically.
  # @return [TD::Types::Ok]
  def setDefaultMessageAutoDeleteTime(message_auto_delete_time:)
    broadcast('@type'                    => 'setDefaultMessageAutoDeleteTime',
              'message_auto_delete_time' => message_auto_delete_time)
  end
  
  # Changes type of default reaction for the current user.
  #
  # @param reaction_type [TD::Types::ReactionType] New type of the default reaction.
  # @return [TD::Types::Ok]
  def setDefaultReactionType(reaction_type:)
    broadcast('@type'         => 'setDefaultReactionType',
              'reaction_type' => reaction_type)
  end
  
  # Changes the emoji status of the current user; for Telegram Premium users only.
  #
  # @param emoji_status [TD::Types::EmojiStatus] New emoji status; pass null to switch to the default badge.
  # @param duration [Integer] Duration of the status, in seconds; pass 0 to keep the status active until it will be
  #   changed manually.
  # @return [TD::Types::Ok]
  def setEmojiStatus(emoji_status:, duration:)
    broadcast('@type'        => 'setEmojiStatus',
              'emoji_status' => emoji_status,
              'duration'     => duration)
  end
  
  # Informs TDLib on a file generation progress.
  #
  # @param generation_id [Integer] The identifier of the generation process.
  # @param expected_size [Integer] Expected size of the generated file, in bytes; 0 if unknown.
  # @param local_prefix_size [Integer] The number of bytes already generated.
  # @return [TD::Types::Ok]
  def setFileGenerationProgress(generation_id:, expected_size:, local_prefix_size:)
    broadcast('@type'             => 'setFileGenerationProgress',
              'generation_id'     => generation_id,
              'expected_size'     => expected_size,
              'local_prefix_size' => local_prefix_size)
  end
  
  # Changes the notification settings of a forum topic.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @param notification_settings [TD::Types::ChatNotificationSettings] New notification settings for the forum topic.
  #   If the topic is muted for more than 366 days, it is considered to be muted forever.
  # @return [TD::Types::Ok]
  def setForumTopicNotificationSettings(chat_id:, message_thread_id:, notification_settings:)
    broadcast('@type'                 => 'setForumTopicNotificationSettings',
              'chat_id'               => chat_id,
              'message_thread_id'     => message_thread_id,
              'notification_settings' => notification_settings)
  end
  
  # Updates the game score of the specified user in the game; for bots only.
  #
  # @param chat_id [Integer] The chat to which the message with the game belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param edit_message [Boolean] Pass true to edit the game message to include the current scoreboard.
  # @param user_id [Integer] User identifier.
  # @param score [Integer] The new score.
  # @param force [Boolean] Pass true to update the score even if it decreases.
  #   If the score is 0, the user will be deleted from the high score table.
  # @return [TD::Types::Message]
  def setGameScore(chat_id:, message_id:, edit_message:, user_id:, score:, force:)
    broadcast('@type'        => 'setGameScore',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'edit_message' => edit_message,
              'user_id'      => user_id,
              'score'        => score,
              'force'        => force)
  end
  
  # Informs TDLib that speaking state of a participant of an active group has changed.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param audio_source [Integer] Group call participant's synchronization audio source identifier, or 0 for the
  #   current user.
  # @param is_speaking [Boolean] Pass true if the user is speaking.
  # @return [TD::Types::Ok]
  def setGroupCallParticipantIsSpeaking(group_call_id:, audio_source:, is_speaking:)
    broadcast('@type'         => 'setGroupCallParticipantIsSpeaking',
              'group_call_id' => group_call_id,
              'audio_source'  => audio_source,
              'is_speaking'   => is_speaking)
  end
  
  # Changes volume level of a participant of an active group call.
  # If the current user can manage the group call, then the participant's volume level will be changed for all users
  #   with the default volume level.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param participant_id [TD::Types::MessageSender] Participant identifier.
  # @param volume_level [Integer] New participant's volume level; 1-20000 in hundreds of percents.
  # @return [TD::Types::Ok]
  def setGroupCallParticipantVolumeLevel(group_call_id:, participant_id:, volume_level:)
    broadcast('@type'          => 'setGroupCallParticipantVolumeLevel',
              'group_call_id'  => group_call_id,
              'participant_id' => participant_id,
              'volume_level'   => volume_level)
  end
  
  # Sets group call title.
  # Requires groupCall.can_be_managed group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param title [TD::Types::String] New group call title; 1-64 characters.
  # @return [TD::Types::Ok]
  def setGroupCallTitle(group_call_id:, title:)
    broadcast('@type'         => 'setGroupCallTitle',
              'group_call_id' => group_call_id,
              'title'         => title)
  end
  
  # Changes the period of inactivity after which sessions will automatically be terminated.
  #
  # @param inactive_session_ttl_days [Integer] New number of days of inactivity before sessions will be automatically
  #   terminated; 1-366 days.
  # @return [TD::Types::Ok]
  def setInactiveSessionTtl(inactive_session_ttl_days:)
    broadcast('@type'                     => 'setInactiveSessionTtl',
              'inactive_session_ttl_days' => inactive_session_ttl_days)
  end
  
  # Updates the game score of the specified user in a game; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param edit_message [Boolean] Pass true to edit the game message to include the current scoreboard.
  # @param user_id [Integer] User identifier.
  # @param score [Integer] The new score.
  # @param force [Boolean] Pass true to update the score even if it decreases.
  #   If the score is 0, the user will be deleted from the high score table.
  # @return [TD::Types::Ok]
  def setInlineGameScore(inline_message_id:, edit_message:, user_id:, score:, force:)
    broadcast('@type'             => 'setInlineGameScore',
              'inline_message_id' => inline_message_id,
              'edit_message'      => edit_message,
              'user_id'           => user_id,
              'score'             => score,
              'force'             => force)
  end
  
  # Changes the location of the current user.
  # Needs to be called if getOption("is_location_visible") is true and location changes for more than 1 kilometer.
  #
  # @param location [TD::Types::Location] The new location of the user.
  # @return [TD::Types::Ok]
  def setLocation(location:)
    broadcast('@type'    => 'setLocation',
              'location' => location)
  end
  
  # Sets new log stream for internal logging of TDLib.
  # Can be called synchronously.
  #
  # @param log_stream [TD::Types::LogStream] New log stream.
  # @return [TD::Types::Ok]
  def setLogStream(log_stream:)
    broadcast('@type'      => 'setLogStream',
              'log_stream' => log_stream)
  end
  
  # Sets the verbosity level for a specified TDLib internal log tag.
  # Can be called synchronously.
  #
  # @param tag [TD::Types::String] Logging tag to change verbosity level.
  # @param new_verbosity_level [Integer] New verbosity level; 1-1024.
  # @return [TD::Types::Ok]
  def setLogTagVerbosityLevel(tag:, new_verbosity_level:)
    broadcast('@type'               => 'setLogTagVerbosityLevel',
              'tag'                 => tag,
              'new_verbosity_level' => new_verbosity_level)
  end
  
  # Sets the verbosity level of the internal logging of TDLib.
  # Can be called synchronously.
  #
  # @param new_verbosity_level [Integer] New value of the verbosity level for logging.
  #   Value 0 corresponds to fatal errors, value 1 corresponds to errors, value 2 corresponds to warnings and debug
  #   warnings, value 3 corresponds to informational, value 4 corresponds to debug, value 5 corresponds to verbose debug,
  #   value greater than 5 and up to 1023 can be used to enable even more logging.
  # @return [TD::Types::Ok]
  def setLogVerbosityLevel(new_verbosity_level:)
    broadcast('@type'               => 'setLogVerbosityLevel',
              'new_verbosity_level' => new_verbosity_level)
  end
  
  # Changes the login email address of the user.
  # The email address can be changed only if the current user already has login email and
  #   passwordState.login_email_address_pattern is non-empty.
  # The change will not be applied until the new login email address is confirmed with checkLoginEmailAddressCode.
  # To use Apple ID/Google ID instead of a email address, call checkLoginEmailAddressCode directly.
  #
  # @param new_login_email_address [TD::Types::String] New login email address.
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def setLoginEmailAddress(new_login_email_address:)
    broadcast('@type'                   => 'setLoginEmailAddress',
              'new_login_email_address' => new_login_email_address)
  end
  
  # Sets menu button for the given user or for all users; for bots only.
  #
  # @param user_id [Integer] Identifier of the user or 0 to set menu button for all users.
  # @param menu_button [TD::Types::BotMenuButton] New menu button.
  # @return [TD::Types::Ok]
  def setMenuButton(user_id:, menu_button:)
    broadcast('@type'       => 'setMenuButton',
              'user_id'     => user_id,
              'menu_button' => menu_button)
  end
  
  # Changes the first and last name of the current user.
  #
  # @param first_name [TD::Types::String] The new value of the first name for the current user; 1-64 characters.
  # @param last_name [TD::Types::String] The new value of the optional last name for the current user; 0-64 characters.
  # @return [TD::Types::Ok]
  def setName(first_name:, last_name:)
    broadcast('@type'      => 'setName',
              'first_name' => first_name,
              'last_name'  => last_name)
  end
  
  # Sets the current network type.
  # Can be called before authorization.
  # Calling this method forces all network connections to reopen, mitigating the delay in switching between different
  #   networks, so it must be called whenever the network is changed, even if the network type remains the same.
  # Network type is used to check whether the library can use the network at all and also for collecting detailed
  #   network data usage statistics.
  #
  # @param type [TD::Types::NetworkType] The new network type; pass null to set network type to networkTypeOther.
  # @return [TD::Types::Ok]
  def setNetworkType(type:)
    broadcast('@type' => 'setNetworkType',
              'type'  => type)
  end
  
  # Sets the value of an option.
  # (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set.
  # Can be called before authorization.
  #
  # @param name [TD::Types::String] The name of the option.
  # @param value [TD::Types::OptionValue] The new value of the option; pass null to reset option value to a default
  #   value.
  # @return [TD::Types::Ok]
  def setOption(name:, value:)
    broadcast('@type' => 'setOption',
              'name'  => name,
              'value' => value)
  end
  
  # Adds an element to the user's Telegram Passport.
  # May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone
  #   number or the chosen email address must be verified first.
  #
  # @param element [TD::Types::InputPassportElement] Input Telegram Passport element.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::PassportElement]
  def setPassportElement(element:, password:)
    broadcast('@type'    => 'setPassportElement',
              'element'  => element,
              'password' => password)
  end
  
  # Informs the user that some of the elements in their Telegram Passport contain errors; for bots only.
  # The user will not be able to resend the elements, until the errors are fixed.
  #
  # @param user_id [Integer] User identifier.
  # @param errors [Array<TD::Types::InputPassportElementError>] The errors.
  # @return [TD::Types::Ok]
  def setPassportElementErrors(user_id:, errors:)
    broadcast('@type'   => 'setPassportElementErrors',
              'user_id' => user_id,
              'errors'  => errors)
  end
  
  # Changes the 2-step verification password for the current user.
  # If a new recovery email address is specified, then the change will not be applied until the new recovery email
  #   address is confirmed.
  #
  # @param old_password [TD::Types::String] Previous 2-step verification password of the user.
  # @param new_password [TD::Types::String, nil] New 2-step verification password of the user; may be empty to remove
  #   the password.
  # @param new_hint [TD::Types::String, nil] New password hint; may be empty.
  # @param set_recovery_email_address [Boolean] Pass true to change also the recovery email address.
  # @param new_recovery_email_address [TD::Types::String, nil] New recovery email address; may be empty.
  # @return [TD::Types::PasswordState]
  def setPassword(old_password:, new_password: nil, new_hint: nil, set_recovery_email_address:,
                  new_recovery_email_address: nil)
    broadcast('@type'                      => 'setPassword',
              'old_password'               => old_password,
              'new_password'               => new_password,
              'new_hint'                   => new_hint,
              'set_recovery_email_address' => set_recovery_email_address,
              'new_recovery_email_address' => new_recovery_email_address)
  end
  
  # Changes the order of pinned chats.
  #
  # @param chat_list [TD::Types::ChatList] Chat list in which to change the order of pinned chats.
  # @param chat_ids [Array<Integer>] The new list of pinned chats.
  # @return [TD::Types::Ok]
  def setPinnedChats(chat_list:, chat_ids:)
    broadcast('@type'     => 'setPinnedChats',
              'chat_list' => chat_list,
              'chat_ids'  => chat_ids)
  end
  
  # Changes the order of pinned forum topics.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_ids [Array<Integer>] The new list of pinned forum topics.
  # @return [TD::Types::Ok]
  def setPinnedForumTopics(chat_id:, message_thread_ids:)
    broadcast('@type'              => 'setPinnedForumTopics',
              'chat_id'            => chat_id,
              'message_thread_ids' => message_thread_ids)
  end
  
  # Changes the user answer to a poll.
  # A poll in quiz mode can be answered only once.
  #
  # @param chat_id [Integer] Identifier of the chat to which the poll belongs.
  # @param message_id [Integer] Identifier of the message containing the poll.
  # @param option_ids [Array<Integer>] 0-based identifiers of answer options, chosen by the user.
  #   User can choose more than 1 answer option only is the poll allows multiple answers.
  # @return [TD::Types::Ok]
  def setPollAnswer(chat_id:, message_id:, option_ids:)
    broadcast('@type'      => 'setPollAnswer',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'option_ids' => option_ids)
  end
  
  # Changes a profile photo for the current user.
  #
  # @param photo [TD::Types::InputChatPhoto] Profile photo to set.
  # @param is_public [Boolean] Pass true to set a public photo, which will be visible even the main photo is hidden by
  #   privacy settings.
  # @return [TD::Types::Ok]
  def setProfilePhoto(photo:, is_public:)
    broadcast('@type'     => 'setProfilePhoto',
              'photo'     => photo,
              'is_public' => is_public)
  end
  
  # Changes the 2-step verification recovery email address of the user.
  # If a new recovery email address is specified, then the change will not be applied until the new recovery email
  #   address is confirmed.
  # If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds
  #   immediately and aborts all other requests waiting for an email confirmation.
  #
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @param new_recovery_email_address [TD::Types::String] New recovery email address.
  # @return [TD::Types::PasswordState]
  def setRecoveryEmailAddress(password:, new_recovery_email_address:)
    broadcast('@type'                      => 'setRecoveryEmailAddress',
              'password'                   => password,
              'new_recovery_email_address' => new_recovery_email_address)
  end
  
  # Changes notification settings for chats of a given type.
  #
  # @param scope [TD::Types::NotificationSettingsScope] Types of chats for which to change the notification settings.
  # @param notification_settings [TD::Types::ScopeNotificationSettings] The new notification settings for the given
  #   scope.
  # @return [TD::Types::Ok]
  def setScopeNotificationSettings(scope:, notification_settings:)
    broadcast('@type'                 => 'setScopeNotificationSettings',
              'scope'                 => scope,
              'notification_settings' => notification_settings)
  end
  
  # Changes the list of emoji corresponding to a sticker; for bots only.
  # The sticker must belong to a regular or custom emoji sticker set created by the bot.
  #
  # @param sticker [TD::Types::InputFile] Sticker.
  # @param emojis [TD::Types::String] New string with 1-20 emoji corresponding to the sticker.
  # @return [TD::Types::Ok]
  def setStickerEmojis(sticker:, emojis:)
    broadcast('@type'   => 'setStickerEmojis',
              'sticker' => sticker,
              'emojis'  => emojis)
  end
  
  # Changes the list of keywords of a sticker; for bots only.
  # The sticker must belong to a regular or custom emoji sticker set created by the bot.
  #
  # @param sticker [TD::Types::InputFile] Sticker.
  # @param keywords [Array<TD::Types::String>] List of up to 20 keywords with total length up to 64 characters, which
  #   can be used to find the sticker.
  # @return [TD::Types::Ok]
  def setStickerKeywords(sticker:, keywords:)
    broadcast('@type'    => 'setStickerKeywords',
              'sticker'  => sticker,
              'keywords' => keywords)
  end
  
  # Changes the mask position of a mask sticker; for bots only.
  # The sticker must belong to a mask sticker set created by the bot.
  #
  # @param sticker [TD::Types::InputFile] Sticker.
  # @param mask_position [TD::Types::MaskPosition] Position where the mask is placed; pass null to remove mask
  #   position.
  # @return [TD::Types::Ok]
  def setStickerMaskPosition(sticker:, mask_position:)
    broadcast('@type'         => 'setStickerMaskPosition',
              'sticker'       => sticker,
              'mask_position' => mask_position)
  end
  
  # Changes the position of a sticker in the set to which it belongs; for bots only.
  # The sticker set must have been created by the bot.
  #
  # @param sticker [TD::Types::InputFile] Sticker.
  # @param position [Integer] New position of the sticker in the set, 0-based.
  # @return [TD::Types::Ok]
  def setStickerPositionInSet(sticker:, position:)
    broadcast('@type'    => 'setStickerPositionInSet',
              'sticker'  => sticker,
              'position' => position)
  end
  
  # Sets a sticker set thumbnail; for bots only.
  #
  # @param user_id [Integer] Sticker set owner.
  # @param name [TD::Types::String] Sticker set name.
  # @param thumbnail [TD::Types::InputFile] Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the
  #   sticker set thumbnail.
  #   Thumbnail format must match the format of stickers in the set.
  # @return [TD::Types::Ok]
  def setStickerSetThumbnail(user_id:, name:, thumbnail:)
    broadcast('@type'     => 'setStickerSetThumbnail',
              'user_id'   => user_id,
              'name'      => name,
              'thumbnail' => thumbnail)
  end
  
  # Sets a sticker set title; for bots only.
  #
  # @param name [TD::Types::String] Sticker set name.
  # @param title [TD::Types::String] New sticker set title.
  # @return [TD::Types::Ok]
  def setStickerSetTitle(name:, title:)
    broadcast('@type' => 'setStickerSetTitle',
              'name'  => name,
              'title' => title)
  end
  
  # Changes the sticker set of a supergroup; requires can_change_info administrator right.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param sticker_set_id [Integer] New value of the supergroup sticker set identifier.
  #   Use 0 to remove the supergroup sticker set.
  # @return [TD::Types::Ok]
  def setSupergroupStickerSet(supergroup_id:, sticker_set_id:)
    broadcast('@type'          => 'setSupergroupStickerSet',
              'supergroup_id'  => supergroup_id,
              'sticker_set_id' => sticker_set_id)
  end
  
  # Changes the editable username of a supergroup or channel, requires owner privileges in the supergroup or channel.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param username [TD::Types::String] New value of the username.
  #   Use an empty string to remove the username.
  #   The username can't be completely removed if there is another active or disabled username.
  # @return [TD::Types::Ok]
  def setSupergroupUsername(supergroup_id:, username:)
    broadcast('@type'         => 'setSupergroupUsername',
              'supergroup_id' => supergroup_id,
              'username'      => username)
  end
  
  # Sets the parameters for TDLib initialization.
  # Works only when the current authorization state is authorizationStateWaitTdlibParameters.
  #
  # @param use_test_dc [Boolean, nil] Pass true to use Telegram test environment instead of the production environment.
  # @param database_directory [TD::Types::String, nil] The path to the directory for the persistent database; if empty,
  #   the current working directory will be used.
  # @param files_directory [TD::Types::String, nil] The path to the directory for storing files; if empty,
  #   database_directory will be used.
  # @param database_encryption_key [String, nil] Encryption key for the database.
  #   If the encryption key is invalid, then an error with code 401 will be returned.
  # @param use_file_database [Boolean, nil] Pass true to keep information about downloaded and uploaded files between
  #   application restarts.
  # @param use_chat_info_database [Boolean, nil] Pass true to keep cache of users, basic groups, supergroups, channels
  #   and secret chats between restarts.
  #   Implies use_file_database.
  # @param use_message_database [Boolean, nil] Pass true to keep cache of chats and messages between restarts.
  #   Implies use_chat_info_database.
  # @param use_secret_chats [Boolean, nil] Pass true to enable support for secret chats.
  # @param api_id [Integer, nil] Application identifier for Telegram API access, which can be obtained at
  #   https://my.telegram.org.
  # @param api_hash [TD::Types::String, nil] Application identifier hash for Telegram API access, which can be obtained
  #   at https://my.telegram.org.
  # @param system_language_code [TD::Types::String] IETF language tag of the user's operating system language; must be
  #   non-empty.
  # @param device_model [TD::Types::String] Model of the device the application is being run on; must be non-empty.
  # @param system_version [TD::Types::String, nil] Version of the operating system the application is being run on.
  #   If empty, the version is automatically detected by TDLib.
  # @param application_version [TD::Types::String] Application version; must be non-empty.
  # @param enable_storage_optimizer [Boolean, nil] Pass true to automatically delete old files in background.
  # @param ignore_file_names [Boolean, nil] Pass true to ignore original file names for downloaded files.
  #   Otherwise, downloaded files are saved under names as close as possible to the original name.
  # @return [TD::Types::Ok]
  def setTdlibParameters(use_test_dc: nil, database_directory: nil, files_directory: nil, database_encryption_key: nil,
                         use_file_database: nil, use_chat_info_database: nil, use_message_database: nil,
                         use_secret_chats: nil, api_id: nil, api_hash: nil, system_language_code:, device_model:,
                         system_version: nil, application_version:, enable_storage_optimizer: nil, ignore_file_names:
                         nil)
    broadcast('@type'                    => 'setTdlibParameters',
              'use_test_dc'              => use_test_dc,
              'database_directory'       => database_directory,
              'files_directory'          => files_directory,
              'database_encryption_key'  => database_encryption_key,
              'use_file_database'        => use_file_database,
              'use_chat_info_database'   => use_chat_info_database,
              'use_message_database'     => use_message_database,
              'use_secret_chats'         => use_secret_chats,
              'api_id'                   => api_id,
              'api_hash'                 => api_hash,
              'system_language_code'     => system_language_code,
              'device_model'             => device_model,
              'system_version'           => system_version,
              'application_version'      => application_version,
              'enable_storage_optimizer' => enable_storage_optimizer,
              'ignore_file_names'        => ignore_file_names)
  end
  
  # Changes a personal profile photo of a contact user.
  #
  # @param user_id [Integer] User identifier.
  # @param photo [TD::Types::InputChatPhoto] Profile photo to set; pass null to delete the photo;
  #   {TD::Types::InputChatPhoto::Previous} isn't supported in this function.
  # @return [TD::Types::Ok]
  def setUserPersonalProfilePhoto(user_id:, photo:)
    broadcast('@type'   => 'setUserPersonalProfilePhoto',
              'user_id' => user_id,
              'photo'   => photo)
  end
  
  # Changes user privacy settings.
  #
  # @param setting [TD::Types::UserPrivacySetting] The privacy setting.
  # @param rules [TD::Types::UserPrivacySettingRules] The new privacy rules.
  # @return [TD::Types::Ok]
  def setUserPrivacySettingRules(setting:, rules:)
    broadcast('@type'   => 'setUserPrivacySettingRules',
              'setting' => setting,
              'rules'   => rules)
  end
  
  # Sets support information for the given user; for Telegram support only.
  #
  # @param user_id [Integer] User identifier.
  # @param message [TD::Types::FormattedText] New information message.
  # @return [TD::Types::UserSupportInfo]
  def setUserSupportInfo(user_id:, message:)
    broadcast('@type'   => 'setUserSupportInfo',
              'user_id' => user_id,
              'message' => message)
  end
  
  # Changes the editable username of the current user.
  #
  # @param username [TD::Types::String] The new value of the username.
  #   Use an empty string to remove the username.
  #   The username can't be completely removed if there is another active or disabled username.
  # @return [TD::Types::Ok]
  def setUsername(username:)
    broadcast('@type'    => 'setUsername',
              'username' => username)
  end
  
  # Changes default participant identifier, on whose behalf a video chat in the chat will be joined.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param default_participant_id [TD::Types::MessageSender] Default group call participant identifier to join the
  #   video chats.
  # @return [TD::Types::Ok]
  def setVideoChatDefaultParticipant(chat_id:, default_participant_id:)
    broadcast('@type'                  => 'setVideoChatDefaultParticipant',
              'chat_id'                => chat_id,
              'default_participant_id' => default_participant_id)
  end
  
  # Shares a chat after pressing a keyboardButtonTypeRequestChat button with the bot.
  #
  # @param chat_id [Integer] Identifier of the chat with the bot.
  # @param message_id [Integer] Identifier of the message with the button.
  # @param button_id [Integer] Identifier of the button.
  # @param shared_chat_id [Integer] Identifier of the shared chat.
  # @param only_check [Boolean] Pass true to check that the chat can be shared by the button instead of actually
  #   sharing it.
  #   Doesn't check bot_is_member and bot_administrator_rights restrictions.
  #   If the bot must be a member, then all chats from getGroupsInCommon and all chats, where the user can add the bot,
  #   are suitable.
  #   In the latter case the bot will be automatically added to the chat.
  #   If the bot must be an administrator, then all chats, where the bot already has requested rights or can be added
  #   to administrators by the user, are suitable.
  #   In the latter case the bot will be automatically granted requested rights.
  # @return [TD::Types::Ok]
  def shareChatWithBot(chat_id:, message_id:, button_id:, shared_chat_id:, only_check:)
    broadcast('@type'          => 'shareChatWithBot',
              'chat_id'        => chat_id,
              'message_id'     => message_id,
              'button_id'      => button_id,
              'shared_chat_id' => shared_chat_id,
              'only_check'     => only_check)
  end
  
  # Shares the phone number of the current user with a mutual contact.
  # Supposed to be called when the user clicks on chatActionBarSharePhoneNumber.
  #
  # @param user_id [Integer] Identifier of the user with whom to share the phone number.
  #   The user must be a mutual contact.
  # @return [TD::Types::Ok]
  def sharePhoneNumber(user_id:)
    broadcast('@type'   => 'sharePhoneNumber',
              'user_id' => user_id)
  end
  
  # Shares a user after pressing a keyboardButtonTypeRequestUser button with the bot.
  #
  # @param chat_id [Integer] Identifier of the chat with the bot.
  # @param message_id [Integer] Identifier of the message with the button.
  # @param button_id [Integer] Identifier of the button.
  # @param shared_user_id [Integer] Identifier of the shared user.
  # @param only_check [Boolean] Pass true to check that the user can be shared by the button instead of actually
  #   sharing them.
  # @return [TD::Types::Ok]
  def shareUserWithBot(chat_id:, message_id:, button_id:, shared_user_id:, only_check:)
    broadcast('@type'          => 'shareUserWithBot',
              'chat_id'        => chat_id,
              'message_id'     => message_id,
              'button_id'      => button_id,
              'shared_user_id' => shared_user_id,
              'only_check'     => only_check)
  end
  
  # Starts recording of an active group call.
  # Requires groupCall.can_be_managed group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param title [TD::Types::String] Group call recording title; 0-64 characters.
  # @param record_video [Boolean] Pass true to record a video file instead of an audio file.
  # @param use_portrait_orientation [Boolean] Pass true to use portrait orientation for video instead of landscape one.
  # @return [TD::Types::Ok]
  def startGroupCallRecording(group_call_id:, title:, record_video:, use_portrait_orientation:)
    broadcast('@type'                    => 'startGroupCallRecording',
              'group_call_id'            => group_call_id,
              'title'                    => title,
              'record_video'             => record_video,
              'use_portrait_orientation' => use_portrait_orientation)
  end
  
  # Starts screen sharing in a joined group call.
  # Returns join response payload for tgcalls.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param audio_source_id [Integer] Screen sharing audio channel synchronization source identifier; received from
  #   tgcalls.
  # @param payload [TD::Types::String] Group call join payload; received from tgcalls.
  # @return [TD::Types::Text]
  def startGroupCallScreenSharing(group_call_id:, audio_source_id:, payload:)
    broadcast('@type'           => 'startGroupCallScreenSharing',
              'group_call_id'   => group_call_id,
              'audio_source_id' => audio_source_id,
              'payload'         => payload)
  end
  
  # Starts a scheduled group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def startScheduledGroupCall(group_call_id:)
    broadcast('@type'         => 'startScheduledGroupCall',
              'group_call_id' => group_call_id)
  end
  
  # Stops a poll.
  # A poll in a message can be stopped when the message has can_be_edited flag set.
  #
  # @param chat_id [Integer] Identifier of the chat to which the poll belongs.
  # @param message_id [Integer] Identifier of the message containing the poll.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @return [TD::Types::Ok]
  def stopPoll(chat_id:, message_id:, reply_markup:)
    broadcast('@type'        => 'stopPoll',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'reply_markup' => reply_markup)
  end
  
  # Suggests a profile photo to another regular user with common messages.
  #
  # @param user_id [Integer] User identifier.
  # @param photo [TD::Types::InputChatPhoto] Profile photo to suggest; {TD::Types::InputChatPhoto::Previous} isn't
  #   supported in this function.
  # @return [TD::Types::Ok]
  def suggestUserProfilePhoto(user_id:, photo:)
    broadcast('@type'   => 'suggestUserProfilePhoto',
              'user_id' => user_id,
              'photo'   => photo)
  end
  
  # Fetches the latest versions of all strings from a language pack in the current localization target from the server.
  # This method doesn't need to be called explicitly for the current used/base language packs.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Language pack identifier.
  # @return [TD::Types::Ok]
  def synchronizeLanguagePack(language_pack_id:)
    broadcast('@type'            => 'synchronizeLanguagePack',
              'language_pack_id' => language_pack_id)
  end
  
  # Terminates all other sessions of the current user.
  #
  # @return [TD::Types::Ok]
  def terminateAllOtherSessions
    broadcast('@type' => 'terminateAllOtherSessions')
  end
  
  # Terminates a session of the current user.
  #
  # @param session_id [Integer] Session identifier.
  # @return [TD::Types::Ok]
  def terminateSession(session_id:)
    broadcast('@type'      => 'terminateSession',
              'session_id' => session_id)
  end
  
  # Changes pause state of all files in the file download list.
  #
  # @param are_paused [Boolean] Pass true to pause all downloads; pass false to unpause them.
  # @return [TD::Types::Ok]
  def toggleAllDownloadsArePaused(are_paused:)
    broadcast('@type'      => 'toggleAllDownloadsArePaused',
              'are_paused' => are_paused)
  end
  
  # Adds or removes a bot to attachment menu.
  # Bot can be added to attachment menu, only if userTypeBot.can_be_added_to_attachment_menu == true.
  #
  # @param bot_user_id [Integer] Bot's user identifier.
  # @param is_added [Boolean] Pass true to add the bot to attachment menu; pass false to remove the bot from attachment
  #   menu.
  # @param allow_write_access [Boolean] Pass true if the current user allowed the bot to send them messages.
  #   Ignored if is_added is false.
  # @return [TD::Types::Ok]
  def toggleBotIsAddedToAttachmentMenu(bot_user_id:, is_added:, allow_write_access:)
    broadcast('@type'              => 'toggleBotIsAddedToAttachmentMenu',
              'bot_user_id'        => bot_user_id,
              'is_added'           => is_added,
              'allow_write_access' => allow_write_access)
  end
  
  # Changes the value of the default disable_notification parameter, used when a message is sent to a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param default_disable_notification [Boolean] New value of default_disable_notification.
  # @return [TD::Types::Ok]
  def toggleChatDefaultDisableNotification(chat_id:, default_disable_notification:)
    broadcast('@type'                        => 'toggleChatDefaultDisableNotification',
              'chat_id'                      => chat_id,
              'default_disable_notification' => default_disable_notification)
  end
  
  # Changes the ability of users to save, forward, or copy chat content.
  # Supported only for basic groups, supergroups and channels.
  # Requires owner privileges.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param has_protected_content [Boolean] New value of has_protected_content.
  # @return [TD::Types::Ok]
  def toggleChatHasProtectedContent(chat_id:, has_protected_content:)
    broadcast('@type'                 => 'toggleChatHasProtectedContent',
              'chat_id'               => chat_id,
              'has_protected_content' => has_protected_content)
  end
  
  # Changes the marked as unread state of a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_marked_as_unread [Boolean] New value of is_marked_as_unread.
  # @return [TD::Types::Ok]
  def toggleChatIsMarkedAsUnread(chat_id:, is_marked_as_unread:)
    broadcast('@type'               => 'toggleChatIsMarkedAsUnread',
              'chat_id'             => chat_id,
              'is_marked_as_unread' => is_marked_as_unread)
  end
  
  # Changes the pinned state of a chat.
  # There can be up to getOption("pinned_chat_count_max")/getOption("pinned_archived_chat_count_max") pinned non-secret
  #   chats and the same number of secret chats in the main/archive chat list.
  # The limit can be increased with Telegram Premium.
  #
  # @param chat_list [TD::Types::ChatList] Chat list in which to change the pinned state of the chat.
  # @param chat_id [Integer] Chat identifier.
  # @param is_pinned [Boolean] Pass true to pin the chat; pass false to unpin it.
  # @return [TD::Types::Ok]
  def toggleChatIsPinned(chat_list:, chat_id:, is_pinned:)
    broadcast('@type'     => 'toggleChatIsPinned',
              'chat_list' => chat_list,
              'chat_id'   => chat_id,
              'is_pinned' => is_pinned)
  end
  
  # Changes the translatable state of a chat; for Telegram Premium users only.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_translatable [Boolean] New value of is_translatable.
  # @return [TD::Types::Ok]
  def toggleChatIsTranslatable(chat_id:, is_translatable:)
    broadcast('@type'           => 'toggleChatIsTranslatable',
              'chat_id'         => chat_id,
              'is_translatable' => is_translatable)
  end
  
  # Changes pause state of a file in the file download list.
  #
  # @param file_id [Integer] Identifier of the downloaded file.
  # @param is_paused [Boolean] Pass true if the download is paused.
  # @return [TD::Types::Ok]
  def toggleDownloadIsPaused(file_id:, is_paused:)
    broadcast('@type'     => 'toggleDownloadIsPaused',
              'file_id'   => file_id,
              'is_paused' => is_paused)
  end
  
  # Toggles whether a topic is closed in a forum supergroup chat; requires can_manage_topics administrator right in the
  #   supergroup unless the user is creator of the topic.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @param is_closed [Boolean] Pass true to close the topic; pass false to reopen it.
  # @return [TD::Types::Ok]
  def toggleForumTopicIsClosed(chat_id:, message_thread_id:, is_closed:)
    broadcast('@type'             => 'toggleForumTopicIsClosed',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'is_closed'         => is_closed)
  end
  
  # Changes the pinned state of a forum topic; requires can_manage_topics administrator right in the supergroup.
  # There can be up to getOption("pinned_forum_topic_count_max") pinned forum topics.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @param is_pinned [Boolean] Pass true to pin the topic; pass false to unpin it.
  # @return [TD::Types::Ok]
  def toggleForumTopicIsPinned(chat_id:, message_thread_id:, is_pinned:)
    broadcast('@type'             => 'toggleForumTopicIsPinned',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'is_pinned'         => is_pinned)
  end
  
  # Toggles whether a General topic is hidden in a forum supergroup chat; requires can_manage_topics administrator
  #   right in the supergroup.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param is_hidden [Boolean] Pass true to hide and close the General topic; pass false to unhide it.
  # @return [TD::Types::Ok]
  def toggleGeneralForumTopicIsHidden(chat_id:, is_hidden:)
    broadcast('@type'     => 'toggleGeneralForumTopicIsHidden',
              'chat_id'   => chat_id,
              'is_hidden' => is_hidden)
  end
  
  # Toggles whether the current user will receive a notification when the group call will start; scheduled group calls
  #   only.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param enabled_start_notification [Boolean] New value of the enabled_start_notification setting.
  # @return [TD::Types::Ok]
  def toggleGroupCallEnabledStartNotification(group_call_id:, enabled_start_notification:)
    broadcast('@type'                      => 'toggleGroupCallEnabledStartNotification',
              'group_call_id'              => group_call_id,
              'enabled_start_notification' => enabled_start_notification)
  end
  
  # Toggles whether current user's video is enabled.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param is_my_video_enabled [Boolean] Pass true if the current user's video is enabled.
  # @return [TD::Types::Ok]
  def toggleGroupCallIsMyVideoEnabled(group_call_id:, is_my_video_enabled:)
    broadcast('@type'               => 'toggleGroupCallIsMyVideoEnabled',
              'group_call_id'       => group_call_id,
              'is_my_video_enabled' => is_my_video_enabled)
  end
  
  # Toggles whether current user's video is paused.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param is_my_video_paused [Boolean] Pass true if the current user's video is paused.
  # @return [TD::Types::Ok]
  def toggleGroupCallIsMyVideoPaused(group_call_id:, is_my_video_paused:)
    broadcast('@type'              => 'toggleGroupCallIsMyVideoPaused',
              'group_call_id'      => group_call_id,
              'is_my_video_paused' => is_my_video_paused)
  end
  
  # Toggles whether new participants of a group call can be unmuted only by administrators of the group call.
  # Requires groupCall.can_toggle_mute_new_participants group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param mute_new_participants [Boolean] New value of the mute_new_participants setting.
  # @return [TD::Types::Ok]
  def toggleGroupCallMuteNewParticipants(group_call_id:, mute_new_participants:)
    broadcast('@type'                 => 'toggleGroupCallMuteNewParticipants',
              'group_call_id'         => group_call_id,
              'mute_new_participants' => mute_new_participants)
  end
  
  # Toggles whether a group call participant hand is rased.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param participant_id [TD::Types::MessageSender] Participant identifier.
  # @param is_hand_raised [Boolean] Pass true if the user's hand needs to be raised.
  #   Only self hand can be raised.
  #   Requires groupCall.can_be_managed group call flag to lower other's hand.
  # @return [TD::Types::Ok]
  def toggleGroupCallParticipantIsHandRaised(group_call_id:, participant_id:, is_hand_raised:)
    broadcast('@type'          => 'toggleGroupCallParticipantIsHandRaised',
              'group_call_id'  => group_call_id,
              'participant_id' => participant_id,
              'is_hand_raised' => is_hand_raised)
  end
  
  # Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param participant_id [TD::Types::MessageSender] Participant identifier.
  # @param is_muted [Boolean] Pass true to mute the user; pass false to unmute the them.
  # @return [TD::Types::Ok]
  def toggleGroupCallParticipantIsMuted(group_call_id:, participant_id:, is_muted:)
    broadcast('@type'          => 'toggleGroupCallParticipantIsMuted',
              'group_call_id'  => group_call_id,
              'participant_id' => participant_id,
              'is_muted'       => is_muted)
  end
  
  # Pauses or unpauses screen sharing in a joined group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param is_paused [Boolean] Pass true to pause screen sharing; pass false to unpause it.
  # @return [TD::Types::Ok]
  def toggleGroupCallScreenSharingIsPaused(group_call_id:, is_paused:)
    broadcast('@type'         => 'toggleGroupCallScreenSharingIsPaused',
              'group_call_id' => group_call_id,
              'is_paused'     => is_paused)
  end
  
  # Changes the block state of a message sender.
  # Currently, only users and supergroup chats can be blocked.
  #
  # @param sender_id [TD::Types::MessageSender] Identifier of a message sender to block/unblock.
  # @param is_blocked [Boolean] New value of is_blocked.
  # @return [TD::Types::Ok]
  def toggleMessageSenderIsBlocked(sender_id:, is_blocked:)
    broadcast('@type'      => 'toggleMessageSenderIsBlocked',
              'sender_id'  => sender_id,
              'is_blocked' => is_blocked)
  end
  
  # Toggles whether a session can accept incoming calls.
  #
  # @param session_id [Integer] Session identifier.
  # @param can_accept_calls [Boolean] Pass true to allow accepting incoming calls by the session; pass false otherwise.
  # @return [TD::Types::Ok]
  def toggleSessionCanAcceptCalls(session_id:, can_accept_calls:)
    broadcast('@type'            => 'toggleSessionCanAcceptCalls',
              'session_id'       => session_id,
              'can_accept_calls' => can_accept_calls)
  end
  
  # Toggles whether a session can accept incoming secret chats.
  #
  # @param session_id [Integer] Session identifier.
  # @param can_accept_secret_chats [Boolean] Pass true to allow accepting secret chats by the session; pass false
  #   otherwise.
  # @return [TD::Types::Ok]
  def toggleSessionCanAcceptSecretChats(session_id:, can_accept_secret_chats:)
    broadcast('@type'                   => 'toggleSessionCanAcceptSecretChats',
              'session_id'              => session_id,
              'can_accept_secret_chats' => can_accept_secret_chats)
  end
  
  # Toggles whether aggressive anti-spam checks are enabled in the supergroup.
  # Can be called only if supergroupFullInfo.can_toggle_aggressive_anti_spam == true.
  #
  # @param supergroup_id [Integer] The identifier of the supergroup, which isn't a broadcast group.
  # @param has_aggressive_anti_spam_enabled [Boolean] The new value of has_aggressive_anti_spam_enabled.
  # @return [TD::Types::Ok]
  def toggleSupergroupHasAggressiveAntiSpamEnabled(supergroup_id:, has_aggressive_anti_spam_enabled:)
    broadcast('@type'                            => 'toggleSupergroupHasAggressiveAntiSpamEnabled',
              'supergroup_id'                    => supergroup_id,
              'has_aggressive_anti_spam_enabled' => has_aggressive_anti_spam_enabled)
  end
  
  # Toggles whether non-administrators can receive only administrators and bots using getSupergroupMembers or
  #   searchChatMembers.
  # Can be called only if supergroupFullInfo.can_hide_members == true.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param has_hidden_members [Boolean] New value of has_hidden_members.
  # @return [TD::Types::Ok]
  def toggleSupergroupHasHiddenMembers(supergroup_id:, has_hidden_members:)
    broadcast('@type'              => 'toggleSupergroupHasHiddenMembers',
              'supergroup_id'      => supergroup_id,
              'has_hidden_members' => has_hidden_members)
  end
  
  # Toggles whether the message history of a supergroup is available to new members; requires can_change_info
  #   administrator right.
  #
  # @param supergroup_id [Integer] The identifier of the supergroup.
  # @param is_all_history_available [Boolean] The new value of is_all_history_available.
  # @return [TD::Types::Ok]
  def toggleSupergroupIsAllHistoryAvailable(supergroup_id:, is_all_history_available:)
    broadcast('@type'                    => 'toggleSupergroupIsAllHistoryAvailable',
              'supergroup_id'            => supergroup_id,
              'is_all_history_available' => is_all_history_available)
  end
  
  # Upgrades supergroup to a broadcast group; requires owner privileges in the supergroup.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @return [TD::Types::Ok]
  def toggleSupergroupIsBroadcastGroup(supergroup_id:)
    broadcast('@type'         => 'toggleSupergroupIsBroadcastGroup',
              'supergroup_id' => supergroup_id)
  end
  
  # Toggles whether the supergroup is a forum; requires owner privileges in the supergroup.
  # Discussion supergroups can't be converted to forums.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param is_forum [Boolean] New value of is_forum.
  # @return [TD::Types::Ok]
  def toggleSupergroupIsForum(supergroup_id:, is_forum:)
    broadcast('@type'         => 'toggleSupergroupIsForum',
              'supergroup_id' => supergroup_id,
              'is_forum'      => is_forum)
  end
  
  # Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators;
  #   requires can_restrict_members administrator right.
  #
  # @param supergroup_id [Integer] Identifier of the channel.
  # @param join_by_request [Boolean] New value of join_by_request.
  # @return [TD::Types::Ok]
  def toggleSupergroupJoinByRequest(supergroup_id:, join_by_request:)
    broadcast('@type'           => 'toggleSupergroupJoinByRequest',
              'supergroup_id'   => supergroup_id,
              'join_by_request' => join_by_request)
  end
  
  # Toggles whether joining is mandatory to send messages to a discussion supergroup; requires can_restrict_members
  #   administrator right.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param join_to_send_messages [Boolean] New value of join_to_send_messages.
  # @return [TD::Types::Ok]
  def toggleSupergroupJoinToSendMessages(supergroup_id:, join_to_send_messages:)
    broadcast('@type'                 => 'toggleSupergroupJoinToSendMessages',
              'supergroup_id'         => supergroup_id,
              'join_to_send_messages' => join_to_send_messages)
  end
  
  # Toggles whether sender signature is added to sent messages in a channel; requires can_change_info administrator
  #   right.
  #
  # @param supergroup_id [Integer] Identifier of the channel.
  # @param sign_messages [Boolean] New value of sign_messages.
  # @return [TD::Types::Ok]
  def toggleSupergroupSignMessages(supergroup_id:, sign_messages:)
    broadcast('@type'         => 'toggleSupergroupSignMessages',
              'supergroup_id' => supergroup_id,
              'sign_messages' => sign_messages)
  end
  
  # Changes active state for a username of a supergroup or channel, requires owner privileges in the supergroup or
  #   channel.
  # The editable username can't be disabled.
  # May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been
  #   reached.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param username [TD::Types::String] The username to change.
  # @param is_active [Boolean] Pass true to activate the username; pass false to disable it.
  # @return [TD::Types::Ok]
  def toggleSupergroupUsernameIsActive(supergroup_id:, username:, is_active:)
    broadcast('@type'         => 'toggleSupergroupUsernameIsActive',
              'supergroup_id' => supergroup_id,
              'username'      => username,
              'is_active'     => is_active)
  end
  
  # Changes active state for a username of the current user.
  # The editable username can't be disabled.
  # May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been
  #   reached.
  #
  # @param username [TD::Types::String] The username to change.
  # @param is_active [Boolean] Pass true to activate the username; pass false to disable it.
  # @return [TD::Types::Ok]
  def toggleUsernameIsActive(username:, is_active:)
    broadcast('@type'     => 'toggleUsernameIsActive',
              'username'  => username,
              'is_active' => is_active)
  end
  
  # Changes the owner of a chat.
  # The current user must be a current owner of the chat.
  # Use the method canTransferOwnership to check whether the ownership can be transferred from the current session.
  # Available only for supergroups and channel chats.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] Identifier of the user to which transfer the ownership.
  #   The ownership can't be transferred to a bot or to a deleted user.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::Ok]
  def transferChatOwnership(chat_id:, user_id:, password:)
    broadcast('@type'    => 'transferChatOwnership',
              'chat_id'  => chat_id,
              'user_id'  => user_id,
              'password' => password)
  end
  
  # Extracts text or caption of the given message and translates it to the given language.
  # If the current user is a Telegram Premium user, then text formatting is preserved.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param to_language_code [TD::Types::String] Language code of the language to which the message is translated.
  #   Must be one of "af", "sq", "am", "ar", "hy", "az", "eu", "be", "bn", "bs", "bg", "ca", "ceb", "zh-CN", "zh",
  #   "zh-Hans", "zh-TW", "zh-Hant", "co", "hr", "cs", "da", "nl", "en", "eo", "et", "fi", "fr", "fy", "gl", "ka", "de",
  #   "el", "gu", "ht", "ha", "haw", "he", "iw", "hi", "hmn", "hu", "is", "ig", "id", "in", "ga", "it", "ja", "jv", "kn",
  #   "kk", "km", "rw", "ko", "ku", "ky", "lo", "la", "lv", "lt", "lb", "mk", "mg", "ms", "ml", "mt", "mi", "mr", "mn", "my",
  #   "ne", "no", "ny", "or", "ps", "fa", "pl", "pt", "pa", "ro", "ru", "sm", "gd", "sr", "st", "sn", "sd", "si", "sk", "sl",
  #   "so", "es", "su", "sw", "sv", "tl", "tg", "ta", "tt", "te", "th", "tr", "tk", "uk", "ur", "ug", "uz", "vi", "cy", "xh",
  #   "yi", "ji", "yo", "zu".
  # @return [TD::Types::FormattedText]
  def translateMessageText(chat_id:, message_id:, to_language_code:)
    broadcast('@type'            => 'translateMessageText',
              'chat_id'          => chat_id,
              'message_id'       => message_id,
              'to_language_code' => to_language_code)
  end
  
  # Translates a text to the given language.
  # If the current user is a Telegram Premium user, then text formatting is preserved.
  #
  # @param text [TD::Types::FormattedText] Text to translate.
  # @param to_language_code [TD::Types::String] Language code of the language to which the message is translated.
  #   Must be one of "af", "sq", "am", "ar", "hy", "az", "eu", "be", "bn", "bs", "bg", "ca", "ceb", "zh-CN", "zh",
  #   "zh-Hans", "zh-TW", "zh-Hant", "co", "hr", "cs", "da", "nl", "en", "eo", "et", "fi", "fr", "fy", "gl", "ka", "de",
  #   "el", "gu", "ht", "ha", "haw", "he", "iw", "hi", "hmn", "hu", "is", "ig", "id", "in", "ga", "it", "ja", "jv", "kn",
  #   "kk", "km", "rw", "ko", "ku", "ky", "lo", "la", "lv", "lt", "lb", "mk", "mg", "ms", "ml", "mt", "mi", "mr", "mn", "my",
  #   "ne", "no", "ny", "or", "ps", "fa", "pl", "pt", "pa", "ro", "ru", "sm", "gd", "sr", "st", "sn", "sd", "si", "sk", "sl",
  #   "so", "es", "su", "sw", "sv", "tl", "tg", "ta", "tt", "te", "th", "tr", "tk", "uk", "ur", "ug", "uz", "vi", "cy", "xh",
  #   "yi", "ji", "yo", "zu".
  # @return [TD::Types::FormattedText]
  def translateText(text:, to_language_code:)
    broadcast('@type'            => 'translateText',
              'text'             => text,
              'to_language_code' => to_language_code)
  end
  
  # Removes all pinned messages from a chat; requires can_pin_messages rights in the group or can_edit_messages rights
  #   in the channel.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @return [TD::Types::Ok]
  def unpinAllChatMessages(chat_id:)
    broadcast('@type'   => 'unpinAllChatMessages',
              'chat_id' => chat_id)
  end
  
  # Removes all pinned messages from a forum topic; requires can_pin_messages rights in the supergroup.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier in which messages will be unpinned.
  # @return [TD::Types::Ok]
  def unpinAllMessageThreadMessages(chat_id:, message_thread_id:)
    broadcast('@type'             => 'unpinAllMessageThreadMessages',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Removes a pinned message from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in
  #   the channel.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_id [Integer] Identifier of the removed pinned message.
  # @return [TD::Types::Ok]
  def unpinChatMessage(chat_id:, message_id:)
    broadcast('@type'      => 'unpinChatMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and
  #   messageChatUpgradeFrom; requires creator privileges.
  # Deactivates the original basic group.
  #
  # @param chat_id [Integer] Identifier of the chat to upgrade.
  # @return [TD::Types::Chat]
  def upgradeBasicGroupChatToSupergroupChat(chat_id:)
    broadcast('@type'   => 'upgradeBasicGroupChatToSupergroupChat',
              'chat_id' => chat_id)
  end
  
  # Uploads a file with a sticker; returns the uploaded file.
  #
  # @param user_id [Integer] Sticker file owner; ignored for regular users.
  # @param sticker_format [TD::Types::StickerFormat] Sticker format.
  # @param sticker [TD::Types::InputFile] File file to upload; must fit in a 512x512 square.
  #   For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side.
  #   See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements.
  # @return [TD::Types::File]
  def uploadStickerFile(user_id:, sticker_format:, sticker:)
    broadcast('@type'          => 'uploadStickerFile',
              'user_id'        => user_id,
              'sticker_format' => sticker_format,
              'sticker'        => sticker)
  end
  
  # Validates the order information provided by a user and returns the available shipping options for a flexible
  #   invoice.
  #
  # @param input_invoice [TD::Types::InputInvoice] The invoice.
  # @param order_info [TD::Types::OrderInfo, nil] The order information, provided by the user; pass null if empty.
  # @param allow_save [Boolean] Pass true to save the order information.
  # @return [TD::Types::ValidatedOrderInfo]
  def validateOrderInfo(input_invoice:, order_info: nil, allow_save:)
    broadcast('@type'         => 'validateOrderInfo',
              'input_invoice' => input_invoice,
              'order_info'    => order_info,
              'allow_save'    => allow_save)
  end
  
  # Informs TDLib that messages are being viewed by the user.
  # Sponsored messages must be marked as viewed only when the entire text of the message is shown on the screen
  #   (excluding the button).
  # Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as
  #   read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels).
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_ids [Array<Integer>] The identifiers of the messages being viewed.
  # @param source [TD::Types::MessageSource] Source of the message view; pass null to guess the source based on chat
  #   open state.
  # @param force_read [Boolean] Pass true to mark as read the specified messages even the chat is closed.
  # @return [TD::Types::Ok]
  def viewMessages(chat_id:, message_ids:, source:, force_read:)
    broadcast('@type'       => 'viewMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids,
              'source'      => source,
              'force_read'  => force_read)
  end
  
  # Informs TDLib that the user viewed detailed information about a Premium feature on the Premium features screen.
  #
  # @param feature [TD::Types::PremiumFeature] The viewed premium feature.
  # @return [TD::Types::Ok]
  def viewPremiumFeature(feature:)
    broadcast('@type'   => 'viewPremiumFeature',
              'feature' => feature)
  end
  
  # Informs the server that some trending sticker sets have been viewed by the user.
  #
  # @param sticker_set_ids [Array<Integer>] Identifiers of viewed trending sticker sets.
  # @return [TD::Types::Ok]
  def viewTrendingStickerSets(sticker_set_ids:)
    broadcast('@type'           => 'viewTrendingStickerSets',
              'sticker_set_ids' => sticker_set_ids)
  end
  
  # Writes a part of a generated file.
  # This method is intended to be used only if the application has no direct access to TDLib's file system, because it
  #   is usually slower than a direct write to the destination file.
  #
  # @param generation_id [Integer] The identifier of the generation process.
  # @param offset [Integer] The offset from which to write the data to the file.
  # @param data [String] The data to write.
  # @return [TD::Types::Ok]
  def writeGeneratedFilePart(generation_id:, offset:, data:)
    broadcast('@type'         => 'writeGeneratedFilePart',
              'generation_id' => generation_id,
              'offset'        => offset,
              'data'          => data)
  end
end
