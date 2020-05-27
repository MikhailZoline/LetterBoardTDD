
## Example of test-driven development.

This is a simple example how we can integrate a class implementation with the test process.
For each method of a class, there must be at least one function that tests that method.

The test class is named by adding the word ***test*** either at the beginning or at the end of the name of the class of which we are testing. The test method is named in accordance with the method that is tested by adding the word ***test***.
The test method must ensure that the outputs of the tested method are consistent with the predetermined inputs.
This paradigm has its pros and cons.
The main advantage is that once the test method is implemented, it can be used again and again for free. 
This is very useful for tests launched automatically during the stages of continuous integration. 
These tests can be launched by the script and the positive results will guarantee the integrity of the code, while the negative results will interrupt the process of integration by warning the interested parties that some tests are failed.
A disadvantage is that sometimes it takes more time to implement the test method than the method tested itself, so the development process is slowed down by a factor of two or so.
Another drawback is that we cannot test the network calls due to the varying nature of the response time, also due to the potential of overloading of backend structures. 
The network calls problem could be circumvent with the system of recorded responses to calls and then proxifying the pre-recorded responses at the time of test. However the implementation of the record-proxy system also takes considerable effort.
