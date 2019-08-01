# ansible-roles-mongodb
ansible版本：2.8

这是一个基于ansible 自动构建mongodb的的roles

使用之前请先将mongo.yml放到roles目录的外面

templates中的mongod.sh，是配置副本集的脚本，其中的ip，需要根据生产环境的需求，进行手动更改

一切ready之后，手动执行：ansible-playbook mongo.yml

这一步为止，mongodb已经算安装完成。下一步需要执行：ansible mongodb-primary -m shell -a "/data/mongodb/etc/mongod.sh"

本次代码中配置的hosts为：testservers： 3台测试虚拟机（2个secondery、1个primary）
                      mongo-primary：指定首次构建时的primary主机
