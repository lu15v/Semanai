class CreateGhGateway < ActiveRecord::Migration
  def up
    Spree::Gateway::Ghpay.create(
      name: 'GHPAY',
      description: 'Custom Gateway for iweek',
      active: true,
      environment: 'development')
  end
  def down
  end
end
