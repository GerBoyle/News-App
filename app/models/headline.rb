class Headline < ApplicationRecord
    
        def self.new_from_lookup(news_ticker)
            n = News.new(ENV['API_KEY'])
            n.get_top_headlines(sources: news_ticker)
        end
end
