class License < ActiveRecord::Base
	belongs_to :user

	validates :state, format: {with: /\A[A-Z]{2}\z/ },
	length: { is: 2 }
end
