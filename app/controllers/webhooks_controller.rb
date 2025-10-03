class WebhooksController < ApplicationController
  # Skip CSRF protection for webhooks
  skip_before_action :verify_authenticity_token
  
  def github
    # Handle GitHub webhook events
    case request.headers['X-GitHub-Event']
    when 'dependabot_alert'
      handle_dependabot_alert
    when 'push'
      handle_push_event
    else
      # Log unknown events
      Rails.logger.info "Unknown GitHub webhook event: #{request.headers['X-GitHub-Event']}"
    end
    
    head :ok
  end
  
  private
  
  def handle_dependabot_alert
    Rails.logger.info "Dependabot alert received: #{params.inspect}"
    
    # Handle alert state changes
    if params[:action] == 'created' || params[:action] == 'reopened'
      Rails.logger.info "Security alert #{params[:alert][:number]} created/reopened"
    elsif params[:action] == 'dismissed'
      Rails.logger.info "Security alert #{params[:alert][:number]} dismissed"
    elsif params[:action] == 'fixed'
      Rails.logger.info "Security alert #{params[:alert][:number]} fixed"
    end
  end
  
  def handle_push_event
    Rails.logger.info "Push event received for ref: #{params[:ref]}"
  end
end
