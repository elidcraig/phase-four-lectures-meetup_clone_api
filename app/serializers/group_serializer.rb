class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :current_user_membership
  
  def current_user_membership
    current_user.memberships.find_by(group_id: object.id)
  end
end
