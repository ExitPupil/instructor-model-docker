FROM python:3.9.16

RUN pip install text2vec==1.1.7 \
    && pip install torch==2.0.0+cpu -f https://download.pytorch.org/whl/torch_stable.html \
    && pip install InstructorEmbedding \
    && pip cache purge

COPY instructor-large-init.py /tmp/instructor-large-init.py
RUN python /tmp/instructor-large-init.py
