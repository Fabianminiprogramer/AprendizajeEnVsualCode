-- Códigos de escape ANSI para diferentes colores
local colors = {
    "\27[31m", -- Rojo
    "\27[33m", -- Amarillo
    "\27[32m", -- Verde
    "\27[36m", -- Cian
    "\27[34m", -- Azul
    "\27[35m", -- Magenta
    "\27[0m"   -- Resetear color
}

-- Texto que se va a imprimir
local text = "Hola Mundo"

-- Imprimir cada letra con un color diferente
for i = 1, #text do
    local colorIndex = ((i - 1) % #colors) + 1  -- Ciclar entre los colores
    io.write(colors[colorIndex] .. text:sub(i, i))
end

-- Resetear color al final
io.write("\27[0m\n")
