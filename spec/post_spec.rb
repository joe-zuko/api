describe "post" do
  context "when new user" do
    let(:result) { ApiUser.create(build(:user).to_hash) }

    it { expect(result.response.code).to eql "201" }
  end
end
