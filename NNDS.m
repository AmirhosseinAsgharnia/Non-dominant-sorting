function Q_value = NNDS(Q_value)

n = size(Q_value,1);
R = zeros(n,1);

B = Q_value(:,1); C = Q_value(:,2); D = 1:n;
i=0;
while i<numel(D)
    i=i+1;
    ind_1 = dominate([B(D(i)),C(D(i))],[B(D),C(D)]);
    D(ind_1==1) = []; 
    ind_2 = dominate([B(D),C(D)],[B(D(i)),C(D(i))]);
    if sum(ind_2)~=0
        D(i)=[];
        i=i-1;
    end
end

Q_value=Q_value(D,:);