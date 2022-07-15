library(ggfloatbar)
p1 <- ggplot(sleep, aes(x=ID, y=extra, colour=group))+
  geom_float()
print(p1)
ggsave("./example/sleep1.png",p1)

p2 <- ggplot(sleep, aes(x=ID, y=extra, colour=group))+
  geom_floatbar(alpha=0.5)+
  geom_float()
print(p2)
ggsave("./example/sleep2.png",p2)

