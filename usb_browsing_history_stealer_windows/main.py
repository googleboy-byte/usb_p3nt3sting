import sys
import browserhistory as bh

dict_obj = bh.get_browserhistory()
bh.write_browserhistory_csv()
sys.exit(1)
