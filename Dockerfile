FROM python:3.9.16

RUN pip install torch==2.0.1+cpu -f https://download.pytorch.org/whl/torch_stable.html \
    && pip install -U sentence_transformers \
    && pip install numpy \
    && pip install tqdm \
    && pip install InstructorEmbedding \
    && pip cache purge

COPY instructor-large-init.py /tmp/instructor-large-init.py
RUN python /tmp/instructor-large-init.py
