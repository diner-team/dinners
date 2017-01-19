class User < ActiveRecord::Base

  validates :username, presences: { message: "用户名不能为空" }
  validates :username, uniqueness: { message: "用户名已存在" }
  validates :username, length: { minimun: 4, message: "用户名长度不能超过3位" }
  validates :password, presences: { message: "密码不能为空" }
  validates :password, length: { minimun: 6, message: "密码长度最短为6位" }

end
