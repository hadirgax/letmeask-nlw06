# LetMeAsk app

The app was developed during the NLW#06 offered by the RocketSeat team.

## Development

The app was developed using React running in a Docker container.

```bash
yarn create-react-app letmeask --template typescript

yarn add firebase
```

Set the firebase data as local environment variables creating a `.env.local` file.

To apply styles use plane CSS or SASS `yarn add node-sass@^5.0.0`

To navigate between the different pages use the React Router Dom `yarn add react-router-dom` and the types with development dependence `yarn add @types/react-router-dom -D`

To manage conditional class names use the `yarn add classnames` package.

To deploy the app in a host, use the Firebase host by installing:

```bash
export PATH="$(yarn global bin):$PATH"

yarn global add firebase-tools

firebase login

firebase init
```

As your public directory select `build`

Finally to deploy you must write `yarn build` follow by a `firebase deploy` and that's it.

## Some improves and features

- responsive
- dark and light theme transition
- PWA version
- other options of database like firestore database or supabase
- Styled components
- ESLint and Prettier
- Github repository with a well detailed description
