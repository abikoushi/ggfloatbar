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

p3 <- ggplot(sleep, aes(x=ID, y=extra, colour=group, fill=group))+
  geom_floatbar(alpha=0.5)+
  geom_float()
print(p3)
ggsave("./example/sleep3.png",p3)

o1 <- ggplot(Orange,aes(x = age, y = circumference)) +
  geom_floatbar(aes(fill = Tree), alpha=0.8)+
  geom_line(aes(color = Tree))
print(o1)
ggsave("./example/orange1.png",o1)
