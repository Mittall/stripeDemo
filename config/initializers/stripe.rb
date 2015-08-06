Rails.configuration.stripe = {
  :publishable_key => 'pk_test_DbPUNpjuWY1qYAOvpbsxz7LI',
  :secret_key      => 'sk_test_VxaijNLiVFk6qg794uv0GftD'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]