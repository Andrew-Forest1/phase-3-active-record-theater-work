class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map(&:actor)
    end

    def location
        self.auditions.map(&:location)
    end

    def lead
        aud = self.auditions.find_by(hired: true) 
        aud ? aud : "no actor has been hired for this role"
    end

    def understudy 
        aud = self.auditions.where(hired: true)
        aud[1] ? aud[1] : "no actor has been hired for understudy for this role"
    end
end