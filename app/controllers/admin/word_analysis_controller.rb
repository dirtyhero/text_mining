class Admin::WordAnalysisController < Admin::ApplicationController
  require 'chartkick'
  require 'Date'
  def index
    top5 = get_chart_top5
    @one = []
    @two = []
    @three = []
    @four = []
    @five = []
    # elemets = [@one,@two,@three,@four,@five]
    # # [@one,@two,@three,@four,@five].map! do |chart_element|
    # #   create_chart_data(top5[index])
    # # end
    # p top5

    # top5.each_with_index do |word,i|
    #   p "sldkjflsdjflksjdlfkjslkdfjlsjf;alkjd;fja;lj"
    #   elemets[i] << create_chart_data(word)
    # end
    # p "fuckoffffffff"
    # p elements
    
    @chart_data = [['2014-04-01', 60], ['2014-04-02', 65], ['2014-04-03', 64]]
    @word_ranking = ['注文検索','シナリオ','重要項目設定','ヘルプセンター','レコメンド']
  end
  private

  def get_chart_top5
    # todo Date.todayに変更
    return WordAnalysis.find_by_sql('select word,(count(id)) as counts from word_analyses WHERE answering_date = "2015-07-09" group by word order by counts desc limit 5')
  end

  def create_chart_data(word_analysis)
    chart_data = []
    [5,4,3,2,1].each do |num|
      date = Date.today - num
      sql = word_from_create_sql(word_analysis,date)
      p "chart_countchart_countchart_countchart_countchart_countchart_count"
      chart_count = WordAnalysis.find_by_sql(sql)


      chart_data << [chart_count,date,chart_count.counts]
    end
    return chart_data
  end

  def word_from_create_sql(word,day)
    # 日付と単語を渡してその日付とカウントを返す
    sql = "select (count(id)) as counts,answering_date as date from word_analyses WHERE word = '"
    sql += word.word.to_s
    sql += "' and answering_date > '2015-07-01'"
    return sql
  end
end