class WordAnalysis < ActiveRecord::Base
 require 'csv'
 require 'natto'
 require 'pp'
 require 'kconv'


  class << self

    # def test(filepath)
    #     p "aaaaa"

    # end

#Admin::MenuControllerのcsv_text変数を持ってきます。インスタンス変数を直で突っ込むのがRailsのどっかのversionよりできないので、
#下記のような処理を入れています。
csv_text = @csv_text


#fileアップロードmethod
def import(csv_text)


 CSV.parse(csv_text) do |data|
  #Natto::MeCabクラスのオブジェクトを作成します。
  nm = Natto::MeCab.new
    #Natto::MeCabクラスのparseメソッドを呼び出し、形態素分析をします。
    nm.parse(data[1]) do |n|
    	#形態素分析を行った結果を格納する用のオブジェクトを生成。
      wa = WordAnalysis.new
      #surfaceで形態素分解した要素一個一個を。featureは左記要素の品詞(名詞とか形容詞とか)を返します。
      #一列目は日付を想定しています。
      #deletedは0を渡すようにします。
      wa.answering_date=data[0]
      wa.word = n.surface
      wa.part = n.feature.split(",")[0]
      wa.deleted = 0
      wa.save!
    end
   end
  end
 end

   end


