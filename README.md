# 📄 Desmembra PDF

Um utilitário simples e eficiente em Progress/OpenEdge para extrair páginas específicas de arquivos PDF usando PDFtk.

## 🎯 Funcionalidades

- ✅ Extração de páginas específicas de arquivos PDF
- ✅ Interface simples via código Progress/OpenEdge
- ✅ Utiliza PDFtk para processamento confiável
- ✅ Configuração flexível de caminhos e páginas

## 📋 Pré-requisitos

- **Progress/OpenEdge** (versão 10.x ou superior)
- **PDFtk** (incluído na pasta `bin/`)
- **Windows** (testado no Windows 10/11)

## 🚀 Instalação

1. Clone este repositório:
```bash
git clone https://github.com/seu-usuario/desmembra-pdf.git
cd desmembra-pdf
```

2. O PDFtk já está incluído na pasta `bin/`. Caso precise de uma versão mais recente, baixe em [PDFtk Server](https://www.pdflabs.com/tools/pdftk-server/).

## 💻 Como Usar

### Configuração Básica

1. Abra o arquivo `desmembra-pdf.p` em seu ambiente Progress/OpenEdge
2. Configure as variáveis no início do código:

```progress
/* Configurações principais */
iPagina = 4. /* página que você deseja extrair */

ASSIGN 
    cPdfInput  = "C:\caminho\para\seu\arquivo_origem.pdf"
    cPdfOutput = "C:\caminho\para\seu\arquivo_destino.pdf"
    cPdftk    = "C:\caminho\para\bin\pdftk.exe".
```

### Exemplo de Uso

```progress
/* Extrair página 5 de um relatório */
iPagina = 5.

ASSIGN 
    cPdfInput  = "C:\Documentos\relatorio_completo.pdf"
    cPdfOutput = "C:\Documentos\relatorio_pagina5.pdf"
    cPdftk    = "C:\desmembra-pdf\bin\pdftk.exe".
```

3. Execute o programa no Progress/OpenEdge

## 📁 Estrutura do Projeto

```
desmembra-pdf/
├── bin/
│   ├── pdftk.exe          # Executável do PDFtk
│   └── libiconv2.dll      # Biblioteca necessária
├── desmembra-pdf.p        # Código principal
└── README.md              # Este arquivo
```

## ⚙️ Personalização

### Extrair Múltiplas Páginas

Para extrair um intervalo de páginas, modifique a variável `iPagina`:

```progress
/* Para páginas 1-3 */
STRING(iPagina) = "1-3"

/* Para páginas específicas */
STRING(iPagina) = "1 3 5"
```

### Configurações Avançadas

O PDFtk suporta várias operações. Você pode modificar o comando para:
- Mesclar PDFs
- Dividir PDFs
- Adicionar senhas
- Remover senhas

## 🔧 Solução de Problemas

### Erro: "Arquivo não encontrado"
- Verifique se os caminhos estão corretos
- Use barras invertidas (`\`) nos caminhos do Windows
- Certifique-se de que o arquivo PDF existe

### Erro: "PDFtk não executado"
- Verifique se o `pdftk.exe` está na pasta `bin/`
- Confirme se a `libiconv2.dll` está presente
- Execute como administrador se necessário

## 🤝 Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 🙏 Agradecimentos

- [PDFtk](https://www.pdflabs.com/tools/pdftk-server/) - Ferramenta poderosa para manipulação de PDFs
- Comunidade Progress/OpenEdge

## 📞 Suporte

Se você encontrar algum problema ou tiver sugestões, por favor:
- Abra uma [issue](https://github.com/seu-usuario/desmembra-pdf/issues)
- Entre em contato via email

---

⭐ Se este projeto foi útil para você, considere dar uma estrela!