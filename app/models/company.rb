class Company < ActiveRecord::Base
    has_many :freebies #collection of all freebies for the Company
    has_many :devs, through: :freebies #collection of all devs who collected freebies from the Company

    def give_freebie(dev, item_name, value)
        Freebie.create(item_name: item_name, value: value, dev_id: dev.id, company_id: company.id)
    end

    def self.oldest_company
        Company.all.order(:founding_year)[0]
    end
end

