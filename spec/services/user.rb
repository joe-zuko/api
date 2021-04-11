class ApiUser
  include HTTParty
  base_uri "http://5b49f9b0ff11b100149bf42b.mockapi.io"

  def self.create(user)
    post("/cm/startup", :body => user)
  end

  def self.update(user_id, user)
    get("/cm/startup/#{user_id}", :body => user)
  end

  def self.find(user_id)
    get("/cm/startup/#{user_id}")
  end

  def self.remove(user_id)
    delete("/cm/startup/#{user_id}")
  end
end
