# Mesa_datagen: Use Mesa (Agent-based modeling) for simulation-based synthetic data generation

Mesa_datagen is an experiment project for simulation-based synthetic data generation.
It's developed based on [Mesa](https://github.com/projectmesa/mesa) simulation framework in combination with Python [Faker](https://github.com/joke2k/faker) library.

Initial target are:
- [ ] Generate data indefinitely for real-time data streaming projects.
- [ ] Simulate real-world scenarios using Agent-based modeling approach instead of simply generating data from some data schema, directly into database or message queues.
- [ ] On-the-fly control data generation process through specified parameters of the simulation underneath, without restarting the whole process.

## Samples data generation processes
### 1. Dell DVD Store
Data source: Dell DVD Store sample PostgreSQL database

> The Dell DVD Store is an open source simulation of an online ecommerce site with implementations in Microsoft SQL Server, Oracle, MySQL and PostgreSQL along with driver programs and web applications. Customers can login, browse DVDs, browse reviews of DVDs, create new reviews, rate reviews, become premium members, and purchase DVDs. Everything needed to create, load, and stress this online store is included in the DVD Store project.
