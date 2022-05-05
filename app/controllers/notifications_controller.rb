class NotificationsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @notifications = Notification.all.order("created_at DESC")
    end

    def show
        @notification = Notification.find(params[:id])
        @notification.update(opened: true) if @notification.opened == false
    end
end