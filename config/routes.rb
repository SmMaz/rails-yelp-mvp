Rails.application.routes.draw do
  # Ziyaretçilerin yapabileceği eylemler:
  # 1. Tüm restoranları listele (index)
  # 2. Yeni restoran ekleme formunu gör (new)
  # 3. Yeni restoranı kaydet (create)
  # 4. Restoran detayını ve yorumlarını gör (show)

  resources :restaurants, only: [ :index, :show, :new, :create ] do
    # Yorumlar restoranlara bağlı olduğu için iç içe (nested) yazıyoruz
    resources :reviews, only: [ :create ]
  end
end
Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    # :new rotasını buraya ekliyoruz
    resources :reviews, only: [ :new, :create ]
  end
end
