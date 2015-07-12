class Admin::WordAnalysisController < Admin::ApplicationController
  require 'chartkick'
  def index
      chart_data = WordAnalysis.find_by_sql('select word,(count(id)) as counts from word_analyses WHERE answering_date = "2015-07-09" group by word order by counts desc')
        @one = []
        @two = []
        @three = []
        @four = []
        @five = []
        aaa = []
        bbb = []
        ccc = []
        ddd = []
        eee = []
      chart_data.each_with_index do |words,index|
        p words
        p index

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-09'"
        p chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-09'
        p chart_count[0].counts
        aaa << '2015-07-09'
        aaa << chart_count[0].counts
        if index == 0
          p 'if index == 0'
          @one << aaa
        elsif
          index == 1
          @two << aaa
        elsif
          index == 2
          @three << aaa
        elsif
          index == 3
          @four << aaa
        elsif
          index == 4
          @five << aaa
         end

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-10'"
        chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-10'
        p chart_count[0].counts
        bbb << '2015-07-10'
        bbb << chart_count[0].counts
        if index == 0
          @one << bbb
        elsif
          index == 1
          @two << bbb
        elsif
          index == 2
          @three << bbb
        elsif
          index == 3
          @four << bbb
        elsif
          index == 4
          @five << bbb
         end

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-11'"
        chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-11'
        p chart_count[0].counts
        ccc << '2015-07-11'
        ccc << chart_count[0].counts
        if index == 0
          @one << ccc
        elsif
          index == 1
          @two << ccc
        elsif
          index == 2
          @three << ccc
        elsif
          index == 3
          @four << ccc
        elsif
          index == 4
          @five << ccc
         end

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-12'"
        chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-12'
        p chart_count[0].counts
        ddd << '2015-07-12'
        ddd << chart_count[0].counts
        if index == 0
          @one << ddd
        elsif
          index == 1
          @two << ddd
        elsif
          index == 2
          @three << ddd
        elsif
          index == 3
          @four << ddd
        elsif
          index == 4
          @five << ddd
         end

        sql = "select (count(id)) as counts from word_analyses WHERE word = '"
        sql += words.word
        sql += "' and answering_date = '2015-07-13'"
        chart_count = WordAnalysis.find_by_sql(sql)
        p '2015-07-13'
        p chart_count[0].counts
        eee << '2015-07-13'
        eee << chart_count[0].counts
        if index == 0
          @one << eee
        elsif
          index == 1
          @two << eee
        elsif
          index == 2
          @three << eee
        elsif
          index == 3
          @four << eee
        elsif
          index == 4
          @five << eee
         end

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
   #end
    p '@one'
    p @one
    p '@two'
    p @two
    p '@three'
    p @three
    p '@four'
    p @four
    p '@five'
    p @five
    
    @chart_data = [['2014-04-01', 60], ['2014-04-02', 65], ['2014-04-03', 64]]
    @word_ranking = ['注文検索','シナリオ','重要項目設定','ヘルプセンター','レコメンド']
  end
end