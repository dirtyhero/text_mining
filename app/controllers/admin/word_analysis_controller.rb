class Admin::WordAnalysisController < Admin::ApplicationController
  require 'chartkick'
  require 'Date'
  def index(word=nil)
    @one = @two = @three = @four = @five = []
    elemets = [@one,@two,@three,@four,@five]
    @top5 = WordAnalysis.get_chart_top5(Date.today)
    analysis_word = params[:word] ? params[:word] : @top5.to_a[0][0]
    element = WordAnalysis.word_from_chart_date(analysis_word) # word no1
    generate_graph(element,analysis_word)
  end
  private
  def generate_graph(element,analysis_word)
    x = element.map{|item| item[0]}
    y = element.map{|item| item[1]}
    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(text: analysis_word)
      f.xAxis(categories: x) # x軸
      f.series(name: '頻出数', data: y) # y軸
    end
  end
end