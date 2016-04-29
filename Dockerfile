FROM invokr/cgit

# I need to add repo about page

RUN yum install -y python-markdown
RUN yum install -y python-pygments
RUN useradd -u 1001 git

