class VentureCapitalist
    attr_accessor :name, :total_worth
    @@all =[]

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end
    def self.all
        @@all
    end
    def self.tres_commas_club
        self.all.select {|p| p.total_worth>1000000000}
    end

    def offer_contract(startup, type, investment)
        Funding_round.new(startup, self, type, investment)
    end 

    def funding_rounds
        Funding_round.all.select do |inst| inst.venture_capitalist==self  
        end 
    end  

    def portfolio
        funding_rounds.map do |inst| inst.startup
        end 
    end 

    def biggest_investment
        funding_rounds.max_by do |inst| inst.investment 
        end 
    end 

    def invested(domain)
        instance = self.portfolio.find do |inst| inst.domain == domain end
        if !instance 
            return 0
        else instance.total_funds 
        end 
    end 
end