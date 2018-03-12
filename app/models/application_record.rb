class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def after_sign_up_path_for(resource)
    root_path
  end
end
