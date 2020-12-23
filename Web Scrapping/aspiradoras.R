library(rvest)
url<-"https://www.amazon.es/s?k=Aspiradoras&__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&ref=nb_sb_noss_2"
selector<-"#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(3) > div > span > div > div > div > div > span > a"
pagina<-read_html(url)
nodo<-html_node(pagina,selector)
nodo_text<-html_text(nodo)
nodo_links<-html_attr(nodo,"href")
nodo_links

urlcompleta <- paste0("www.amazon.es", nodo_links)
urlcompleta

library(stringr)
pag <- "s?k=Aspiradoras&page=2&__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&qid=1608589177&ref=sr_pg_2"
lista_paginas <- c(1:10)
pag <- str_replace(pag, "page=2", paste0("page=", lista_paginas))
pag <- str_replace(pag, "sr_pg_2", paste0("sr_pg_", lista_paginas))
pag

paginas <- paste0("https://www.amazon.es/", pag)
paginas

dameLinksPagina <- function(url){
  selector<-"div > span > div > div > div.a-section.a-spacing-none.a-spacing-top-small > h2 > a"
  pagina<-read_html(url)
  nodo<-html_nodes(pagina,selector)
  nodo_text<-html_text(nodo)
  nodo_links<-html_attr(nodo,"href")
  nodo_links  
}

paginas[3]

test <- dameLinksPagina(paginas[3])
test

linksAsp <- sapply(paginas, dameLinksPagina)
class(linksAsp)
dim(linksAsp)

vlink <- as.vector(linksAsp)
length(vlink)

vlinkAspiradora <- paste0("https://www.amazon.es/", vlink)
vlinkAspiradora
