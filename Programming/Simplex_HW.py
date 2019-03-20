# solves LPs of the form
# max cx
# sub to: Ax <= b
       
from sympy import *
       
# requires a feasible basis B for the LP
def solve(A, b, c, B, verbose):
    m, n = A.rows, A.cols
    itr = 0
       
    # find vertex corresponding to feasible basis B
    AB = A.extract(B, range(n))
    bB = b.extract(B, [0])
    x = AB.LUsolve(bB)
       
    ABi = AB.inv()
       
    while True:
        itr += 1
        if verbose: 
            print(str(itr) + " " + str(x.T))
       
        # compute lambda
        l = (c.T * ABi).T
       
        # check for optimality
        if all(e >= 0 for e in l):
            return x, itr, B, ____
       
        # find leaving index B[r]
        r = min(i for i in range(l.rows) if l[i] < 0)
       
        # compute direction to move in
        d = -ABi[:, r]
       
        # determine the set K
        K = [i for i in range(m) if (A[i,:]*d)[0] > 0]
       
        if not K:
            return 'unbounded', itr, B, ____
       
        # find entering index e
        e, v = None, None
        for k in K:
            w = (b[k] - (A[k, :] * x)[0]) / ((A[k, :] * d)[0])
            if v is None or w < v:
                v = w
                e = k
       
        # update basis
        B[r] = e
        AB[r, :] = A[e, :]
        bB[r, :] = b[e, :]
       
        # update inverse
        ABi = AB.inv()
       
        # move to the new vertex
        x = x + v*d

# Simplex Phase I: Find an intial feasible basis
def find_feas_bas(A, b):
    n = A.shape[1]
    m = A.shape[0]

    # Transform the system Ax<=b

    # append columns
    for i in range(____):
        col_i = zeros(m,1)
        col_i[____] = ____
        A = A.col_insert(____, col_i)

    # append rows
    for j in range(____):
        row_j = zeros(1,____)
        row_j[____] = ____
        A = A.row_insert(____, row_j)
        
        # expand the vector b as well
        b = b.row_insert(____, Matrix([0]))

    # form the objective function:
    c = zeros(____,1)
    for j in range(____):
        c[____] = ____ # Bear in mind that the method "solve(...)" solves a maximization problem.

    # form a trivial feasible basis:
    B = range(____, ____)
    for j in range(____):
        if b[j] < 0:
            B.append(____)
        else:
            B.append(____)
    B.sort()

    _, _, B, _ = solve(A, b, c, B, verbose=True)
    B.sort()

    return B[:n]    

# Simplex Phase II       
def simplex(A, b, c, B, verbose=False):
    x, itr, B, zB = solve(A, b, c, B, verbose)
    
    # Transform zB into an m-dimensional vector z which is an optimal dual solution
    m = A.shape[0]
    z = zeros(m,1)    
    for i in range(len(B)):
        z[B[____]] = zB[i]
    B.sort()
       
    if x == 'infeasible':
        print('LP is infeasible')
    elif x == 'unbounded':
        print('LP is unbounded')
    else:
        print('Vertex ' + str(x.T) + ' is optimal')
        print('Optimal value is ' + str((c.T * x)[0]))
        print('Found after ' + str(itr) + ' simplex iterations in Phase II')
        print('Optimal basis is ' + str(B))
        print('The optimal dual solution is: ' + str(z))
       
if __name__ == '__main__':

    c = Matrix([2, 4, 3])
    A = Matrix([[2,-3,-1],
                [-1,6,4],
                [-1,3,2],
                [-1, 0, 0],
                [0, -1, 0],
                [0, 0, -1]])
    b = Matrix([-1,5,2,0,0,0])

    # Simplex phase I
    print "Simplex Phase I"
    B = find_feas_bas(A, b)

    # Simplex phase II
    print "\nSimplex Phase II"
    simplex(A, b, c, B, verbose=True)  	
