module ApplicationHelper

  def alert_helper
    alert alert-info
    returt 'alert alert-danger' if params[:error].present?
    alert alert-succes
  end

end
