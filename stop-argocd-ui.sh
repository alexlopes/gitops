#!/bin/bash

pids=$(lsof -ti tcp:8080); if [ -n "$pids" ]; then echo "Killing $pids"; kill $pids; else echo "Nenhum processo escutando na porta 8080"; fi