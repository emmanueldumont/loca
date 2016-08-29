setBase;

s
p

for i = 0:maxi(s,p)
  j = i+1;
  file = [base{s,p} "idk2_" num2str(i) ".txt";]
  data = load(file);

  subplot (3, maxi(s,p)+1, i+1);
  plot(data(:,1), data(:,2));
  subTitle = ["X" num2str(i)];
  title(subTitle);

  subplot (3, maxi(s,p)+1, i+maxi(s,p)+2);
  plot(data(:,1), data(:,3));
  subTitle = ["Y" num2str(i)];
  title(subTitle);

  subplot (3, maxi(s,p)+1, i+(2*maxi(s,p))+3);
  plot(data(:,1), data(:,4));
  subTitle = ["Z" num2str(i)];
  title(subTitle);
endfor
