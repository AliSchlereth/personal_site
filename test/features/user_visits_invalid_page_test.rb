require 'test_helper'

class ErrorHandlingTest < CapybaraTestCase

  def test_user_sees_404_when_visiting_an_invalid_url
    visit '/dogs'

    assert_equal 404, page.status_code
    assert page.has_content?("Page not found")
    refute page.has_content?("Welcome!")
  end

end
