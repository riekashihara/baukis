require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Baukis
  class Application < Rails::Application

    config.load_defaults 5.1

    # タイムゾーンを東京に設定
    config.time_zone = 'Tokyo'
    # ロケールファイルのロードパスを設定（デフォルトロケールを「日本語」に設定）
    config.i18n.load_path +=
      Dir[Rails.root.join('config', 'locales', '**', '*.{rb.yml}').to_s]
    config.i18n.default_locale = :ja
    # config.load_defaults 5.1

    # テストフレームワークをRspecに変更
    # ジェネレータによるソースコードの自動生成をOff
    config.generators do |g|
      g.test_framework :rspec,
      fixtures: false,
      helper_specs: false,
      assets: false,
      controller_specs: false,
      view_specs: false,
      routing_sepcs: false
    end
  end
end
