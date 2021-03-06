class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = Hash.new(0)
  end

  def add_participant(name, cost)
    @participants[name] += cost
  end

  def total_cost
    @participants.values.sum
  end

  def number_of_participants
    @participants.keys.count
  end

  def split
    total_cost / number_of_participants
  end

  def owed
    owed_hash = Hash.new(0)
    @participants.each do |key, value|
      owed_hash[key] = (split - value)
    end
    owed_hash
  end
end
