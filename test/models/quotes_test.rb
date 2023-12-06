require "test_helper"

class QuoteTest < ActiveSupport::TestCase
  setup do
    login_as users(:accountant)
    @quote = Quote.ordered.first
  end
end
