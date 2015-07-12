class Admin::WordAnalysisController < Admin::ApplicationController
  require 'chartkick'
  def index
    # 配列の場合
      chart_data = WordAnalysis.find_by_sql('select word,(count(id)) as counts from word_analyses WHERE answering_date = "2015-07-10" group by word order by counts')
      chart_data.each do |words|
        @aaa = []
        aaa = []
        bbb = []
        ccc = []
        ddd = []
        eee = []
      chart_data.each do |words|

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-09'"
        chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-09'
        p chart_count[0].counts
        aaa << '2015-07-09'
        aaa << chart_count[0].counts
        @aaa << aaa

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-10'"
        chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-10'
        p chart_count[0].counts
        bbb << '2015-07-10'
        bbb << chart_count[0].counts
        @aaa << bbb

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-11'"
        chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-11'
        p chart_count[0].counts
        ccc << '2015-07-11'
        ccc << chart_count[0].counts
        @aaa << ccc

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-12'"
        chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-12'
        p chart_count[0].counts
        ddd << '2015-07-12'
        ddd << chart_count[0].counts
        @aaa << ddd

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-13'"
        chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-13'
        p chart_count[0].counts
        eee << '2015-07-13'
        eee << chart_count[0].counts
        @aaa << eee

        #p chart_count.counts

        #sql = "select word,(count(id)) as counts from word_analyses WHERE answering_date = '"
        #sql += chart_date.to_s
        #sql += "' group by word"
        #p chart_count = WordAnalysis.find_by_sql(sql)

        #chart_date.each do |i|
        #  p words.counts
        #  p i.answering_date.to_s
        #  #p = i + words.counts
        #end

         #WordAnalysis.find_by_sql(sql)
     end
   end
    p @aaa
    @chart_data = [['2014-04-01', 60], ['2014-04-02', 65], ['2014-04-03', 64]]
    @word_ranking = ['注文検索','シナリオ','重要項目設定','ヘルプセンター','レコメンド']
  end
end