theory ETCS
  imports Pure
begin

typedecl Set
typedecl Fun
typedecl Judg

judgment Derivable :: "Judg \<Rightarrow> prop"

axiomatization isSet :: "Set \<Rightarrow> Judg"
 and maps :: "[Fun, Set, Set] \<Rightarrow> Judg"
 and eq :: "[Fun, Fun, Set, Set, Set] \<Rightarrow> Judg"
 and comp :: "[Fun, Fun] \<Rightarrow> Fun"
 where compI : "\<lbrakk>maps f A B; maps g B C\<rbrakk> \<Longrightarrow> maps (comp g f) A C"