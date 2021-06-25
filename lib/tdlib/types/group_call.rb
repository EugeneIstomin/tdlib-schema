module TD::Types
  # Describes a group call.
  #
  # @attr id [Integer] Group call identifier.
  # @attr title [String] Group call title.
  # @attr scheduled_start_date [Integer] Point in time (Unix timestamp) when the group call is supposed to be started
  #   by an administrator; 0 if it is already active or was ended.
  # @attr enabled_start_notification [Boolean] True, if the group call is scheduled and the current user will receive a
  #   notification when the group call will start.
  # @attr is_active [Boolean] True, if the call is active.
  # @attr is_joined [Boolean] True, if the call is joined.
  # @attr need_rejoin [Boolean] True, if user was kicked from the call because of network loss and the call needs to be
  #   rejoined.
  # @attr can_be_managed [Boolean] True, if the current user can manage the group call.
  # @attr participant_count [Integer] Number of participants in the group call.
  # @attr loaded_all_participants [Boolean] True, if all group call participants are loaded.
  # @attr recent_speakers [Array<TD::Types::GroupCallRecentSpeaker>] Recently speaking users in the group call.
  # @attr mute_new_participants [Boolean] True, if only group call administrators can unmute new participants.
  # @attr can_change_mute_new_participants [Boolean] True, if the current user can enable or disable
  #   mute_new_participants setting.
  # @attr record_duration [Integer] Duration of the ongoing group call recording, in seconds; 0 if none.
  #   An {TD::Types::Update::GroupCall} update is not triggered when value of this field changes, but the same
  #   recording goes on.
  # @attr duration [Integer] Call duration; for ended calls only.
  class GroupCall < Base
    attribute :id, TD::Types::Integer
    attribute :title, TD::Types::String
    attribute :scheduled_start_date, TD::Types::Integer
    attribute :enabled_start_notification, TD::Types::Bool
    attribute :is_active, TD::Types::Bool
    attribute :is_joined, TD::Types::Bool
    attribute :need_rejoin, TD::Types::Bool
    attribute :can_be_managed, TD::Types::Bool
    attribute :participant_count, TD::Types::Integer
    attribute :loaded_all_participants, TD::Types::Bool
    attribute :recent_speakers, TD::Types::Array.of(TD::Types::GroupCallRecentSpeaker)
    attribute :mute_new_participants, TD::Types::Bool
    attribute :can_change_mute_new_participants, TD::Types::Bool
    attribute :record_duration, TD::Types::Integer
    attribute :duration, TD::Types::Integer
  end
end
