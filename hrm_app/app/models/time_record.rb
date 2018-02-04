class Time_record < ActiveRecord::Base
validates_date :start_time, :on_or_before => lambda { Date.current }
validates_date :leaving_time, :on_or_before => lambda { Date.current }
end
