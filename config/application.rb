require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StudyRailsSandbox
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # app配下に独自のクラスを追加した際にはこちらに追加することで自動的に読み込みすることができる。
    # rails5 では以下がなくても自動で読み込まれたようですが、rails6ではconfig.autoload_pathsで調整する必要が
    # config.autoload_paths += %W(#{config.root}/hogehoge)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # 公式のl18n APIについてはこちら
    # https://railsguides.jp/i18n.html#%E3%83%91%E3%83%96%E3%83%AA%E3%83%83%E3%82%AFi18n-api
    # 言語ファイルを階層ごとに設定するための記述
    # I18nライブラリに訳文の探索場所を指示する
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

    # アプリケーションが対応している言語のホワイトリスト(ja = 日本語, en = 英語)
    # config.i18n.available_locales = %i(ja en)

    # 上記の対応言語以外の言語が指定された場合、エラーとするかの設定
    # config.i18n.enforce_available_locales = true

    # デフォルトの言語設定
    config.i18n.default_locale = :ja

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end
