FROM sameersbn/redmine:3.4.2

COPY assets/runtime/ ${REDMINE_RUNTIME_DIR}/

RUN bash ${REDMINE_RUNTIME_DIR}/process

