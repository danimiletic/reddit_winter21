class SubsController < ApplicationController
  # index, show, new and edit are pages the user can see 
  # fat models, skinny controllers
  # meaning, any logic with the object, be in the model 
  # controllers are traffic directors, actions
  # actions - functionality you are able to do in the app
  # each action will ne its own method 
  # CRUD    http verb
  # Create    post
  # Read    get
  # Update    put   
  # Destroy   delete 
  # actions needs to return html, xml, json, redirect to a section that does 

# index - it will show all of the objects in the table, shows a list of objects 
      # showing all of the subs 
# show - show an individual record, means that you need to pass in an object id 
# new - does two things, first, it will create the object but only in memory, second thing, return new form 
#   create - creation of the object into the data base with the info form the form 
# edit - update only in memory, return the edit form 
#   update - pass in object id to know what you are editing, update in the database with the info form the form 
#   destroy - pass in an object id to know which object youre deleting, will go ahead and delete from the data base, best practice is to redirect to another action after

# things to help with actions
# private_params - helps us validate in the controller side 
# helper methods - help you out with other actions 

# pattern, pay attention to the case, plural, model name
# pattern to the parent relationship
# child controller, Model_name -> @parent.model_names (must be plural)
# to create an index, this is the pattern you will follow 

# at top
# before_action :set_parent

# at the bottom 
# private 
#   def set_parent
#     @parent = ParentModelName.find(params[:parent_id])
#   end
  # def index
  #   @model_names = Model_name.all 
  #   render component: 'ModelNames', props: {model_names: @model_names}
  # end
  # that will grab the records from the db and then return the page 

  # def show
  #   @model_name = Model_name.find(params[:id])
  #   rendering components: 'ModelName', props: { model_name: @model_name }
  # end

  # def new
  #   @model_name = Model_name.new()
  #   render component: 'ModelNameNew', props: { model_name: @model_name }
  # end
    
  # def create
  #   @model_name = Model_name.new(model_name_params)
      # if @model_name.save
        # take them to another action
      # else
      #   render component 'ModelNameNew', props: { model_name: @model_name }
      # end
  # end

  # def edit 
  #   @model_name = Model_name.find(params[:id])
  #   render component 'ModelNameEdit', props: { model_name: @model_name }
  # end

  # def update
  #   @model_name = Model_name.find(params[:id])
  #   if @model_name.update(model_name_params)
  #     # take them to another action 
  #   else
  #     render component 'ModelNameEdit', props: { model_name: @model_name }
  #   end
  # end

  # def destroy 
  #   @model_name = Model_name.find(params[:id])
  #   @model_name.destroy 
    # take them to another action 

    # or 
    # 
    # Model_name.find(params[:id]).destroy 
    # take them to another action 
  # end

  # - at the end of the controller 
  # private 
  # def model_name_params
  #   params.require(:model_name).permit(:attr, :attr2)
  # end

  # model - sub
  def index
    @subs = Sub.all
    render component: 'Subs', props: { subs: @subs}
  end

  def show
    @sub = Sub.find{ params[:id]}
    render component: 'Sub', props: { sub: @sub}
  end

  def new
    @sub = Sub.new
    render component: 'SubNew', props: { sub: @sub }
  end

  def create
    @sub = Sub.new(sub_params)
    if @sub.save
      redirect_to subs_path
    else
      render component: 'SubNew', props: { sub: @sub}
    end
  end

  def update 
    @sub = Sub.find(params[:id])
    if @sub.update(sub_params)
      redirect_to subs_path
    else
      render component: 'SubEdit', props: { sub: @sub }
    end
  end 

  def destory 
    @sub = Sub.find(params[:id])
    @sub.destroy 
    redirect_to subs_path

    # or 

    # Sub.find(params[:id]).destroy 
    # redirect_to subs_path
  end

  def edit
    @sub = Sub.find(params[:id])
    render component: 'SubEdit', props: { sub: @sub }
  end

  private 
    # { sub: {name: ''} }

    def sub_params
      params.require(:sub).permit(:name)
    end
end
