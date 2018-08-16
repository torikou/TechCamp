class Review
  def self.get_review_count
    return 0
  end

  def write_review
    puts "タイトルを入力してください"
    @title = gets.chomp
    puts "ジャンルを入力してください"
    @genre = gets.chomp
    puts "感想を入力してください"
    @impression = gets.chomp
  end

    def show_review
    line = "---------------------------"
    puts "ジャンル : #{@genre}\n#{line}\n"
    puts "タイトル : #{@title}\n#{line}\n"
    puts "感想 :\n#{@impression}\n#{line}\n"
  end

  def initiallize
    puts "this is initialize"
    end
end


review = Review.new
review.write_review
review.show_review
