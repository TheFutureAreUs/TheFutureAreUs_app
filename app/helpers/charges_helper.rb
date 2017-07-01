module ChargesHelper

  def pretty_amount(amount_in_cents)
    number_to_currency(amount_in_cents / 100)
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
