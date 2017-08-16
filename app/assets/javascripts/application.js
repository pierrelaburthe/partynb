//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require underscore
//= require gmaps/google
<%= javascript_include_tag "https://maps.google.com/maps/api/js?libraries=places&key=#{ENV['GOOGLE_API_BROWSER_KEY']}" %>
