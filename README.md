# CSEL
Cyberpatriot Scoring Engine: Linux

This project is my attempt at a simple scoring engine for Linux images used for Cyberpatriot training. It's written in bash and is very basic. When invoked, it runs a few simple checks, tallies a score and returns it to the terminal. All changes to the scoring engine must be done by editing the bash csel file directly. 

So far, it can award points for:
- Creating "good" users
- Deleting "bad" users
- Changing passwords on accounts
- Starting "good" services
- Stopping/killing "bad" services
- Deleting unauthorized files
- Running updates (kinda)
- Answering a forensic question

It can be run with or without "Silent Misses" depending upon how hard you want to make it on your students. Actual CP images are always silent misses, but if you are just starting out it helps to have the misses turned on. This will tell your student what category is missing points, but it won't tell them exactly what is missing.
