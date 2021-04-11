describe "get" do
  context "when a registred user" do
    let(:user) { build(:registered_user) }
    let(:result) { ApiUser.find(user.id) }

    it { expect(result.response.code).to eql "200" }
  end

  context "when not a registred user" do
    let(:user) { build(:not_registered_user) }
    let(:result) { ApiUser.find(user.id) }

    it { expect(result.response.code).to eql "404" }
  end
end
