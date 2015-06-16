class Person
  # code here
  def initialize(attributes)
    attributes.each { |key, value|
      self.class.send(:attr_accessor, key)
      instance_variable_set("@#{key}", value)
    }
  end
end
