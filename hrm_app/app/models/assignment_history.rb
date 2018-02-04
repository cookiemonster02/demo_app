class Assignment_history < ActiveRecord::Base
validates :assignment,  presence: true
validates :start_date,  presence: true,format:{ with: \d{4}/\d{1,2}/\d{1,2} }

end
