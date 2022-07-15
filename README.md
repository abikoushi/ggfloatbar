# ggfloatbar

## Instalation

Install the latest version of this package from Github by pasting in the following.

~~~R
devtools::install_github("abikoushi/ggfloatbar")
~~~

## Usage

~~~R
library(ggfloatbar)
ggplot(sleep, aes(x=ID, y=extra, colour=group))+
  geom_float()
~~~

![Example 1](image/sleep1.png)

~~~R
ggplot(sleep, aes(x=ID, y=extra, colour=group))+
  geom_floatbar()+
  geom_float()
~~~

![Example 2](image/sleep2.png)
