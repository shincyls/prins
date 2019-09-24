RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)
  config.parent_controller = "::ApplicationController"

  config.authorize_with do |controller|
    unless current_user && current_user.super?
      redirect_to(
        main_app.root_path,
        flash: {alert: "You are not permitted to view this page"}
      )
    end
  end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Will Paginate ==
  if defined?(WillPaginate)
    ActiveSupport.on_load :active_record do
      module WillPaginate
        module ActiveRecord
          module RelationMethods
            alias_method :per, :per_page
            alias_method :num_pages, :total_pages
          end
        end
      end
    end
  end

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
