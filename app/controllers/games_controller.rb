class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score

    def checkword
      @word = params[:word]
      url = "https://wagon-dictionary.herokuapp.com/#{word}"
      response = URI.open(url).read
      result = JSON.parse(response)
      if result['found']
        @message = " Yay ! Your word exists !"
      else
        @message =  "Your word cannot be done with your letters"
      end
    end
    # if @word
    # " You respect your selection's letters but your word doesn't exist, sorry !"
    # else

    # end
  end

end

# >> params
# => #<ActionController::
# Parameters {"authenticity_token"=>"cZmCEqsA5gsg2KSqPIexRE4I7Qjyr-bCNdrXg4XAhislSf_vFxChrVoSIbcMNAsWmdyYWpcBCiqgUK58bBRYSg",
#  "word"=>"coucou", "controller"=>"games", "action"=>"score"} permitted: false>


# <%# Le mot (qu'on récup du formulaire) ne peut pas être créé à partir de tes lettres %>
# <%# Le mot peut être fait selon tes lettres, mais n'est pas un mot français ! Sorry !  %>
# <%# Yay, bien joué ! Le mot existe !  %>
