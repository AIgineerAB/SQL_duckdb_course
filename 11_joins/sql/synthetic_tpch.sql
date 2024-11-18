-- we will generate synthetic customer data, but needs to install first
INSTALL tpch;
LOAD tpch;

-- now generate, the higher the number of sf (scale factor) the more rows
-- will be generated
CALL dbgen(sf=.1); 

