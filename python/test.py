def read_and_calculate():
    try:
        P, V = map(int, input().split())
        Q, M = map(int, input().split())
        calculation(P, V, Q, M)
    except ValueError:
        return

def calculation(P,V,Q,M):
    vasya_start = P - V
    vasya_end = P + V
    masha_start = Q - M
    masha_end = Q + M
    overlap_whitout=(vasya_end-vasya_start+1)+(masha_end-masha_start+1)

    start=max(vasya_start,masha_start) 
    end=min(masha_end,vasya_end)
    overlap=max(0,end-start+1)
    total=overlap_whitout-overlap
    print(total)
read_and_calculate()
    
