class Sequence
  attr_reader :element

  def initialize(first_element)
    @element = first_element.to_s
  end

  def custom_next
    self.class.new(next_element)
  end

  def next_element
    element.scan(/((\d)\2*)/)
      .map { |el| "#{el.first.size}#{el.last}"}.join
  end
end

f = Sequence.new(1)

puts f.custom_next
