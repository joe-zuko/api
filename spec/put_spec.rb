describe "put" do
  context "when a registred user" do
    before(:all) do
      original_user = build(:registered_user)
      @new_user = build(:user)
      @result_put = ApiUser.update(original_user.id, @new_user.to_hash)
    end

    it { expect(@result_put.response.code).to eql "200" }
  end

  context "when not a registred user" do
    let(:user) { build(:not_registered_user) }
    let(:result) { ApiUser.update(user.id, user.to_hash) }

    it { expect(result.response.code).to eql "404" }
  end
end
