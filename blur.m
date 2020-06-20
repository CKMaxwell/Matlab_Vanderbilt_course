function output = blur(img,w)
[y,x] = size(img);
output = uint8([]);
for i = 1:x     %每一橫排像素都選到
    for j =1:y  %每一直排像素都選到
        %以下處理單一元素
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
        %完成一顆元素
    end
end


end