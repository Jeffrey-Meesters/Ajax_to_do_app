json.extract! todo, :id, :title, :completed, :created_at, :updated_at
json.url todo_url(todo, format: :json)

<!-- app/views/todos/_todo.html.erb -->
<tr class="todo <%= todo.completed? ? "success" : "" %>" data-id="<%= todo.id %>">
  <td>
    <input name="todo[<%= todo.id %>]" id="todo-<%= todo.id %>" type="checkbox" value="1" <%= todo.completed? ? 'checked="checked"' : '' %>>
  </td>
  <td>
    <label for="todo-<%= todo.id %>"><%= todo.title %></label>
  </td>
</tr>
