class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #add authentication to show, index, edit, destroy, profile etc links

    #cancan not actually doing anything because it thinks listings has a user??
    
    user ||= User.new()
      #if @listing.current_user.nil?
      # if user.present?
        can :read, Listing
        can :show, Listing
      if user.present?
        can [:read, :create], Listing 
        can [:update, :destroy, :edit], Listing, :seller_id => user.id
      end
    end
        #if current_user.user_signed_in? && listing&.seller&.user == listing.seller_id
        #IF USER LOGGED IN, AND LISTING SELLER ID MATCHES USER ID, THEY CAN EDIT/DESTROY
      # if current_user.user_signed_in? && current_user(listing_params) == current_listing
      #   can
  
end


      # if user.user_signed_in? && listing&.seller&.user == listing.seller_id
      #   can :manage, :current_listing 
      # else
      #   can :read, :all
      # end

    #  if user.nil?
    #    can :read, Listing
    # else user.signed_in?
    #   can [:read, :create], Listing
    #   can [:update, :destroy, :edit], Listing, :user_id => user.id
    # end

    
#if logged in - active listings that user owns
#can :read, Listing, :active => true, :user_id => user.id


    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities

