## tydy workspaces by moving certain window classess
## in specific workspaces and anything else in the last one

BROWSERS_WS=1
EDITORS_WS=2
DATABASE_WS=3
HTTP_WS=4
K8S_WS=5
TERMINAL_WS=6
EVERYTHING_ELSE_WS=7

## everything else
i3-msg "[class=.*] move container to workspace $EVERYTHING_ELSE_WS" &> /dev/null

## Browsers
i3-msg "[class=Chromium] move container to workspace $BROWSERS_WS" &> /dev/null 
i3-msg "[class=Firefox] move container to workspace $BROWSERS_WS" &> /dev/null 

## Text editors
i3-msg "[class=Subl] move container to workspace $EDITORS_WS" &> /dev/null
i3-msg "[class=code-oss] move container to workspace $EDITORS_WS" &> /dev/null

## Database clients
i3-msg "[class=beekeeper-studio] move container to workspace $DATABASE_WS" &> /dev/null
i3-msg "[class=DBeaver] move container to workspace $DATABASE_WS" &> /dev/null

## HTTP clients
i3-msg "[class=Insomnia] move container to workspace $HTTP_WS" &> /dev/null
i3-msg "[class=Postman] move container to workspace $HTTP_WS" &> /dev/null

## K8s clients
i3-msg "[class=Lens] move container to workspace $K8S_WS" &> /dev/null 

## Terminals
i3-msg "[class=Terminator] move container to workspace $TERMINAL_WS" &> /dev/null
i3-msg "[class=konsole] move container to workspace $TERMINAL_WS" &> /dev/null