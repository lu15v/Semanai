class CreateGhGateway < ActiveRecord::Migration
  def up
    Spree::Gateway::Ghpay.create(
      name: 'GHPAY',
      description: 'Custom Gateway for iweek',
      active: true,
      preferences: { server: "test", test_mode: true })
  end
  def down
  end
end
