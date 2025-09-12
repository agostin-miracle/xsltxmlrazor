# xsltxmlrazor
Sistema Dinâmico de Renderização de Conteúdo com XML, XSLT e Razor Pages


# 🧩 Sistema Dinâmico de Renderização com XML, XSLT e Razor Pages

## 📄 Descrição

Este projeto tem como objetivo demonstrar a integração entre dados estruturados em **XML**, transformações visuais e lógicas via **XSLT**, e a camada de apresentação moderna usando **ASP.NET Core Razor Pages**.

A solução permite a renderização dinâmica de conteúdo a partir de fontes XML, aplicando transformações XSLT para gerar HTML personalizado, que é então injetado em páginas Razor de forma flexível e reutilizável.

---

## 🔧 Tecnologias Utilizadas

- **ASP.NET Core Razor Pages** – Criação da interface web e controle de navegação.
- **XML (Extensible Markup Language)** – Armazenamento de dados estruturados (ex: artigos, produtos, menus).
- **XSLT (Extensible Stylesheet Language Transformations)** – Transformação de conteúdo XML em HTML dinâmico.
- **C# (Backend)** – Processamento das transformações e integração com Razor.
- **JavaScript/CSS** – Estilização e interatividade na camada de apresentação.

---

## 📌 Funcionalidades

- Upload e armazenamento de arquivos XML personalizados.
- Escolha e aplicação de diferentes templates XSLT.
- Visualização em tempo real do conteúdo transformado no navegador.
- Composição de páginas Razor com injeção dinâmica de HTML gerado via XSLT.
- Arquitetura modular para reutilização de templates XSLT.

---

## 💡 Caso de Uso Exemplo

Imagine um portal de notícias onde o conteúdo é armazenado em XML. Com diferentes templates XSLT, o mesmo conteúdo pode ser exibido de maneiras variadas (ex: lista de notícias, destaque, resumo ou página de detalhes).

As Razor Pages controlam a renderização do layout e integram o HTML gerado pelas transformações XSLT, sem a necessidade de duplicar lógica ou reescrever código para cada formato de exibição.

---
