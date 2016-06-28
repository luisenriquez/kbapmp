

module UsersHelper


# Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

def simple_question(question)
question = "What is your  "

end

def question_mark(mark)
mark = "?"
end


class Simple_Questions

def initialize (question)

@question = question

end

def place_of_birth

question = "what is your place of birth" 

puts question

end

def name

question = "what is your name" 

puts question

end


end
end
