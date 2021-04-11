class UserModel
  attr_accessor :id, :nome, :cidade, :email

  def to_hash
    {
      nome: @nome,
      cidade: @cidade,
      email: @email,
    }
  end
end
