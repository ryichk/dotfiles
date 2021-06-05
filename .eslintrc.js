module.exports = {
  root: true,
  env: {
    es6: true,
    node: true,
  },
  globals: {},
  parser: '@typescript-eslint/parser',
  parserOptions: {
    sourceType: 'module',
    project: ''
  },
  plugins: [
    '@typescript-eslint',
  ],
  extends: [
    'eslint:recommended',
    'plugin:@typescript-eslint/eslint-recommended',
    'plugin:@typescript-eslint/recommended',
    'plugin:@typescript-eslint/recommended-requiring-type-checking',
    'prettier',
  ],
  rules: {}
}