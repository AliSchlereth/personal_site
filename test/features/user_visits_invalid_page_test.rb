require 'test_helper'

class ErrorHandlingTest < CapybaraTestCase

  def test_user_sees_404_when_visiting_an_invalid_url
    visit '/dogs'

    assert page.has_content("404")
    assert page.has_content("This page does not exist")
    refute page.has_content("Welcome!")
  end

end
