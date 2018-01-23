Karp requires an authentication system that tells which lexicon
a user may read and edit.
If you don't care so much about security, you can use this dummy system.
Notice that this will let anyone both read and write to your databases, so don't use this outside test environments.
It is a wsgi application and you can run it as part of Karp's Docker setup or on its own with [`virtualenv`](https://virtualenv.pypa.io/en/stable/)


To install it:

* `git clone https://github.com/spraakbanken/karp-docker.git`

To run it with Docker:

* See the manual on the [github page](https://github.com/spraakbanken/karp-docker/tree/dev)

To run it without Docker:

* `cd dummyauth`
* Set up a virtual environment: `virtualenv venv`
* Activate the environment `source venv/bin/activate`
* Install packages `pip install -r requirments.txt`
* Make sure these lines in index.wsgi is not commented:

   ```
   activate_this = os.path.join(project_dir, 'venv/bin/activate_this.py')
   execfile(activate_this, dict(__file__=activate_this))
   ```
* Run it: `python wsauth.py`
* The service will now run on port 5000.
* Try it: `curl localhost:5000`
