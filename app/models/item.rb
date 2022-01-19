class Item < ApplicationRecord

    def self.to_csv
        attributes = %w{name count}
        CSV.generate(headers: true) do |csv|
          csv << attributes
          all.each do |item|
            csv << attributes.map{ |attr| item.send(attr) }
          end
        end
      end

end
