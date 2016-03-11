helpers do
  def vote_count
  	self.votes.sum(:score)
  end

  def time_since_createion
  	((Time.now - self.created_at) / 3600).round
  end
end