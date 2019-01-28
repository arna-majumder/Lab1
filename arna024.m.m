clc; clear all; close all;

%%
% Example for Eigen values and Eigen Vector:

A=magic(3)
[V,D]=eig(A);
disp('Eigen Value is')
disp(D) % This statement will display the answer after the above statement.
disp('Eigen Vector is')
disp(V)

%%
% Row and Column seletion:

A=magic(4)

x1=A(:,[2 3]) % Selection of all values in the second and third columns of matrix 'A'.
x2=A([1 4],[1 4]) % Selection of values in the first & fourth rows and first & fourth columns of matrix 'A'.
x3=A([1 4],:) % Selection of all values in the first and fourth rows of matrix 'A'.
x4=A(:,[1 4]) % Selection of all the values in the first and fourth columns of matrix 'A'.
x5=A(:,end) % The function 'end' can be used to select the last row or the last column as per the requirements. Here it is used to select the last column of matrix 'A'.

% Sum, Mean and Standard Deviation of matrix:

S=sum(A,'all') % The function 'sum' is used to find the sum of all the elements present in matrix 'A'.
M=mean(A,'all') % Similarly to find the mean of all the elements we use the function 'mean'.
SD=std2(A) % To find the standard deviation of matrix 'A', we have used the function 'std2'.

%%
% Creating both Sine as well as Cosine waveforms and showing them in the
% same figure window:

t=0:0.001:2*pi; % Declaration of time interval.
x=sin(t); 
y=cos(t);

figure;

plot(t,x,'LineWidth',1.5) % The function 'LineWidth' is used to adjust the width of the waveform.
hold on % This statement ensures that both the Sine as well as the Cosine waveforms are on the same figure window. 
plot(t,y,'LineWidth',3)

title('Sine and Cosine plot','FontSize',16,'FontWeight','bold')
legend('Sine Wave','Cosine Wave')
xlabel('Time','FontSize',14,'FontWeight','bold')
ylabel('Amplitude','FontSize',14,'FontWeight','bold')
