class PersonMatcher
  attr_reader :people

  def initialize(*people)
    @people = people
  end

  # write your find_match method here
  def find_match(params)
    return [] unless params

    people = @people.select do |person|
      if params[:middle_name]
        person[:first_name] == params[:first_name] &&
        person[:middle_name] == params[:middle_name] &&
        person[:last_name] == params[:last_name]
      else
        person[:first_name] == params[:first_name] && person[:last_name] == params[:last_name]
      end
    end

    people
  end
end
