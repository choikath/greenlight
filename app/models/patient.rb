class Patient < ActiveRecord::Base
    belongs_to :service, inverse_of: :patients
end
