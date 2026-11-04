# SkiRent - Sistema de Gestio ERP (Odoo 16)

## Necessitat del projecte
SkiRent es una empresa ficticia dedicada al alquiler de material d'esquí i taller de reparació. El negoci requereix un sistema de gestió centralitzat que permeta controlar el inventari del material, gestionar els contrats del alquiler desde el mostrador i coordinar els manteniments en eltaller asegurant que els rols dels empleats estiguen separats per seguretat i privacitat.

## Alcanç inicial (Fase L1)
En esta primera fase de desplegament, el projecte abarca:
* Desplegament d'Odoo 16 i PostgreSQL mijançant contenidors en Docker.
* Configuració de volúmens per garantisar la persistència de dades.
* Implementació de rols d'usuari mijançant Segregació de Funcions (Depenent de Mostraor vs Skiman de Taller).
* Integració d'un servidor de correu simulat (MailHog) per a l'interceptació segura de notificacions i presupostos.

## Entorn d'execució
Per a alçar esta infraestructura en un entorn local amb Docker instal·lat executar:
'''bash
docker compose up -d

* El ERP estarà disponible en: http://localhost:8069
* El servidor de correus estarà disponible en: http://localhost:8025
