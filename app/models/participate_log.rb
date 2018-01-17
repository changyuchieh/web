class ParticipateLog < ApplicationRecord
  belongs_to :activity, counter_cache: true
end
