" Preview hexadecimal colors used by PlantUML skinparam declarations.
syntax match plantumlSkinparamLine /\c^\s*\%(skinparam\|backgroundcolor\|bordercolor\|fontcolor\|fontname\|arrowcolor\|shadowing\).*/ contains=plantumlSkinparamColor
syntax match plantumlSkinparamColor /#\x\{3}\%($\|\x\{3}\)\>/ contained
call css_color#init('hex', 'none', 'plantumlColor,plantumlSkinparamColor')
