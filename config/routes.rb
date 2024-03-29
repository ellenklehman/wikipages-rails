Rails.application.routes.draw do
 Wikipages::Application.routes.draw do
  match('/', {:via => :get, :to => 'contacts#index'})
  match('contacts', {:via => :get, :to => 'contacts#index'})
  match('contacts', {:via => :post, :to => 'contacts#create'})
  match('contacts/new', {:via => :get, :to => 'contacts#new'})
  match('contacts/:id', {:via => :get, :to => 'contacts#show'})
  match('contacts/:id', {:via => [:patch, :put], :to => 'contacts#update'})
  match('contacts/:id', {:via => :delete, :to => 'contacts#destroy'})
  match('contacts/:id/edit', {:via => :get, :to => 'contacts#edit'})
  match('contacts/:contact_id/phones/new', {:via => :get, :to => 'phones#new'})
  match('contacts/:contact_id/phones', {:via => :post, :to => 'phones#create'})
  match('contacts/:contact_id/phones/:id', {:via => :delete, :to => 'phones#destroy'})
end

end
