module ApplicationHelper

  def signedin?
    if @authenticated_user
      link_to "#{@authenticated_user.name}, Sign Out Here", signout_path
    else
      link_to "Sign In", signin_path
    end
  end
end
