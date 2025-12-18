# Biblioteca Scikit-Learn

A Scikit-Learn dispõe de ferramentas voltadas para a análise preditiva de dados, ou seja, com o objetivo de gerar previsões de resultados futuros, com base na análise dos dados passados.

Ela foi construída sobre os pacotes NumPy, SciPy e matplotilib.

## Funcionalidade

Podemos utilizar a biblioteca Scikit-Learn para criarmos um modelo de regressão linear, onde vamos prever o comportamento de uma variável com base em outras variáveis que a afetam, por exemplo.

Ao invés de termos que criar toda a codificação que faria isso, o Scikit-Learn nos fornece as ferramentas necessárias, como o módulo `make_regression`. Dessa forma, só precisamos passar o número de exemplares que queremos na regressão, o número de características e o ruído que vai agir sobre essa regressão.

```python
from sklearn.datasets import make_regression
x, y = make_regression(n_samples=100, n_features=1, noise=10)
```

Dessa forma, todo o trabalho será feito pela máquina, que nos dará um resultado que poderia facilmente ser plotado em um gráfico para visualização simples dos dados.

Agora com a máquina tendo criado todos os nossos elementos, podemos passar para o aprendizado de máquina criar uma regressão linear, que vai indicar qual a reta que representa a média dos dados. [Neste exercício](/exercícios/scikit_learn/scikit_learn.ipynb "Scikit-Learn") nós temos um exemplo completo desta funcionalidade.

**[Voltar para o índice](/README.md)**