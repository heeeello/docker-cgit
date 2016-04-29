FROM invokr/cgit

# cgit about page is written by markdown
RUN yum install -y python-markdown python-pygments

# My git repo uid is 1001
RUN groupadd -g 1001 git && useradd -g git -u 1001 git

# elsdoer/gitolite's git uid is 103, gid=106
RUN groupadd -g 106 gitolite && useradd -g 106 -u 103 gitolite

