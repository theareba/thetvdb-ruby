module Thetvdb
  class Client
    attr_reader :token, :seriesName

    def initialize(seriesName)
      @token = API_KEY
      @seriesName = seriesName
      if @seriesName.empty? || @token.empty?
        raise ArgumentError, 'Series Name and token are required'
      end
    end

    def get_show
      result = RestClient.get 'http://thetvdb.com/api/GetSeries.php?seriesname=' + @seriesName
      doc = Nokogiri::XML(result)
      seriesId = doc.at('seriesid').text
      series_data = RestClient.get 'http://thetvdb.com/api/' + @token + '/series/' + seriesId + '/all/en.xml'
      return series_data
    end
  end
end