base = cell(3,3);
maxi = [2, 0, 0 ; 1, 0, 0 ; 1, 3, 2]

for i = 1:3
  for j = 1:3
  
    base{i,j} = ["./scenar" num2str(i) "/prise" num2str(j) "/"];
  
  endfor
endfor
