% counter = 1;
% 
% for i = 1:length(A)
%     
%     % Logical values --- isnan? ismissing?
%     Anan = ismissing(A(i));
%     Bnan = isnan(B(i));
%     %Cnan = ismissing(C(i));
%     Cnan = isnan(C(i));
%     Dnan = isnan(D(i));
%     Enan = ismissing(E(i));
%     Fnan = isnan(F(i));
%     
%     if ((Anan==1) && (Bnan==1) && (Cnan==1) && (Dnan==1) && (Enan==1)&&(Fnan==1) )
%         
%         % Do nothing
%         
%     else
%         %Varnew(counter) = Var(i);
%         Anew(counter) = A(i);
%         Bnew(counter) = B(i);
%         Cnew(counter) = C(i);
%         Dnew(counter) = D(i);
%         Enew(counter) = E(i);
%         Fnew(counter) = F(i);
%         
%         counter = counter + 1;
%         
%     end
%     
% end
