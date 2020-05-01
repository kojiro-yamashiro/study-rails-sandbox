class Hello
  class << self
    def world
      'call class_method !'
    end
  end
  def world
    'call instans_method !'
  end
end
