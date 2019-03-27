
(1990..2014).each do |years|
 `wget https://en.wikipedia.org/wiki/Billboard_Year-End_Hot_100_singles_of_#{years} -O #{years}.html`
end