# TOX

The `[tox]` section defines configurations and settings for Tox itself. In the case below, it will be configured to create three different environments with different Python versions.

```
[tox]
envlist = py27, py35, py36
```

The `[testenv]` section configures the steps necessary for installing test dependencies via the deps variable and running the tests with the commands variable, whatever those tests may be. These dependencies and steps to run tests are repeated for each version defined in `envlist`.

It is possible to create different testenv based on python versions using `[testenv:py27]`

In the `envlist` it is possible to use a special syntax in order to create a test matrix.

```
envlist = py{27, 35, 36, 37, 38}-release_{1.1, 2.x}
```