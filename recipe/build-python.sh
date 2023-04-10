cd python
sed -i.bak "s/version='2.0.0'/version='${PKG_VERSION}'/g" setup.py
python -m pip install . -vv
