#awk 'BEGIN {print "User  Sys  %CPU  Elapsed  AvgShared  AvgUnshared  AvgStack  AvgTotal  MaxRes  AvgRes  MajorPF  MinorPF  VolCont  InvolCont  Swap  FileSysIn  FileSysOut  SocketMgsSent  SocketMgsRecv  SignalDeli  PageSize  ExitStat\n"} {ORS = " "} {FS = " "} NR>=2{printf("%-7s",$NF)} NR%23==0{printf("\n"); next} ' output.txt



#awk '
#BEGIN {ORS=" "}{FS=" "}
#{for(i=1;i<=NF;i++)
#    {if(NR%23==0){
#        print("\n");
#        next
#     }else
#        printf("%-7s",$NF);
#    }
#}' output.txt



awk 'BEGIN {print "User  Sys  %CPU  Elapsed  AvgShared  AvgUnshared  AvgStack  AvgTotal  MaxRes  AvgRes  MajorPF  MinorPF  VolCont  InvolCont  Swap  FileSysIn  FileSysOut  SocketMgsSent  SocketMgsRecv  SignalDeli  PageSize  ExitStat\n"} {ORS = " "} {FS = " "} NR>=1 && NR%23!=1{printf("%-8s",$NF)} NR%23==0{printf("\n"); next} ' output.txt
