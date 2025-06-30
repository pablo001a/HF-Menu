require("iuplua")

local titulo = iup.label{title="HZ XIT", font="Arial, 20", alignment="ACENTER"}
local botao = iup.button{title="Clique aqui"}

local vbox = iup.vbox{
  titulo,
  iup.label{title=""},
  botao,
  margin="10x10",
  gap="10"
}

local dlg = iup.dialog{
  vbox;
  title="HZ XIT",
  size="QUARTERxQUARTER"
}

-- Função para capturar teclas
function dlg:k_any(c)
  if c == 348 then
    dlg:hide() -- Fecha a janela
    return iup.CLOSE
  end
  return iup.DEFAULT
end

dlg:showxy(iup.CENTER, iup.CENTER)

if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
end
