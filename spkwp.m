m = input('Masukkan Jumlah Data : ');
n = input('Masukkan Jumlah Kriteria : ');

for i=1:m
    disp('data ke ' + i);
    for j=1:n
        x(i,j) = input('Masukkan isi data dengan kriteria : '); 
    end
end

x = reshape(x,m,n);

for j=1:n
   k(j) = input('Masukkan atribut kriteria : ');
   w(j) = input('Masukkan bobot kriteria : ');
end

[m n] = size(x);
w = w./sum(w);

for j=1:n
    if k(j)==0, w(j)=-1*w(j);
    end
end

for i=1:m
    S(i)=prod(x(i,:).^w);
end

V = S/sum(S);

disp('Hasil Weight Product');
disp(V);

