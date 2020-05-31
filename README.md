①config/root.rbに以下を追記
root :to => 'home#top'
get 'books' => 'books#index', as: 'books'

②view/_form.html.erb　#1を以下のように変更
<%= form_for(book) do |f| %>
<%= form_for(@book) do |f| %>

③db/migrate 
add title:string

④home_controller add "Home"
class Controller < ApplicationController
class HomeController < ApplicationController

⑤top.html.erb　#3 add routes
<p><%= link_to 'start' %></p>
<p><%= link_to 'start',"/books" %></p>