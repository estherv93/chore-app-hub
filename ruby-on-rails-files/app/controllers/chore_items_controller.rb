class ChoreItemsController < ApplicationController
    before_action :set_chore_list
    
    def create
        @chore_item = @chore_list.chore_items.create(chore_item_params)
        redirect_to @chore_list
    end
    
    private
    
    def set_chore_list
        @chore_list = ChoreList.find(params[:chore_list_id])
    end
    
    def chore_item_params
        params[:chore_item].permit(:content)
    end
end
