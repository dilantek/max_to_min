## Name
  max_to_min - aggregate function that returns a text formatted like: max -> min

## Installation 
  with root user, 
  ```bash
  git clone https://github.com/dilantek/max_to_min.git 
  cd max_to_min 
  make install 
  ```

  Then connect to database with superuser and execute:
   ```bash
   create extension max_to_min;
   ```
## Test
  It can be tested for which data types the function works or whether the function works.
  With postgres superuser, go to the directory where the function was downloaded in the previous step and execute:
  ```bash
  make installcheck  
  ```
  
