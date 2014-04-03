Auth::Engine.routes.draw do
  devise_for :admins, class_name: "Administration::Admin", module: :devise

  devise_for :users, class_name: "Member::User", module: :devise
end
