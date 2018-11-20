module Udon
  class UdonService
    def initialize
      @name = "Udon_#{Time.now.to_i}"
    end

    def perform!
      puts "perform"
      "I hate #{@name}"
    end
  end
end
