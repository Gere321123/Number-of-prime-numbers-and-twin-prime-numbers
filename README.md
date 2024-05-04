# Number Of Primes And Twin Primes

I was 21 years old when I proved it and wrote it down! Basically, it's a shortcut if you like to determine the number of prime numbers or twin primes.

(I can prove this)

----------------------------------------------------------------------------------------------------------------------
© My method :D

```latex
$   P_s(n) = \prod_{k=1}^n \max(p_k-s,1) $
\begin{align}
\begin{split}
    \Pi(n) = \{ N :  & p_n < N < P_0(n) \land \\
    & \forall p (p \in \mathbb{P} \land p \mid N \land p > p_n  \land N \not\in \mathbb{P}) \land \\
    & \forall p (p \in \mathbb{P} \land p \le p_n \land p \nmid N)  \}
    \end{split}
    \end{align}
\begin{equation}\label{eq:numberofprimenumber}
    \pi(p_n\#) =  P_1(n) - \lvert  \Pi(n) \rvert + n
\end{equation}
\begin{equation}
    \begin{split}
        \Pi_2(n)=\{
        N \colon
        & N \in (p_n; p_n\#) \land \\
        %
        & \forall p \bigl( ((p \mid N+2 \land N+2 \not\in \mathbb{P}) \vee (p \mid N \land N \not\in \mathbb{P}))
        \land (p \in \mathbb{P} \land p > p_n ) \bigr) \land \\
        %
        & \forall p \bigl( p \in \mathbb{P} \land p \le p_n
        \land p \nmid N \land p \nmid N + 2 \bigr)\\
        \}
    \end{split}
    \begin{equation}\label{eq:numberoftwinprimenumberforreal}
    \pi_2(p_n\#) =  P_2(n) - \lvert \Pi_2(n) \rvert + \pi_2(p_n)
\end{equation}
