#!/bin/bash

KEY_BINDING_DIR="${HOME}/Library/KeyBindings"
DEFAULT_DICT=${KEY_BINDING_DIR}/DefaultkeyBinding.dict
if [ ! -d ${KEY_BINDING_DIR} ]; then
  mkdir ${KEY_BINDING_DIR}
fi

if [ -f ${DEFAULT_DICT} ]; then
  cp ${DEFAULT_DICT} ${DEFAULT_DICT}.bak
fi

cat <<EOF >${DEFAULT_DICT}
{
  "₩" = ("insertText:", "\`");
}
EOF