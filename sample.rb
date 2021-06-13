<h1>マイナイン作成</h1>

<div class="row">
  <%= form_with(model: @bestnine, local: true) do |f| %>
  <%= render 'shared/error_messages', model: f.object %>
    <table border="1">
      <caption><%= f.text_field :title, placeholder: "タイトル" %></caption>
      <tr>
        <th>打順</th><th>ポジション</th><th>名前</th>
      </tr>
      <tr>
        <td>1</td>
        <td><%= f.select :one_position, BestNine::POSITION, {include_blank: true}, {class: 'form-control', required: true }  %></td>
        <td><%= f.collection_select :one_name, @players_fielder, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>

        <div class="form-group">
          <div>
            <%= f.label :player_name, 'ルーム検索' %>
            <%= f.text_field :player_name, class: 'form-control' %>
            <%= f.submit "検索", class: "btn btn-primary" %>
          </div>
        </div>

        <% @player_name.each do |player| %>
          <%= player.player_name %>
        <% end %>

      </tr>
      <tr>
        <td>2</td>
        <td><%= f.select :two_position, BestNine::POSITION, {include_blank: true}, {class: 'form-control', required: true }  %></td>
        <td><%= f.collection_select :two_name, @players_fielder, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr>
      <tr>
        <td>3</td>
        <td><%= f.select :three_position, BestNine::POSITION, {include_blank: true}, {class: 'form-control', required: true }  %></td>
        <td><%#= f.collection_select :three_name, @players_fielder, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr>
      <tr>
        <td>4</td>
        <td><%= f.select :four_position, BestNine::POSITION, {include_blank: true}, {class: 'form-control', required: true }  %></td>
        <td><%#= f.collection_select :four_name, @players_fielder, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr> 
      <tr>
        <td>5</td>
        <td><%= f.select :five_position, BestNine::POSITION, {include_blank: true}, {class: 'form-control', required: true }  %></td>
        <td><%#= f.collection_select :five_name, @players_fielder, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr> 
      <tr>
        <td>6</td>
        <td><%= f.select :six_position, BestNine::POSITION, {include_blank: true}, {class: 'form-control', required: true }  %></td>
        <td><%= f.collection_select :six_name, @players_fielder, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr> 
      <tr>
        <td>7</td>
        <td><%= f.select :seven_position, BestNine::POSITION, {include_blank: true}, {class: 'form-control', required: true }  %></td>
        <td><%= f.collection_select :seven_name, @players_fielder, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr> 
      <tr>
        <td>8</td>
        <td><%= f.select :eight_position, BestNine::POSITION, {include_blank: true}, {class: 'form-control', required: true }  %></td>
        <td><%= f.collection_select :eight_name, @players_fielder, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr> 
      <tr>
        <td>9</td>
        <td><%= f.select :nine_position, BestNine::POSITION, {include_blank: true}, {class: 'form-control', required: true }  %></td>
        <td><%= f.collection_select :nine_name, @players_fielder, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr> 
      <tr>
        <td>先</td>
        <td>投</td>
        <td><%= f.collection_select :starting, @players_pitcher, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr>
      <tr>
        <td>中</td>
        <td>投</td>
        <td><%= f.collection_select :relief, @players_pitcher, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr>
      <tr>
        <td>抑</td>
        <td>投</td>
        <td><%= f.collection_select :closer, @players_pitcher, :id, :player_name, { :include_blank => true }, class: 'form-control' %></td>
      </tr>
    </table>

    <%= f.hidden_field :user_id, :value => current_user.id %>
  
    <%= f.submit "確認", class: "btn btn-primary" %>
  <% end %>

</div>






=========================================================





<div>
<% @player_name.each do |player| %>
  <p>
  <%= player.player_name %>
  </p>
<% end %>
</div>