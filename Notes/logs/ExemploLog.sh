#!/bin/bash

LOG="$HOME/Documentos/shell/Notes/logs/log_interno.out"

echo "$(date) - Iniciando o Script..." >> $LOG
echo "Exemplo tee ..." | tee -a $LOG
echo "$(date) - Fim do Script..." >> $LOG


