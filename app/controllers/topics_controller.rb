class TopicsController < ApplicationController
  before_action :set_sub

  # Model name - Topic
  def index
    # @topics = Topic.all 
    @topics = @sub.topics
    render component: 'Topics', props: { topics: @topics }
  end

  def show
    # @topic = Topic.find(params[:id])
    @topic = @sub.topics.find(params[:id])
    render component: 'Topic', props: { topic: @topic }
  end

  def new
    # @topic = Topic.new
    @topic = @sub.topics.new
    render component: 'TopicNew', props: { topic: @topic }
  end

  def create
    # @topic = Topic.new(topic_params)
    @topic = @sub.topics.new(topic_params)
    if @topic.save
      redirect_to subs_path
    else
      render component: 'TopicNew', props: { topic: @topic }
    end
  end

  def edit
    # @topic = Topic.find(params[:id])
    @topic = @sub.topics.find(params[:id])
    render component: 'TopicEdit', props: { topic: @topic }
  end

  def update
    # @topic = Topic.find(params[:id])
    @topic = @sub.topics.find(params[:id])
    if @topic.update(topic_params)
      redirect_to subs_path
    else
      render component: 'TopicEdit', props: { topic: @topic }
    end
  end

  def destroy
    # @topic = Topic.find(params[:id])
    @topic = @sub.topics.find(params[:id])
    @topic.destroy
    redirect_to subs_path
  end

  private 
    def set_sub
      @sub = Sub.find(params[:sub_id])
    end

    def topic_params
      params.require(:topic).permit(:title, :body)
    end
end