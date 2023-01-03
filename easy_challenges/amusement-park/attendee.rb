# frozen_string_literal: true

class Attendee
  attr_reader :height, :pass_id

  def initialize(height)
    @height = height
  end

  def pass_id
    return @pass_id if @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end
