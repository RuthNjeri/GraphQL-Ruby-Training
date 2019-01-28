module Types
  class MutationType < BaseObject
    field :create_movie, mutation: Mutations::CreateMovie
  end
  end

