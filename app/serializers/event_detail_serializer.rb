class EventDetailSerializer < EventSerializer
  attributes :creator, :group_name
  has_many :attendees

  def creator
    object.user.username
  end

  def group_name
    object.group.name
  end
end
