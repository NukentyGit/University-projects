clear
close all

r1=readmatrix('class1.csv');                                               % Csv files reading
r2=readmatrix('class2.csv');
r3=readmatrix('class3.csv');

l1=size(r1,1);
l2=size(r2,1);
l3=size(r3,1);

sm1=mean(r1);
sm2=mean(r2);
sm3=mean(r3);
sm=mean([r1;r2;r3]);                                                       % Arrange all matrices in columns (create a column vector) and calculate the mean of this vector

figure
plot3(r1(:,1), r1(:,2), r1(:,3), 'ok')                                     % Three-dimensional representation (plot3) of r1 (on the x-axis, it places all the rows of the first column...
                                                                           % ... (:,1) of the matrix r1; on the y-axis, it places all the rows of the second column (:,2) of r1; and on...
                                                                           % ... the z-axis, it places all the rows of the third column (:,3) of r1. The points must be black dots (“ok”).
hold on                                                                    % ... Keep the previous graph on which to plot the subsequent graphs
plot3(r2(:,1), r2(:,2), r2(:,3), 'or')
plot3(r3(:,1), r3(:,2), r3(:,3), 'ob')
plot3(sm1(1), sm1(2), sm1(3), 'pk', 'markerfacecolor', 'k',...
    'markerSize', 12)                                                      % Same thing, this time for the sample mean, with a black star-shaped point (pk), filled (makerfacecolour)...
                                                                           % ... with black colour (k) and size 12.
plot3(sm2(1), sm2(2), sm2(3), 'pr', 'markerfacecolor', 'r',...
    'markerSize', 12)
plot3(sm3(1), sm3(2), sm3(3), 'pb', 'markerfacecolor', 'b',...
    'markerSize', 12)
plot3(sm(1), sm(2), sm(3), 'pg', 'markerFaceColor', 'g', 'markerSize', 12)
grid on

sb=l1*(sm1'-sm')*(sm1-sm)+l2*(sm2'-sm')*(sm2-sm)+l3*(sm3'-sm')*(sm3-sm);   % Between-class scatter matrix
sw=(r1-repmat(sm1,l1,1))'*(r1-repmat(sm1,l1,1))+...                        % Within-class scatter matrix (since r1 is a matrix with l1 rows and 3 columns, I use the repmat function,...
    (r2-repmat(sm2,l2,1))'*(r2-repmat(sm2,l2,1))+...                       % ... which replicates its argument, sm1, a certain number of times in rows, l1, and columns, 1, because sm1...
    (r3-repmat(sm3,l3,1))'*(r3-repmat(sm3,l3,1));                          % ... is a row vector that already has 3 columns). The final result is a matrix with dimensions l1X3.

[v,d]=eig(sb,sw);                                                          % Calculation of the eigenvalues of the matrix SW^(-1)*SB. We could use the eig function directly, but we...
                                                                           % ... would first have to find the inverse of SW and put SW^(-1)*SB in its argument. To avoid this, we use...
                                                                           % ... the principles of linear algebra, which assure us that SW^(-1)*SB*x=lambda*x, where lambda represents...
                                                                           % ... the eigenvalues. Now, multiplying SW on both sides, we obtain SW*SW^(-1)*SB*x=SW*lambda*x, or...
                                                                           % ... SB*x=lambda*SW*x. v is the matrix with the eigenvectors arranged in columns, while d is a diagonal...
                                                                           % ... matrix with the eigenvalues arranged on the main diagonal.
lambda=diag(d);                                                            % We extract the eigenvalues from matrix d.
[ll,ind]=sort(lambda,'descend');                                           % Reorder the lambda vector in descending order, returning ind, the index of the previous component. Knowing...
                                                                           % ... the old index is important because we must remember to also exchange the corresponding eigenvector.

w1=v(:, ind(1));
w2=v(:, ind(2));
t1=r1*[w1,w2];                                                             % Calculation of projections
t2=r2*[w1,w2];
t3=r3*[w1,w2];

figure
plot(t1(:,1), t1(:,2),'ok')
hold on
plot(t2(:,1), t2(:,2),'or')
plot(t3(:,1), t3(:,2),'ob')