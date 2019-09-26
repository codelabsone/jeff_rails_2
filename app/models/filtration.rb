class Filtration < ApplicationRecord
  def @filtration.search(search)
    if search
      find(:all, :conditions => ['filtration_name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
