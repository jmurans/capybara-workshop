class Element
    def initialize(type, value)
        @value = Hash[:type => type, :value => value]
    end

    def find
        Capybara.find(@value[:type], @value[:value])
    end
    
    def visible?
        find.visible?
    end

    def isNotVisible
        unless !visible?
            raise "Element is visible, but it shouldn\'t"
        end
    end

    def click
        find.click
    end

    def isVisible
        unless visible?
        raise "Element is not visible!" 
        end
    end

    def send_keys(value)
        find.send_keys value
    end
end