
#1990年から2018年までのビルボードランキングのデータを引っこ抜くスクリプト
(1990..2018).each do |years|
 `wget https://en.wikipedia.org/wiki/Billboard_Year-End_Hot_100_singles_of_#{years} -O #{years}.html`
end