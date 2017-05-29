require 'open_weather'

class WeatherController < ApplicationController
  def weather

    if defined?(params['searchcity']['name'])
      searchcity = params['searchcity']['name']
    else
      searchcity = "Dublin"
    end
    # puts "===== params *** #{params['searchcity']['name']}"

    options = { units: "metric", APPID: "0c6168aaef3f250fa30f72fa14a6194a" }

    # get current weather by city name
    # @current = OpenWeather::Current.city("Dublin", options)
    @current = OpenWeather::Current.city(searchcity, options)
    # puts "***** ***** #{@current}"
    # puts "***** ***** #{@current['sys']['country']}"

    @temperature = @current['main']['temp']
    @main = @current['weather'].first['main']
    @description = @current['weather'].first['description']
    @city = @current['name']

    options2 = { cnt: 16, units: "metric", APPID: "0c6168aaef3f250fa30f72fa14a6194a" }
    @forecast = OpenWeather::ForecastDaily.city("Dublin", options2)
    @daylist = @forecast['list']

    # puts "----- ----- #{@daylist}"
    # {"cod":"200","message":0.0032,
    # "city":{"id":1851632,"name":"Shuzenji",
    # "coord":{"lon":138.933334,"lat":34.966671},
    # "country":"JP"},
    # "cnt":10,
    # "list":[{
    #     "dt":1406080800,
    #     "temp":{
    #         "day":297.77,
    #         "min":293.52,
    #         "max":297.77,
    #         "night":293.52,
    #         "eve":297.77,
    #         "morn":297.77},
    #     "pressure":925.04,
    #     "humidity":76,
    #     "weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],}
    #         ]}

  end
  def search
    puts "*** params *** #{params}"
  end
end
