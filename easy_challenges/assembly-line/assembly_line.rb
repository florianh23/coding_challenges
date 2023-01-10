# frozen_string_literal: true

class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
    when 1..4
      (@speed * 221).to_f
    when 5..8
      (@speed * 221 * 0.9).to_f
    when 9
      (@speed * 221 * 0.8).to_f
    when 10
      (@speed * 221 * 0.77).to_f
    end
  end

  def working_items_per_minute
    case @speed
    when 1..4
      ((@speed * 221) / 60).to_i
    when 5..8
      ((@speed * 221 * 0.9) / 60).to_i
    when 9
      ((@speed * 221 * 0.8) / 60).to_i
    when 10
      ((@speed * 221 * 0.77) / 60).to_i
    end
  end
end
