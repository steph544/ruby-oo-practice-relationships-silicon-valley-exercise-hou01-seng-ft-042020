class Startup
    attr_accessor :name, :domain
    attr_reader :founder
    @@all = []
    def initialize (name,founder,domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end
    def pivot(domain,name)
        @domain = domain
        @name = name
    end
    def self.all
        @@all
    end
    def self.find_by_founder(name)
        self.all.find {|p| p.founder == name}
    end
    def self.domains
        new_array =[]
        self.all.select {|p| new_array << p.domain}
        new_array
    end
    def sign_contract(venture_capitalist, type, investment)
        Funding_round.new(self,venture_capitalist,type,investment)
    end

    def fundingRound
        Funding_round.all.select {|p| p.startup == self}
    end

    def num_funding_round
        fundingRound.count
    end

    def total_funds
        total =0
        fundingRound.each {|p| total+=p.investment}
        total
    end
    def investors
        new_arra2=[]
        fundingRound.each {|p| new_arra2<<p.venture_capitalist}
        new_arra2
    end
    def investors_name
        new_array3 =[]
        investors.select {|p| new_array3<<p.name}
        new_array3
    end
    def big_investors
        VentureCapitalist.tres_commas_club.select do |array| 
            investors_name.each do |key| key end end 
    end

end