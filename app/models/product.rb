class Product < ApplicationRecord
    belongs_to :category
    has_many :reviews, dependent: :destroy

    def average_rate
      @dem=0;
      @tb =0;
        reviews.each do |a|
          if a.rate!=0
            @dem +=1
            @tb += a.rate
          end
        end
        if @dem===0 
          @tb= 0
        else
        @tb = (@tb/@dem).round()
        end
        return @tb
    end
end

