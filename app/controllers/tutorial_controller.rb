class TutorialController < ApplicationController
    def index
        @tutoriales = Tutoriale.all
    end
end