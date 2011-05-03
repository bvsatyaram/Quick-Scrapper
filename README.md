quick_scrapper
==============

`quick_scrapper` scraps the selection associated to css_selector from a given page. `quick_scrapper` uses the `scrapi` library to do the scraping, avoiding all the complicated methid calls. Just one method to do all the scraping required!!


Installation
------------

The installation slighly deffers for Ruby 1.9 and 1.8.

For Ruby 1.9 and higher, the installation is as simple as running:

    gem install quick_scrapper

However the latest version of the dependency gem `scrapi` does not have
backward compatibility with 1.8.x. So, for Ruby 1.8.x, the installation can be
carried out by running:

    gem install scrapi -v 1.2.0
    gem install quick_scrapper

Usage
-----

    require 'rubygems'
    require 'quick_scrapper'

You may scrap for a `css_selector` in a webpage with url `page url` by running:

    QuickScrapper.scrap(`page url`, `css_selector`) 

For example, you may run:

    QuickScrapper.scrap("http://bvsatyaram.com", div.priceAvail>div>div.PriceCompare>div.BodyS")

Author
------

B V Satyaram <[bvsatyaram.com](http://bvsatyaram.com)>

