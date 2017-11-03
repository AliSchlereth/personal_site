require "test_helper"

class AboutPageTest < CapybaraTestCase

  def test_user_sees_about_page_info
    visit '/about'

    assert page.has_content?("All about me!")
    assert_equal 200, page.status_code
  end

end
