class Api::V1::SessionsController < ApplicationController
    respond_to :json

    def create
    end

    def destroy
    end

    private
    def respond_with(resource, _opts = {})
        render json: resource
    end

    def respond_to_on_destroy
        head :no_content
    end
end
