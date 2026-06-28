
const express = require('express');
const { graphqlHTTP } = require('express-graphql');
const { buildSchema } = require('graphql');

const schema = buildSchema(`
  type Query {
    hello: String
  }
  type Mutation {
    getFlag(secret: String): String
  }
`);
const root = {
  hello: () => 'Welcome to the GraphQL API!',
  getFlag: (args) => {
    if (args.secret === 'admin123') return 'DCSC{w3b_gr4phql_1ntr0sp3ct10n}';
    return 'Wrong secret';
  }
};

const app = express();
app.use('/graphql', graphqlHTTP({
  schema: schema,
  rootValue: root,
  graphiql: true,
}));
app.get('/', (req,res) => res.redirect('/graphql'));
app.listen(9000, '0.0.0.0');
