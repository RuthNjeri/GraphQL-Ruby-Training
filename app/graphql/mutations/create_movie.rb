module Mutations
  class CreateMovie < BaseMutation
    argument :title, String, required: true
    argument :description, String, required: true

    type Types::MovieType

    def resolve(title:nil, description:nil)
      Movie.create!(
          title: title,
          description: description)
    end
  end
end