
# Checklist de Testes Automatizados para Aprovação de Merge Request.
#### Descrição do Merge Request:
<type>(<scope>): <subject>
<BLANK  LINE>
<body>

# Checklist:
## 1. Qualidade dos Testes Criados
- [ ] **Cobertura Adequada:** Os testes automatizados cobrem os cenários principais da funcionalidade sendo alterada?;
- [ ] **Testes Relevantes:** Foram criados testes para cenários positivos, negativos e alternativos?;
- [ ] **Nomeclatura Clara:** Os testes têm nomes descritivos que indicam claramente o comportamento ou funcionalidade testada?;
- [ ] **Uso de Keywords Reutilizáveis:** Sempre que possível, foram usadas *keywords* reutilizáveis para evitar duplicação de código?;
- [ ] **Parametrização:** Os testes foram parametrizados para aumentar a flexibilidade e evitar duplicação de código (quando aplicável)?.

## 2. Execução Local
- [ ] **Execução Local Bem-Sucedida:** Todos os testes foram executados localmente e passaram sem falhas?;
- [ ] **Sem Testes Instáveis (Flaky Tests):** Nenhum teste falhou de forma intermitente ou por problemas de instabilidade?;
- [ ] **Testes Independentes:** Cada teste pode ser executado isoladamente, sem dependências de outros testes ou execução em sequência?.

## 3. Manutenção e Legibilidade
- [ ] **Clareza e Organização:** Os testes são fáceis de entender e estão bem organizados, seguindo a estrutura do projeto?;
- [ ] **Comentários e Documentação:** Onde necessário, os testes incluem comentários claros que explicam a lógica e o propósito do teste?;
- [ ] **Código Limpo:** Não há código obsoleto ou comentários desnecessários nos testes?.

## 4. Integração com a Funcionalidade
- [ ] **Testes de Regressão:** Os testes de regressão foram executados para garantir que funcionalidades existentes não foram afetadas?;
- [ ] **Impacto em Funcionalidades Relacionadas:** As mudanças foram testadas em conjunto com funcionalidades dependentes ou que podem ser impactadas pela MR?;

## 5. Aprovações de Revisão
- [ ] **Revisão de Código:** O código de teste foi revisado por pelo menos um membro da equipe, garantindo boas práticas?;
- [ ] **Sem *Breaking Changes*:** A MR foi revisada para garantir que não introduz quebras ou erros críticos em outros sistemas/testes?.
- [ ] **Solicitação de MR**: Foi utilizada uma branch com nomenclatura seguindo os padrões definidos no processo?.

## 6. Execução na Pipeline de CI/CD
- [ ] **Execução Automática na Pipeline:** A pipeline de CI/CD executou todos os testes automatizados com sucesso?;
- [ ] **Falhas na Pipeline Analisadas:** Em caso de falha, os motivos foram analisados, e o problema foi corrigido?;
- [ ] **Relatórios de Testes Gerados:** A pipeline gerou relatórios e logs adequados, permitindo fácil análise de possíveis problemas?.

## 7. Práticas de Teste Automatizado
- [ ] **Testes Rápidos e Eficientes:** Os testes são rápidos e não aumentam significativamente o tempo total de execução da pipeline.
- [ ] **Verificação de Confiabilidade:** O resultado dos testes é confiável e repetível; não depende de variações ambientais ou de dados externos.

## 8. Evidências e Logs
- [ ] **Relatório de Execução Completo:** Um relatório detalhado da execução de testes foi anexado à MR ou fornecido no pipeline de CI/CD?.