---
header-includes:
  \usepackage{pf2}
---
# Topology

## Topological Spaces

### Topologies

#### Definition: Topology

A *topology* on a set $X$ is a set $\mathcal{T} \subseteq \mathcal{P} X$ such that:
* $\emptyset \in \mathcal{T}$
* $X \in \mathcal{T}$
* for all $\mathcal{A} \subseteq \mathcal{T}$, we have $\bigcup \mathcal{A} \in \mathcal{T}$;
* for all $U, V \in \mathcal{T}$ we have $U \cap V \in \mathcal{T}$

A *topological space* $X$ consists of a set $X$ and a topology $\mathcal{T}$ on $X$. We call the elements of $X$ *points* and the elements of $\mathcal{T}$ the *open* sets in $X$.

#### Definition: Discrete Topology

For any set $X$, we have $\mathcal{P} X$ is a topology on $X$, called the *discrete* topology on $X$.

#### Definition: Indiscrete Topology

For any set $X$, we have $\{ \emptyset, X \}$ is a topology on $X$, called the *indiscrete* topology.

#### Definition: Finite Complement Topology

For any set $X$, the *finite complement* topology on $X$ is $\{ U \subseteq X : X \setminus U \text{ is finite} \}$.

#### Definition: Countable Complement topology

For any set $X$, the *countable complement topology* on $X$ is $\{ U \subseteq X : X \setminus U \text{ is countable} \}$.

#### Definition: Finer, Coarser

Let $\mathcal{T}$ and $\mathcal{T}'$ be topologies on the same set $X$. Then $\mathcal{T}$ is *finer* than $\mathcal{T}'$, and $\mathcal{T}'$ is *coarser* than $\mathcal{T}$, iff $\mathcal{T}' \subseteq \mathcal{T}$. We say $\mathcal{T}$ is *strictly* finer than $\mathcal{T}'$, and $\mathcal{T}'$ is *strictly* coarser than $\mathcal{T}$, iff $\mathcal{T}' \subset \mathcal{T}$.

We say $\mathcal{T}$ and $\mathcal{T}'$ are *comparable* iff one is finer than the other.

### Bases for topologies

#### Definition: Basis
Let $X$ be a topological space. A *basis* for the topology on $X$ is a set $\mathcal{B} \subseteq \mathcal{P} X$ such that:
* every element of $\mathcal{B}$ is open
* for every open set $U$ and every point $x \in U$, there exists $B \in \mathcal{B}$ such that $x \in B \subseteq U$.

#### Proposition
Let $X$ be a set and $\mathcal{B} \subseteq \mathcal{P} X$. Then $\mathcal{B}$ is a basis for a topology $\mathcal{T}$ on $X$ if and only if:

1. $\bigcup \mathcal{B} = X$
1. for all $B_1, B_2 \in \mathcal{B}$ and $x \in B_1 \cap B_2$, there exists $B_3 \in \mathcal{B}$ such that $x \in B_3 \subseteq B_1 \cap B_2$.

In this case, $\mathcal{T}$ is unique and is the set of all unions of subsets of $\mathcal{B}$.

##### Proof

###### If $\mathcal{B}$ is a basis for $\mathcal{T}$ then conditions 1 and 2 hold.

Suppose $\mathcal{B}$ is a basis for $\mathcal{T}$.

Let $x \in X$. We have $X$ is open and $x \in X$, so there exists $B \in \mathcal{B}$ such that $x \in B \subseteq X$. Thus, $\bigcup \mathcal{B} = X$.


1. If conditions 1 and 2 hold then $\mathcal{B}$ is a basis for the set of all unions of subsets of $\mathcal{B}$.
