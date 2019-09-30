class Filtration < ApplicationRecord
  def search(search)
    if search
      find(:all, :conditions => ['filtration_name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
