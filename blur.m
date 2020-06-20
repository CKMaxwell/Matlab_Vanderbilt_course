function output = blur(img,w)
[y,x] = size(img);
output = uint8([]);
for i = 1:x     %�C�@��ƹ��������
    for j =1:y  %�C�@���ƹ��������
        %�H�U�B�z��@����
        temp = [];
        count = 1;
        for ii = i-w:i+w
            for jj = j-w:j+w
                if ii >0 && jj>0 && ii<=x && jj<=y
                    temp(count) =  img(jj,ii);
                    count = count+1;            
                end
            end
        end
        output(j,i) = uint8(mean(temp));        
        %�����@������
    end
end


end