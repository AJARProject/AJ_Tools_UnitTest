# Contributing
Hi, nice to see you there.

I'm glad if you can contribute to make this project better. Your help is essential to make this component to be alive and prosper in the time.

Contributions to this project are [released](https://help.github.com/articles/github-terms-of-service/#6-contributions-under-repository-license) to the public under the [project's open source license](LICENSE).

### Dependencies

You must run the component with 4D v17 R6 to be able to contribute because the project mode is only available in BETA in v17 R6.

### Pull Request Process
To contribute to the project, you must fork the repository and work on your local copy.

Here are the common steps to follow before you can forward your pull request :

1. Open the .4DB file with 4D v17 R6.
2. Make your modifications and tests.
3. Once you are happy with the modifications, go to the menu "File > Export > Structure to project"
4. Commit your code changes as well as every file inside the .4dbase package. (With a nice and detailed description of what you have done and why)
5. Push to your repository.
6. Propose a pull request with your modifications.

**For your tests, it is important that you build your component using the native 4D dialog and not the "AJ_Tools_UT_buildComponent" method. I will take care after accepting a fork to update the version number correctly and to generate a new build.**

#### Please do not commit the builded component but only the files inside the .4dbase package folder.