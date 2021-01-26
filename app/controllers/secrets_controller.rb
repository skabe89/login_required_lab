class SecretsController < ApplicationController

    def show
      if !current_user
        redirect_to '/new'
      end
    end

end