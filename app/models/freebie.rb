class Freebie < ActiveRecord::Base
    belongs_to :company #company instance for this Freebie
    belongs_to :dev #dev instance for this Freebie

    def print_details
        "#{dev.name} owns a #{item_name} from #{company.name}"
    end
end
