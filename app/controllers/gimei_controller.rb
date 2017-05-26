class GimeiController < ApplicationController
  def index
    @names = 15.times.map do
      person = Gimei.new
      name = person.name
      "#{name.male? ? '男' : '女'} ： #{name} (#{name.hiragana})"
    end
  end
end
