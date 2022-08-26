class Dev < ActiveRecord::Base
    has_many :freebies #collection of all freebies collected by devs
    has_many :companies, through: :freebies #collection of companies that dev has collected freebies from

    def received_one?(item_name)
        # self.first.freebies.map { |x| x.item_name == "Internship" ? true : false }
        self.freebies.any? { |freebie| freebie.item_name == item_name }
    end

    def give_away(dev, freebie)
        freebie.update(dev_id: dev.id) unless freebie.dev != self
    end
end
