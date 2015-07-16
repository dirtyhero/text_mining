class Admin::WordAnalysisController < Admin::ApplicationController
  require 'chartkick'
  require 'Date'
  def index
    @one = @two = @three = @four = @five = []
    elemets = [@one,@two,@three,@four,@five]
    top5 = WordAnalysis.get_chart_top5(Date.today)
    WordAnalysis.get_chart_top5(Date.today).each_with_index do |word,i|
      if wa = WordAnalysis.word_from_chart_date(word)
        elemets[i] << wa
      end
    end
    @chart_data = [['2014-04-01', 60], ['2014-04-02', 65], ['2014-04-03', 64]]
    @word_ranking = ['注文検索','シナリオ','重要項目設定','ヘルプセンター','レコメンド']
  end
  private
end