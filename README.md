# ScrapeAStory

## Overview:

Simple web scraper built with Ruby with the HTTP and Nokogiri gems. This is part of an app I am building, where small excerpts from other books will serve as writing prompts for people to write their own stories. Will post the link to the app when the work is completed. 

### Installation:


```
$ git clone https://github.com/SowmyaAji/ScrapeAStory.git
$ cd (into the above directory)
$ bundle install

```

### To run the scraper

```
$ ruby scraper.rb

````

### Output

Since I have byebug in the code, it shows the interactive terminal:

```
[11, 20] in /Users/sowmya/scraperruby/scraper.rb
   11:     para_array.each do |para|
   12:         para_text = para.text
   13:         if para_text.length > 200
   14:             excerpts.push(para_text)
   15:         end
   16:      end
   17:      byebug
=> 18: end
   19:
   20: scraper
(byebug)

```

You can test the page that has been scraped by using any of the variables in the code. For example, 

```
(byebug) excerpts.first

```

will output:

```
"In the late 1960s, at the call of Chairman Mao, 20 million Chinese students of middle- and high-school age streamed from the cities to the countryside as part of the “Down to the Countryside” movement. For years they lived among the peasants, separated from their homes and families, forced to give up formal schooling to be “re-educated” through hard agricultural labor. It was a time of great idealism and incalculable hardship.\nIn the southern province of Canton one million students were downcountried, many of them to state-run rubber plantations in the tropical highlands of Hainan Island."

```

To ask for other variables, like exerpts.last or excerpts.length, you just need to type 

```
(byebug) continue

```

To exit byebug, you just need to type

```
(byebug) exit

```



