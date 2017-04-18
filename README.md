# NPM-Vuln-PoC

This directory contains the proof-of-concepts for vulnerabilities discovered in npm pakcages. 

**Warning:** This repo will install vulnerable npm packages and test them to demonstrate the vulnerabitlies. So running this project in a VM (with Linux or Mac OS) is highly recommended.

To reproduce the vulnerabilites, first install the vulnerable packages: 

```
npm install
```

The following vulnerable packages require global install or root privilege:

```
sudo npm install xtalk@0.0.7
sudo npm install nodeload-nmickuli@1.0.3
sudo npm install badjs-sourcemap-server@1.1.11
```

Then, start the PoC testing script:

```
./PoC.sh
```
