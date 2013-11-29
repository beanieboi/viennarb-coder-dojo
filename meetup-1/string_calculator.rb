class StringCalculator

  # Diffrent implementation
  def self.add(numbers_to_add)
    numbers_to_add.split(',').map(&:to_i).reduce(0, :+)
  end

  def self.add(numbers_to_add)
    return 0 if numbers_to_add.empty?

    numbers_to_add.split(',').map(&:to_i).reduce(:+)
  end

  def self.add(numbers_to_add)
    if numbers_to_add.empty?
      0
    else
      numbers_to_add.split(',').map(&:to_i).reduce(:+)
    end
  end

  def self.add(numbers_to_add)
    if numbers_to_add.empty?
      0
    else
      numbers_to_add.split(',')
                    .inject(0) { |sum, number| sum + number.to_i }
    end
  end
end
