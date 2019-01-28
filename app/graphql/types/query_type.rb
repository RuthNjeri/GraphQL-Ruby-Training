module Types
  class QueryType < BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :all_movies, [MovieType], null:false
    # description “A list of all the movies”
    def all_movies
        Movie.all
    end

    field :movie, MovieType, null:false do
      # description “Return a movie”
      argument :id, ID, required: true
    end

    def movie(id: nil )
      Movie.find(id)
    end

  end
  end

