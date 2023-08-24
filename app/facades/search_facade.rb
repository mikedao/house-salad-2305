class SearchFacade
  def initialize(state)
    @state = state
  end

  def members
    members_data[:results].map do |member_data|
      Member.new(member_data)
    end
  end

  def members_count
    members_data[:results].count
  end

  private

    def congress_service
      @_congress_service ||= CongressService.new
    end

    def members_data
      @_members_data ||= congress_service.members_by_state(@state)
    end
end