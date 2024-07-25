data<-c(20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30)
bins<-6
bin_indices<-cut(data,bins)
print(bin_indices)
mean_smooth<-tapply(data,bin_indices,mean)
print(mean_smooth)