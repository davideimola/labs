Network Security
================

## Table of Contents
- [Introduzione](#introduzione)
    - [Apertura di una porta](#apertura-di-una-porta)
    - [ARP Spoofing](#arp-spoofing)
- [Firewall](#firewall)
    - [ARP Spoofing mitigation](#arp-spoofing-mitigation)

## Introduzione
### Apertura di una porta
Per aprire una porta si utilizza il comando `nc`, nel nostro caso andremo ad aprire la porta `9876` come esempio

    nc -lvp 9876

Nel caso si voglia aprire una connessione `UDP` invece di `TCP` il comando necessita del flag u

    nc -lvpu 9876

### ARP Spoofing
Prima di eseguire l'ARP spoofing il client che subisce l'attacco presenta questa tabella ARP

    MacBook-Pro-di-Davide-4:~ davideimola$ arp -a
    bbox10 (192.168.10.100) at 6a:26:c4:0:64:a on en4 ifscope [ethernet]
    fvlin10 (192.168.10.254) at 6a:26:c4:0:fe:a on en4 ifscope [ethernet]
  
per modificare la tabella ARP l'attaccante esegue questo comando sui due IP che si vogliono attaccare

    ettercap -i eth0 --text --quiet --mitm arp /192.168.10.254// /192.168.10.2//

così possiamo vedere la tabella cambiare ed effettivamente `fvlin10` che è quello che deve essere attaccato prende il MAC di `bbox10`

    MacBook-Pro-di-Davide-4:~ davideimola$ arp -a
    bbox10 (192.168.10.100) at 6a:26:c4:0:64:a on en4 ifscope [ethernet]
    fvlin10 (192.168.10.254) at 6a:26:c4:0:64:a on en4 ifscope [ethernet]
    
Effettuando l'ARP spoofing possiamo osservare tutto il traffico di rete. 
Se per esempio ci colleghiamo tramite `ftp` dalla macchina sotto attacco e mandiamo i nostri dati, possiamo facilmente osservarli in chiaro facendo un `Follow TCP Stream` su Wireshark, dal quale otteniamo il risultato seguente

    USER davideimola
    PASS polpetta


## Firewall

Per impostare le regole di Firewall si usa il comando `iptables`. Abbiamo le varie catene `INPUT`, `OUTPUT` e `FORWARD` e le azioni che possono essere `ACCEPT` e `DROP`.

Per impostare il firewall in default deny sull'input si usa il comando

    iptables -P INPUT DROP
    
Se vogliamo ottenere la vista delle tabelle in totale o filtrate utilizziamo il comando

    iptables -nL [ INPUT | OUTPUT | FORWARD ]
    
Se vogliamo abilitare una determinata connessione in input da un determinato ip (xxx.xxx.xxx.xxx)

    iptables -A INPUT -j ACCEPT -s xxx.xxx.xxx.xxx
 
Se vogliamo ripulire le tabelle il comando da eseguire è il seguente

    iptables -F [ INPUT | OUTPUT | FORWARD ]
    
### ARP Spoofing mitigation

Per effettuare la mitigazione in caso di attacco ARP Spoofing dobbiamo focalizzarci sulla `FORWARD` chain e sull'indirizzo `IP` (yyy.yyy.yyy.yyy) e `MAC` (xx:xx:xx:xx:xx:xx) della workstation.

    iptables -A FORWARD -s yyy.yyy.yyy.yyy -m mac ! --mac-source xx:xx:xx:xx:xx:xx -j DROP
    
### Esercizio 3 PDF risoluzione

Per risolvere l'esercizio 3 bisogna per prima cosa impostare l'input in DROP tranne per la nostra macchina con ip (xxx.xxx.xxx.xxx):

    iptables -A INPUT -s xxx.xxx.xxx.xxx -j ACCEPT
    iptables -P INPUT DROP
    
Successivamente andiamo a impostare la regola in base ai vari stati della connessione

    iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

La tabella che otteniamo è la seguente

    root@fwlin10:~# iptables -nvL INPUT
    Chain INPUT (policy DROP 0 packets, 0 bytes)
    pkts bytes target     prot opt in     out     source               destination         
    758  56373 ACCEPT     all  --  *      *       192.168.10.0/24      0.0.0.0/0           
      2    168 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            state RELATED,ESTABLISHED
      
Si esegue lo stesso su `FORWARD`
  
    iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT
      
Se facciamo partire un `ping target` dalla nostra macchina e impostiamo il default deny del firewall con
  
    iptables -P FORWARD DROP
    
possiamo notare che il ping continuerà perché la connessione era già stata stabilita.
