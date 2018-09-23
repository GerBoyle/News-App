class Headline < ApplicationRecord
    
        def self.new_from_lookup(news_ticker)
            begin
                n = News.new(ENV['API_KEY'])
                n.get_top_headlines(sources: news_ticker)
            rescue Exception => e
                return nil
            end
        end
end
