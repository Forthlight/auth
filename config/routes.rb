Auth::Engine.routes.draw do
  devise_for :admins, class_name: "Administration::Admin", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, module: :devise

  devise_for :users, class_name: "Member::User", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, module: :devise
end
