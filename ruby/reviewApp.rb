def post_review(a_posts)
    post = {}
    puts "select a genre"
    post[:genre] = gets.chomp
    puts "enter a title"
    post[:title] = gets.chomp
    puts "how did you feel"
    post[:review] = gets.chomp
    line = "======================="

    #描画
    puts "ジャンル： #{post[:grenre]}\n#{line}"
    puts "タイトル： #{post[:title]}\n#{line}"
    puts "感想： #{post[:review]}\n#{line}"

    #配列オブジェクトに追加
    a_posts << post
    return a_posts
end

	def read_reviews(a_posts)
#	   puts "what number of review do you wanna read?"
#	   input = gets.to_i
#	   post = a_posts[input]
	   
	   	   
        line = "======================="
#	    puts"genre : #{post[:genre]}\n#{line}"
#	    puts"title : #{post[:title]}\n#{line}"
#	    puts"review : #{post[:review]}\n#{line}"

	    a_posts.each do |post|
	       	    puts"genre : #{post[:genre]}\n#{line}"
	    	    puts"title : #{post[:title]}\n#{line}"
		    puts"review : #{post[:review]}\n#{line}"
	    end
	end

	def end_program
	    exit
	end

	def exception
	    puts "入力された値は無効な値です"
	end

	posts = [ ]

     while true do
	puts "the number of revier : #{posts.length}"
	puts "[0]write review"
	puts "[1]read review"
	puts "[2]end this application"
	input = gets.to_i

	if input == 0 then
	   posts = post_review(posts)
	elsif input == 1 then
	   read_reviews(posts)
	elsif input == 2 then
	   end_program
	else
	   exception
	end
    end