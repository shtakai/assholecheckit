module Udon
  class UdonService
    UdonError = Class.new(StandardError)
    def initialize(hate: nil)
      @name = "Udon_#{Time.now.to_i}"
      @hate = hate
    end

    def perform!
      fail UdonError if @hate
      puts "perform"
      "I hate #{@name}"
    end
  end
end
