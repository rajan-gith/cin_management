class History < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :cin
end
