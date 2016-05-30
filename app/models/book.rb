class Book < ActiveRecord::Base
# Validations ________________________________________________________________
validates :name, :author, :description, presence: true

end
