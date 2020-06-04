class RecruitmentsController < ApplicationController
    def new
        @recruitment = Recruitment.new
    end

    def create
    end

    def index
        @recruitment = Recruitment.all
    end 
end
