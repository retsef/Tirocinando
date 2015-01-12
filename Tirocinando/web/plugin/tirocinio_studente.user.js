// ==UserScript==
// @name           Tirocinio Studente - Esse3
// @description    Aggiunge il campo "Tirocinio" in Esse3
// @include        https://unimol.esse3.cineca.it/*
// @copyright      Roberto Scinocca
// @grant          none
// @version        0.1.7b
// ==/UserScript==

//Variabili varie
//Link Tirocinio
var linkTirocinio = 'http://localhost:8080/Tirocinando/Profilo';
// 0- positivo, 1- in corso; 2- negativo
var imgEsito = [
  'images/stato_esito_a.gif',
  'images/stato_esito_v.gif',
  'images/stato_esito_r.gif'
];
//Voci Tabella
var row = [
  'Tirocinio',
  'non disponibile',
  'visualizza'
];

//Voce "Tirocinio" nel menu sidebar
var menuNode = document.getElementById('menu-tutti').getElementsByTagName('ul')[0];
if (menuNode!==null)
{
    // create the link
    var link = document.createElement('a');
    link.setAttribute('href', linkTirocinio);
    link.appendChild(document.createTextNode('Tirocinio'));

    // create the list element
    var li = document.createElement('li');

    // add link to the proper location
    li.appendChild(link);
    //menuNode.appendChild(li);
    menuNode.insertBefore(li, menuNode.childNodes[5]);
}

//Tabella Tirocinio
var tableNode = document.getElementById('gu-homepagestudente-tablePanelControl').getElementsByTagName('tbody')[0];
if (tableNode!==null)
{
    var tr = document.createElement('tr');
    for (var i = 0; i < 3; i++) {
        var td = document.createElement('td');
        td.setAttribute('scope', 'row');
        td.setAttribute('title', '');
        td.setAttribute('class', 'portlet-table-body');
        if(i==1){
          var imgStatus = document.createElement('img');
          imgStatus.setAttribute('src', imgEsito[2]);
          td.appendChild(imgStatus);
          td.appendChild(document.createTextNode(' '+row[i]));
        }else if(i==2){
          var link = document.createElement('a');
          link.setAttribute('href', linkTirocinio);
          link.appendChild(document.createTextNode('visualizza'));
          td.appendChild(link);
        }else
          td.appendChild(document.createTextNode(row[i]));

        tr.appendChild(td);
    }
    tableNode.appendChild(tr);
}
