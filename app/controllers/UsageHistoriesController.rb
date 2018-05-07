class UsageHistoriesController < ApplicationController
	def new
		@usage_history = UsageHistory.new
	end

	def create
	end
end