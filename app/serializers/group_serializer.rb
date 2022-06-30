class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :membership
  
  def membership
    current_user.memberships.find_by(group_id: object.id)
  end
end
