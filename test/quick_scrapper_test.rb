# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'quick_scrapper'

class QuickScrapperTest < Test::Unit::TestCase
  def test_tag_selector
    assert_equal "Google", scrap("http://www.google.co.in/", "title")
  end

  def test_css_selector
    assert_equal "Web", scrap("http://www.google.co.in/", "html body div#mngb div#gog div#gbar nobr a#gb_1.gb1")
  end

  private
  def scrap(url, selector)
    QuickScrapper.scrap(url, selector)
  end
end
