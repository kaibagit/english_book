class ReviewController < ApplicationController

  def index
    offset = rand(Example.count)
    @example = Example.offset(offset).first
    @vocabulary = @example.meaning.vocabulary

    @remember_count = session[:remember]
    if @remember_count.nil?
      @remember_count = 0
    end
    @donot_remember_count = session[:donot_remember]
    if @donot_remember_count.nil?
      @donot_remember_count = 0
    end
  end

  def remember
    example = Example.find params["example_id"]
    example.proficiency = example.proficiency+1
    example.save

    count = session[:remember]
    if count.nil?
      count = 0
    end
    session[:remember] = count+1
    render json: {'success': true}
  end

  def donot_remember
    example = Example.find params["example_id"]
    example.proficiency = example.proficiency-1
    example.save

    count = session[:donot_remember]
    if count.nil?
      count = 0
    end
    session[:donot_remember] = count+1
    render json: {'success': true}
  end

end