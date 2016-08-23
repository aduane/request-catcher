App.cable.subscriptions.create { channel: "RequestChannel" },
  received: (data) ->
    @appendLine(data)
 
  appendLine: (data) ->
    html = @createLine(data)
    $("tbody").append(html)
 
  createLine: (data) ->
    """
    <tr>
      <td>#{data["method"]}</td>
      <td>#{data["path"]}</td>
      <td>#{data["params"]}</td>
    </tr>
    """
