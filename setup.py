from setuptools import setup,find_packages
packages = find_packages()
package_dir = {'thriftfile.%s' % i : i.replace('.','/') for i in packages}
package_dir['thriftfile'] = '.'
setup(
    name="thriftfile",
    version="0.0.1",
    author="yushijun",
    author_email="yushijun110@126.com",
    description="thrift files",
    url="https://github.com/JoveYu/thriftfile",
    packages = list(package_dir.keys()),
    package_dir = package_dir,
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
    install_requires=[
        'thrift>=0.13.0'
    ],
)
