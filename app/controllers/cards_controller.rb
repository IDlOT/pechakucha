class CardsController < ApplicationController

	def new
		@card = Card.new
	end

	def create
		@card = Card.new(params[:card].permit(:japanese, :english))

		if @card.save
			redirect_to @card
		else
			render 'new'
		end
	end

	def show
		@card = Card.find(params[:id])
	end

	def index
		@cards = Card.all
	end

	def edit
		@card = Card.find(params[:id])
	end

	def update
		@card = Card.find(params[:id])
		if @card.update(params[:card].permit(:japanese, :english))
			redirect_to @card
		else
			render 'edit'
		end
	end

	def destroy
		@card = Card.find(params[:id])
		@card.destroy

		redirect_to cards_path
	end

	private
		def card_params
			params.require(:card).permit(:japanese, :english)
		end
end
