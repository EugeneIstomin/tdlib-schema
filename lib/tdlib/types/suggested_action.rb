module TD::Types
  # Describes an action suggested to the current user.
  class SuggestedAction < Base
    %w[
      enable_archive_and_mute_new_chats
      check_password
      check_phone_number
      view_checks_hint
      convert_to_broadcast_group
      set_password
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/suggested_action/#{type}"
    end
  end
end
