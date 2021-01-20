class User < ApplicationRecord
    # validatesはModelに記述する
    # バリデーションとはDBに値を保存する際に何か値が抜けていると保存できなくするもの。簡単に言えばフィルターみたいなもの。
    validates :name, presence: true, length: { minimum:3, maximum:50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { minimum:3, maximum:50 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

    has_secure_password

    # Userは行ったことのある都道府県データのCheckを所有する

    

    # has_manyは複数形なのでモデルを複数形の:likes、:prefecturesにする
    

    # remember_token属性はDBには存在しない属性。attr_accessorを使って仮想的に利用できるようにする
    attr_accessor :remember_token

    # before_save :downcase_email # コールバックにメソッドを渡す
    # before_create :create_activation_digest

    # トークン生成用メソッド：Ruby標準ライブラリのSecureRandomモジュールにあるurlsafe_base64メソッドを用いる
    # ランダムなトークンを返す
    def self.new_token # User.new_tokenと同じ意味
        SecureRandom.urlsafe_base64
    end

    # ハッシュ化用メソッド：記憶トークンをハッシュ化して記憶ダイジェストを作成するためにハッシュ化用のメソッドを用意する
    # 与えられた文字列のハッシュ値を返す
    def self.digest(string) # User.digest(string)と同じ意味
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

    # 記憶トークンと記憶ダイジェストを生成するメソッド
    # 上記で作成した2つのメソッドを使って、「・記憶トークンの生成→ユーザーに紐づけ、・記憶ダイジェストの生成→DBに登録」の2つを行うメソッドを作成する
    # 永続的セッションで使用するユーザーをDBに記憶する
    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end

    # 記憶トークンと記憶ダイジェストを比較するメソッドを自作する必要有り
    # パスワード認証では、authenticateメソッドを利用して、受け取ったパスワードとDBのパスワードダイジェストを比較していた
    def authenticated?(remember_token)
        # 比較の前に、記憶ダイジェストの有無を確認
        return false if remember_digest.nil?
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end

    # ログアウト用メソッドの作成
    # ユーザーのログイン情報を破棄する
    def forget
        update_attribute(:remember_digest, nil)
    end


    # 検索
    def self.search(search) #self.はUser.を意味する
        if search
            # 検索とusernameの部分一致を表示
            where(['name LIKE ?', "%#{search}%"])
        else
            all
        end
    end

    private
        # メールアドレスを小文字化するメソッドを定義
        def downcase_email
            self.email = email.downcase
        end

        # 有効化トークンを作成し、作成した有効化トークンをハッシュ化しダイジェストへ保存
        def create_activation_digest
            self.activation_token = User.new_token
            self.activation_digest = User.digest(activation_token)
        end
end
