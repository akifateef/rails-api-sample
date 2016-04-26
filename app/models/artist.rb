class Artist < ActiveRecord::Base
	has_many :albums

	def name_with_label
    "#{name} produced by #{label}"
  end
end
