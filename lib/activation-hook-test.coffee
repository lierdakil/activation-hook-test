module.exports = ActivationHookTest =
  activate: (state) ->
    atom.notifications.addInfo 'activation-hook-test activated!'
    @panel = atom.workspace.addBottomPanel {
      item: @div = document.createElement 'div'
    }
    @div.textContent = 'activation-hook-test is active!'

  deactivate: ->
    atom.notifications.addInfo 'activation-hook-test deactivated!'
    @panel.destroy()
