require 'scrapi'

module QuickScrapper
  # Scraps the selection associated to css_selector +selector+ from the page located at +url+
  #
  # Example: QuickScrapper.scrap("http://bvsatyaram.com", div.priceAvail>div>div.PriceCompare>div.BodyS")
  def self.scrap(url, selector)
    scraper = Scraper.define do
      process selector, :selection => :text
      result :selection
    end

    uri = URI.parse(url)
    return scraper.scrape(uri)
  end
end
