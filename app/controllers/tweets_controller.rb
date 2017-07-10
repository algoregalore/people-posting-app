class TweetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tweet, only: [:edit, :show, :update]


  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @tweet, notice: "save successful!"}
        else
        format.html { render :new }
      end
    end
  end

  def edit
    # get tweet we wanna edit and send it to the view
    # happens w/ before action
    # before action gets the tweet we wanna show
  end

  def update
    # get new params we want to update - from before action

    # update it with new info from params
    # save it
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: "you changed that tweet!"}
      else
        format.html { render :edit }
      end
     end
   end

  def show
    # setup to show latest tweet from user
    # before action gets tweet we wanna show
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:message, :user_id)
  end
end
