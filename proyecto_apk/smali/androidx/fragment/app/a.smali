.class public abstract Landroidx/fragment/app/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Ljava/util/ArrayList;

.field public E:Ljava/util/ArrayList;

.field public F:Ljava/util/ArrayList;

.field public G:Lkg;

.field public final H:Lc7;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Lv5;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Lzf;

.field public g:Landroidx/activity/b;

.field public final h:Lbg;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:Lko;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public n:I

.field public o:Lwf;

.field public p:Ls8;

.field public q:Lvf;

.field public r:Lvf;

.field public final s:Lcg;

.field public final t:Lhd;

.field public u:Lv1;

.field public v:Lv1;

.field public w:Lv1;

.field public x:Ljava/util/ArrayDeque;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lv5;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1}, Lv5;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 18
    .line 19
    new-instance v0, Lzf;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lzf;-><init>(Landroidx/fragment/app/a;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/fragment/app/a;->f:Lzf;

    .line 25
    .line 26
    new-instance v0, Lbg;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lbg;-><init>(Landroidx/fragment/app/a;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/fragment/app/a;->h:Lbg;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroidx/fragment/app/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Landroidx/fragment/app/a;->j:Ljava/util/Map;

    .line 50
    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Landroidx/fragment/app/a;->k:Ljava/util/Map;

    .line 61
    .line 62
    new-instance v0, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    new-instance v0, Lhd;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lhd;-><init>(Landroidx/fragment/app/a;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lko;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lko;-><init>(Landroidx/fragment/app/a;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Landroidx/fragment/app/a;->l:Lko;

    .line 81
    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Landroidx/fragment/app/a;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    .line 89
    const/4 v0, -0x1

    .line 90
    iput v0, p0, Landroidx/fragment/app/a;->n:I

    .line 91
    .line 92
    new-instance v0, Lcg;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcg;-><init>(Landroidx/fragment/app/a;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Landroidx/fragment/app/a;->s:Lcg;

    .line 98
    .line 99
    new-instance v0, Lhd;

    .line 100
    .line 101
    const/16 v1, 0xe

    .line 102
    .line 103
    invoke-direct {v0, v1}, Lhd;-><init>(I)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Landroidx/fragment/app/a;->t:Lhd;

    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayDeque;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Landroidx/fragment/app/a;->x:Ljava/util/ArrayDeque;

    .line 114
    .line 115
    new-instance v0, Lc7;

    .line 116
    .line 117
    const/16 v1, 0x8

    .line 118
    .line 119
    invoke-direct {v0, v1, p0}, Lc7;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Landroidx/fragment/app/a;->H:Lc7;

    .line 123
    .line 124
    return-void
.end method

.method public static E(I)Z
    .locals 1

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static F(Lvf;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lvf;->u:Lig;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lv5;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/fragment/app/b;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, v1, Landroidx/fragment/app/b;->c:Lvf;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const/4 v1, 0x0

    .line 58
    move v2, v1

    .line 59
    move v3, v2

    .line 60
    :cond_2
    if-ge v3, p0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    check-cast v4, Lvf;

    .line 69
    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    invoke-static {v4}, Landroidx/fragment/app/a;->F(Lvf;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :cond_3
    if-eqz v2, :cond_2

    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    return p0

    .line 80
    :cond_4
    return v1
.end method

.method public static G(Lvf;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lvf;->C:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lvf;->s:Landroidx/fragment/app/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lvf;->v:Lvf;

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/fragment/app/a;->G(Lvf;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_2
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static H(Lvf;)Z
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lvf;->s:Landroidx/fragment/app/a;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/fragment/app/a;->r:Lvf;

    .line 7
    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget-object p0, v0, Landroidx/fragment/app/a;->q:Lvf;

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/fragment/app/a;->H(Lvf;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public static W(Lvf;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "show: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lvf;->z:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lvf;->z:Z

    .line 33
    .line 34
    iget-boolean v0, p0, Lvf;->J:Z

    .line 35
    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Lvf;->J:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Lvf;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p1, Lvf;->E:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v0, p1, Lvf;->x:I

    .line 7
    .line 8
    if-gtz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ls8;

    .line 12
    .line 13
    invoke-virtual {v0}, Ls8;->y()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/fragment/app/a;->p:Ls8;

    .line 20
    .line 21
    iget p1, p1, Lvf;->x:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ls8;->x(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    check-cast p0, Landroid/view/ViewGroup;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final B()Lcg;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->q:Lvf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, v0, Lvf;->s:Landroidx/fragment/app/a;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/a;->B()Lcg;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a;->s:Lcg;

    .line 13
    .line 14
    return-object p0
.end method

.method public final C()Lhd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->q:Lvf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, v0, Lvf;->s:Landroidx/fragment/app/a;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/a;->C()Lhd;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a;->t:Lhd;

    .line 13
    .line 14
    return-object p0
.end method

.method public final D(Lvf;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "hide: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p1, Lvf;->z:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Lvf;->z:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Lvf;->J:Z

    .line 35
    .line 36
    xor-int/2addr v0, v1

    .line 37
    iput-boolean v0, p1, Lvf;->J:Z

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->V(Lvf;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final I(IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "No activity"

    .line 10
    .line 11
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 16
    .line 17
    iget p2, p0, Landroidx/fragment/app/a;->n:I

    .line 18
    .line 19
    if-ne p1, p2, :cond_2

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_2
    iput p1, p0, Landroidx/fragment/app/a;->n:I

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 26
    .line 27
    iget-object p2, p1, Lv5;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p2, Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v0, p1, Lv5;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    move v3, v2

    .line 41
    :cond_3
    :goto_1
    if-ge v3, v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    check-cast v4, Lvf;

    .line 50
    .line 51
    iget-object v4, v4, Lvf;->e:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroidx/fragment/app/b;

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {v4}, Landroidx/fragment/app/b;->k()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroidx/fragment/app/b;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/b;->k()V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Landroidx/fragment/app/b;->c:Lvf;

    .line 91
    .line 92
    iget-boolean v3, v1, Lvf;->l:Z

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    iget v1, v1, Lvf;->r:I

    .line 97
    .line 98
    if-lez v1, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    invoke-virtual {p1, v0}, Lv5;->B(Landroidx/fragment/app/b;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/a;->X()V

    .line 106
    .line 107
    .line 108
    iget-boolean p1, p0, Landroidx/fragment/app/a;->y:Z

    .line 109
    .line 110
    if-eqz p1, :cond_8

    .line 111
    .line 112
    iget-object p1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 113
    .line 114
    if-eqz p1, :cond_8

    .line 115
    .line 116
    iget p2, p0, Landroidx/fragment/app/a;->n:I

    .line 117
    .line 118
    const/4 v0, 0x7

    .line 119
    if-ne p2, v0, :cond_8

    .line 120
    .line 121
    iget-object p1, p1, Lwf;->n:Lz2;

    .line 122
    .line 123
    invoke-virtual {p1}, Lz2;->k()Lj3;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lj3;->b()V

    .line 128
    .line 129
    .line 130
    iput-boolean v2, p0, Landroidx/fragment/app/a;->y:Z

    .line 131
    .line 132
    :cond_8
    :goto_3
    return-void
.end method

.method public final J()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/a;->z:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/a;->A:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 12
    .line 13
    iput-boolean v0, v1, Lkg;->h:Z

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 16
    .line 17
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lvf;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Lvf;->u:Lig;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/fragment/app/a;->J()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public final K()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->w(Z)Z

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/a;->v(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/fragment/app/a;->r:Lvf;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lvf;->g()Landroidx/fragment/app/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroidx/fragment/app/a;->K()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/a;->D:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/fragment/app/a;->E:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    invoke-virtual {p0, v2, v3, v4, v0}, Landroidx/fragment/app/a;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iput-boolean v1, p0, Landroidx/fragment/app/a;->b:Z

    .line 36
    .line 37
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/a;->D:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/fragment/app/a;->E:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/a;->N(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/a;->d()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/a;->d()V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/a;->Y()V

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Landroidx/fragment/app/a;->C:Z

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iput-boolean v0, p0, Landroidx/fragment/app/a;->C:Z

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/a;->X()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 66
    .line 67
    iget-object p0, p0, Lv5;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    return v2
.end method

.method public final L(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-gez p3, :cond_2

    .line 8
    .line 9
    and-int/lit8 v2, p4, 0x1

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    sub-int/2addr p3, v1

    .line 18
    if-gez p3, :cond_1

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    if-ltz p3, :cond_6

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sub-int/2addr v0, v1

    .line 43
    :goto_0
    if-ltz v0, :cond_4

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Le7;

    .line 52
    .line 53
    if-ltz p3, :cond_3

    .line 54
    .line 55
    iget v2, v2, Le7;->s:I

    .line 56
    .line 57
    if-ne p3, v2, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    :goto_1
    if-gez v0, :cond_5

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    and-int/2addr p4, v1

    .line 67
    if-eqz p4, :cond_7

    .line 68
    .line 69
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 70
    .line 71
    if-ltz v0, :cond_7

    .line 72
    .line 73
    iget-object p4, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    check-cast p4, Le7;

    .line 80
    .line 81
    if-ltz p3, :cond_7

    .line 82
    .line 83
    iget p4, p4, Le7;->s:I

    .line 84
    .line 85
    if-ne p3, p4, :cond_7

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    const/4 v0, -0x1

    .line 89
    :cond_7
    iget-object p3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    sub-int/2addr p3, v1

    .line 96
    if-ne v0, p3, :cond_8

    .line 97
    .line 98
    :goto_3
    const/4 p0, 0x0

    .line 99
    return p0

    .line 100
    :cond_8
    iget-object p3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    sub-int/2addr p3, v1

    .line 107
    :goto_4
    if-le p3, v0, :cond_9

    .line 108
    .line 109
    iget-object p4, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    add-int/lit8 p3, p3, -0x1

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_9
    return v1
.end method

.method public final M(Lvf;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "FragmentManager"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "remove: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " nesting="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v2, p1, Lvf;->r:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget v0, p1, Lvf;->r:I

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x1

    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    move v0, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v0, v1

    .line 46
    :goto_0
    iget-boolean v3, p1, Lvf;->A:Z

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    return-void

    .line 54
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 55
    .line 56
    iget-object v3, v0, Lv5;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Ljava/util/ArrayList;

    .line 59
    .line 60
    monitor-enter v3

    .line 61
    :try_start_0
    iget-object v0, v0, Lv5;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iput-boolean v1, p1, Lvf;->k:Z

    .line 70
    .line 71
    invoke-static {p1}, Landroidx/fragment/app/a;->F(Lvf;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iput-boolean v2, p0, Landroidx/fragment/app/a;->y:Z

    .line 78
    .line 79
    :cond_4
    iput-boolean v2, p1, Lvf;->l:Z

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->V(Lvf;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final N(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Le7;

    .line 31
    .line 32
    iget-boolean v3, v3, Le7;->p:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    if-eq v2, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/a;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Le7;

    .line 74
    .line 75
    iget-boolean v3, v3, Le7;->p:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/a;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 86
    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/a;->x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_2
    return-void

    .line 96
    :cond_6
    const-string p0, "Internal error with the back stack records"

    .line 97
    .line 98
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final O(Landroid/os/Parcelable;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object/from16 v1, p1

    .line 7
    .line 8
    check-cast v1, Ljg;

    .line 9
    .line 10
    iget-object v2, v1, Ljg;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/a;->c:Lv5;

    .line 16
    .line 17
    iget-object v3, v2, Lv5;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v3, v1, Ljg;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v6, 0x0

    .line 31
    :cond_2
    :goto_1
    iget-object v7, v0, Landroidx/fragment/app/a;->l:Lko;

    .line 32
    .line 33
    const-string v8, "): "

    .line 34
    .line 35
    const/4 v9, 0x2

    .line 36
    const-string v10, "FragmentManager"

    .line 37
    .line 38
    if-ge v6, v4, :cond_6

    .line 39
    .line 40
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    add-int/lit8 v6, v6, 0x1

    .line 45
    .line 46
    check-cast v11, Lng;

    .line 47
    .line 48
    if-eqz v11, :cond_2

    .line 49
    .line 50
    iget-object v12, v0, Landroidx/fragment/app/a;->G:Lkg;

    .line 51
    .line 52
    iget-object v13, v11, Lng;->b:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v12, v12, Lkg;->c:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    check-cast v12, Lvf;

    .line 61
    .line 62
    if-eqz v12, :cond_4

    .line 63
    .line 64
    invoke-static {v9}, Landroidx/fragment/app/a;->E(I)Z

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    if-eqz v13, :cond_3

    .line 69
    .line 70
    new-instance v13, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v14, "restoreSaveState: re-attaching retained "

    .line 73
    .line 74
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    invoke-static {v10, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_3
    new-instance v13, Landroidx/fragment/app/b;

    .line 88
    .line 89
    invoke-direct {v13, v7, v2, v12, v11}, Landroidx/fragment/app/b;-><init>(Lko;Lv5;Lvf;Lng;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    new-instance v12, Landroidx/fragment/app/b;

    .line 94
    .line 95
    iget-object v7, v0, Landroidx/fragment/app/a;->o:Lwf;

    .line 96
    .line 97
    iget-object v7, v7, Lwf;->k:Lz2;

    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    invoke-virtual {v0}, Landroidx/fragment/app/a;->B()Lcg;

    .line 104
    .line 105
    .line 106
    move-result-object v16

    .line 107
    iget-object v13, v0, Landroidx/fragment/app/a;->l:Lko;

    .line 108
    .line 109
    iget-object v14, v0, Landroidx/fragment/app/a;->c:Lv5;

    .line 110
    .line 111
    move-object/from16 v17, v11

    .line 112
    .line 113
    invoke-direct/range {v12 .. v17}, Landroidx/fragment/app/b;-><init>(Lko;Lv5;Ljava/lang/ClassLoader;Lcg;Lng;)V

    .line 114
    .line 115
    .line 116
    move-object v13, v12

    .line 117
    :goto_2
    iget-object v7, v13, Landroidx/fragment/app/b;->c:Lvf;

    .line 118
    .line 119
    iput-object v0, v7, Lvf;->s:Landroidx/fragment/app/a;

    .line 120
    .line 121
    invoke-static {v9}, Landroidx/fragment/app/a;->E(I)Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-eqz v9, :cond_5

    .line 126
    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v11, "restoreSaveState: active ("

    .line 130
    .line 131
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v11, v7, Lvf;->e:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :cond_5
    iget-object v7, v0, Landroidx/fragment/app/a;->o:Lwf;

    .line 153
    .line 154
    iget-object v7, v7, Lwf;->k:Lz2;

    .line 155
    .line 156
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v13, v7}, Landroidx/fragment/app/b;->m(Ljava/lang/ClassLoader;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v13}, Lv5;->A(Landroidx/fragment/app/b;)V

    .line 164
    .line 165
    .line 166
    iget v7, v0, Landroidx/fragment/app/a;->n:I

    .line 167
    .line 168
    iput v7, v13, Landroidx/fragment/app/b;->e:I

    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :cond_6
    iget-object v3, v0, Landroidx/fragment/app/a;->G:Lkg;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    new-instance v4, Ljava/util/ArrayList;

    .line 178
    .line 179
    iget-object v3, v3, Lkg;->c:Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    const/4 v6, 0x0

    .line 193
    :goto_3
    const/4 v11, 0x1

    .line 194
    if-ge v6, v3, :cond_9

    .line 195
    .line 196
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    add-int/lit8 v6, v6, 0x1

    .line 201
    .line 202
    check-cast v12, Lvf;

    .line 203
    .line 204
    iget-object v13, v12, Lvf;->e:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v14, v2, Lv5;->b:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v14, Ljava/util/HashMap;

    .line 209
    .line 210
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    if-eqz v13, :cond_7

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_7
    invoke-static {v9}, Landroidx/fragment/app/a;->E(I)Z

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    if-eqz v13, :cond_8

    .line 222
    .line 223
    new-instance v13, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v14, "Discarding retained Fragment "

    .line 226
    .line 227
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v14, " that was not found in the set of active Fragments "

    .line 234
    .line 235
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v14, v1, Ljg;->a:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    invoke-static {v10, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    :cond_8
    iget-object v13, v0, Landroidx/fragment/app/a;->G:Lkg;

    .line 251
    .line 252
    invoke-virtual {v13, v12}, Lkg;->b(Lvf;)V

    .line 253
    .line 254
    .line 255
    iput-object v0, v12, Lvf;->s:Landroidx/fragment/app/a;

    .line 256
    .line 257
    new-instance v13, Landroidx/fragment/app/b;

    .line 258
    .line 259
    invoke-direct {v13, v7, v2, v12}, Landroidx/fragment/app/b;-><init>(Lko;Lv5;Lvf;)V

    .line 260
    .line 261
    .line 262
    iput v11, v13, Landroidx/fragment/app/b;->e:I

    .line 263
    .line 264
    invoke-virtual {v13}, Landroidx/fragment/app/b;->k()V

    .line 265
    .line 266
    .line 267
    iput-boolean v11, v12, Lvf;->l:Z

    .line 268
    .line 269
    invoke-virtual {v13}, Landroidx/fragment/app/b;->k()V

    .line 270
    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_9
    iget-object v3, v1, Ljg;->b:Ljava/util/ArrayList;

    .line 274
    .line 275
    iget-object v4, v2, Lv5;->c:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v4, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 280
    .line 281
    .line 282
    if-eqz v3, :cond_c

    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    const/4 v6, 0x0

    .line 289
    :goto_4
    if-ge v6, v4, :cond_c

    .line 290
    .line 291
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    add-int/lit8 v6, v6, 0x1

    .line 296
    .line 297
    check-cast v7, Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v2, v7}, Lv5;->l(Ljava/lang/String;)Lvf;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    if-eqz v12, :cond_b

    .line 304
    .line 305
    invoke-static {v9}, Landroidx/fragment/app/a;->E(I)Z

    .line 306
    .line 307
    .line 308
    move-result v13

    .line 309
    if-eqz v13, :cond_a

    .line 310
    .line 311
    new-instance v13, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string v14, "restoreSaveState: added ("

    .line 314
    .line 315
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    :cond_a
    invoke-virtual {v2, v12}, Lv5;->f(Lvf;)V

    .line 335
    .line 336
    .line 337
    goto :goto_4

    .line 338
    :cond_b
    const-string v0, "No instantiated fragment for ("

    .line 339
    .line 340
    const-string v1, ")"

    .line 341
    .line 342
    invoke-static {v0, v7, v1}, Lt20;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v0}, Lc2;->g(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    :cond_c
    iget-object v3, v1, Ljg;->c:[Lf7;

    .line 351
    .line 352
    const/4 v4, 0x0

    .line 353
    if-eqz v3, :cond_12

    .line 354
    .line 355
    new-instance v3, Ljava/util/ArrayList;

    .line 356
    .line 357
    iget-object v6, v1, Ljg;->c:[Lf7;

    .line 358
    .line 359
    array-length v6, v6

    .line 360
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .line 362
    .line 363
    iput-object v3, v0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 364
    .line 365
    const/4 v3, 0x0

    .line 366
    :goto_5
    iget-object v6, v1, Ljg;->c:[Lf7;

    .line 367
    .line 368
    array-length v7, v6

    .line 369
    if-ge v3, v7, :cond_11

    .line 370
    .line 371
    aget-object v6, v6, v3

    .line 372
    .line 373
    iget-object v7, v6, Lf7;->a:[I

    .line 374
    .line 375
    new-instance v12, Le7;

    .line 376
    .line 377
    invoke-direct {v12, v0}, Le7;-><init>(Landroidx/fragment/app/a;)V

    .line 378
    .line 379
    .line 380
    const/4 v13, 0x0

    .line 381
    const/4 v14, 0x0

    .line 382
    :goto_6
    array-length v15, v7

    .line 383
    if-ge v13, v15, :cond_f

    .line 384
    .line 385
    new-instance v15, Log;

    .line 386
    .line 387
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 388
    .line 389
    .line 390
    add-int/lit8 v16, v13, 0x1

    .line 391
    .line 392
    move/from16 p1, v9

    .line 393
    .line 394
    aget v9, v7, v13

    .line 395
    .line 396
    iput v9, v15, Log;->a:I

    .line 397
    .line 398
    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/a;->E(I)Z

    .line 399
    .line 400
    .line 401
    move-result v9

    .line 402
    if-eqz v9, :cond_d

    .line 403
    .line 404
    new-instance v9, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string v5, "Instantiate "

    .line 407
    .line 408
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v5, " op #"

    .line 415
    .line 416
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v5, " base fragment #"

    .line 423
    .line 424
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    aget v5, v7, v16

    .line 428
    .line 429
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    :cond_d
    iget-object v5, v6, Lf7;->b:Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    check-cast v5, Ljava/lang/String;

    .line 446
    .line 447
    if-eqz v5, :cond_e

    .line 448
    .line 449
    invoke-virtual {v2, v5}, Lv5;->l(Ljava/lang/String;)Lvf;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    iput-object v5, v15, Log;->b:Lvf;

    .line 454
    .line 455
    goto :goto_7

    .line 456
    :cond_e
    iput-object v4, v15, Log;->b:Lvf;

    .line 457
    .line 458
    :goto_7
    invoke-static {}, Lmk;->values()[Lmk;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    iget-object v9, v6, Lf7;->c:[I

    .line 463
    .line 464
    aget v9, v9, v14

    .line 465
    .line 466
    aget-object v5, v5, v9

    .line 467
    .line 468
    iput-object v5, v15, Log;->g:Lmk;

    .line 469
    .line 470
    invoke-static {}, Lmk;->values()[Lmk;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    iget-object v9, v6, Lf7;->d:[I

    .line 475
    .line 476
    aget v9, v9, v14

    .line 477
    .line 478
    aget-object v5, v5, v9

    .line 479
    .line 480
    iput-object v5, v15, Log;->h:Lmk;

    .line 481
    .line 482
    add-int/lit8 v5, v13, 0x2

    .line 483
    .line 484
    aget v9, v7, v16

    .line 485
    .line 486
    iput v9, v15, Log;->c:I

    .line 487
    .line 488
    add-int/lit8 v16, v13, 0x3

    .line 489
    .line 490
    aget v5, v7, v5

    .line 491
    .line 492
    iput v5, v15, Log;->d:I

    .line 493
    .line 494
    add-int/lit8 v18, v13, 0x4

    .line 495
    .line 496
    aget v4, v7, v16

    .line 497
    .line 498
    iput v4, v15, Log;->e:I

    .line 499
    .line 500
    add-int/lit8 v13, v13, 0x5

    .line 501
    .line 502
    aget v11, v7, v18

    .line 503
    .line 504
    iput v11, v15, Log;->f:I

    .line 505
    .line 506
    iput v9, v12, Le7;->b:I

    .line 507
    .line 508
    iput v5, v12, Le7;->c:I

    .line 509
    .line 510
    iput v4, v12, Le7;->d:I

    .line 511
    .line 512
    iput v11, v12, Le7;->e:I

    .line 513
    .line 514
    invoke-virtual {v12, v15}, Le7;->b(Log;)V

    .line 515
    .line 516
    .line 517
    add-int/lit8 v14, v14, 0x1

    .line 518
    .line 519
    move/from16 v9, p1

    .line 520
    .line 521
    const/4 v4, 0x0

    .line 522
    const/4 v11, 0x1

    .line 523
    goto/16 :goto_6

    .line 524
    .line 525
    :cond_f
    move/from16 p1, v9

    .line 526
    .line 527
    iget v4, v6, Lf7;->e:I

    .line 528
    .line 529
    iput v4, v12, Le7;->f:I

    .line 530
    .line 531
    iget-object v4, v6, Lf7;->f:Ljava/lang/String;

    .line 532
    .line 533
    iput-object v4, v12, Le7;->i:Ljava/lang/String;

    .line 534
    .line 535
    iget v4, v6, Lf7;->g:I

    .line 536
    .line 537
    iput v4, v12, Le7;->s:I

    .line 538
    .line 539
    const/4 v4, 0x1

    .line 540
    iput-boolean v4, v12, Le7;->g:Z

    .line 541
    .line 542
    iget v4, v6, Lf7;->h:I

    .line 543
    .line 544
    iput v4, v12, Le7;->j:I

    .line 545
    .line 546
    iget-object v4, v6, Lf7;->i:Ljava/lang/CharSequence;

    .line 547
    .line 548
    iput-object v4, v12, Le7;->k:Ljava/lang/CharSequence;

    .line 549
    .line 550
    iget v4, v6, Lf7;->j:I

    .line 551
    .line 552
    iput v4, v12, Le7;->l:I

    .line 553
    .line 554
    iget-object v4, v6, Lf7;->k:Ljava/lang/CharSequence;

    .line 555
    .line 556
    iput-object v4, v12, Le7;->m:Ljava/lang/CharSequence;

    .line 557
    .line 558
    iget-object v4, v6, Lf7;->l:Ljava/util/ArrayList;

    .line 559
    .line 560
    iput-object v4, v12, Le7;->n:Ljava/util/ArrayList;

    .line 561
    .line 562
    iget-object v4, v6, Lf7;->m:Ljava/util/ArrayList;

    .line 563
    .line 564
    iput-object v4, v12, Le7;->o:Ljava/util/ArrayList;

    .line 565
    .line 566
    iget-boolean v4, v6, Lf7;->n:Z

    .line 567
    .line 568
    iput-boolean v4, v12, Le7;->p:Z

    .line 569
    .line 570
    const/4 v4, 0x1

    .line 571
    invoke-virtual {v12, v4}, Le7;->c(I)V

    .line 572
    .line 573
    .line 574
    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/a;->E(I)Z

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    if-eqz v5, :cond_10

    .line 579
    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    const-string v6, "restoreAllState: back stack #"

    .line 583
    .line 584
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v6, " (index "

    .line 591
    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    iget v6, v12, Le7;->s:I

    .line 596
    .line 597
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .line 612
    .line 613
    new-instance v5, Lyl;

    .line 614
    .line 615
    const/4 v6, 0x0

    .line 616
    invoke-direct {v5, v6}, Lyl;-><init>(I)V

    .line 617
    .line 618
    .line 619
    new-instance v7, Ljava/io/PrintWriter;

    .line 620
    .line 621
    invoke-direct {v7, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 622
    .line 623
    .line 624
    const-string v5, "  "

    .line 625
    .line 626
    invoke-virtual {v12, v5, v7, v6}, Le7;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 630
    .line 631
    .line 632
    goto :goto_8

    .line 633
    :cond_10
    const/4 v6, 0x0

    .line 634
    :goto_8
    iget-object v5, v0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    add-int/lit8 v3, v3, 0x1

    .line 640
    .line 641
    move/from16 v9, p1

    .line 642
    .line 643
    move v11, v4

    .line 644
    const/4 v4, 0x0

    .line 645
    goto/16 :goto_5

    .line 646
    .line 647
    :cond_11
    const/4 v6, 0x0

    .line 648
    goto :goto_9

    .line 649
    :cond_12
    move-object v3, v4

    .line 650
    const/4 v6, 0x0

    .line 651
    iput-object v3, v0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 652
    .line 653
    :goto_9
    iget-object v3, v0, Landroidx/fragment/app/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 654
    .line 655
    iget v4, v1, Ljg;->d:I

    .line 656
    .line 657
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 658
    .line 659
    .line 660
    iget-object v3, v1, Ljg;->e:Ljava/lang/String;

    .line 661
    .line 662
    if-eqz v3, :cond_13

    .line 663
    .line 664
    invoke-virtual {v2, v3}, Lv5;->l(Ljava/lang/String;)Lvf;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    iput-object v2, v0, Landroidx/fragment/app/a;->r:Lvf;

    .line 669
    .line 670
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->p(Lvf;)V

    .line 671
    .line 672
    .line 673
    :cond_13
    iget-object v2, v1, Ljg;->f:Ljava/util/ArrayList;

    .line 674
    .line 675
    if-eqz v2, :cond_14

    .line 676
    .line 677
    move v5, v6

    .line 678
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    if-ge v5, v3, :cond_14

    .line 683
    .line 684
    iget-object v3, v1, Ljg;->g:Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    check-cast v3, Landroid/os/Bundle;

    .line 691
    .line 692
    iget-object v4, v0, Landroidx/fragment/app/a;->o:Lwf;

    .line 693
    .line 694
    iget-object v4, v4, Lwf;->k:Lz2;

    .line 695
    .line 696
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 701
    .line 702
    .line 703
    iget-object v4, v0, Landroidx/fragment/app/a;->j:Ljava/util/Map;

    .line 704
    .line 705
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    add-int/lit8 v5, v5, 0x1

    .line 713
    .line 714
    goto :goto_a

    .line 715
    :cond_14
    new-instance v2, Ljava/util/ArrayDeque;

    .line 716
    .line 717
    iget-object v1, v1, Ljg;->h:Ljava/util/ArrayList;

    .line 718
    .line 719
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 720
    .line 721
    .line 722
    iput-object v2, v0, Landroidx/fragment/app/a;->x:Ljava/util/ArrayDeque;

    .line 723
    .line 724
    return-void
.end method

.method public final P()Ljg;
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/a;->e()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lgc;

    .line 21
    .line 22
    iget-boolean v3, v1, Lgc;->e:Z

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iput-boolean v2, v1, Lgc;->e:Z

    .line 27
    .line 28
    invoke-virtual {v1}, Lgc;->c()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/a;->e()Ljava/util/HashSet;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lgc;

    .line 51
    .line 52
    invoke-virtual {v1}, Lgc;->e()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->w(Z)Z

    .line 58
    .line 59
    .line 60
    iput-boolean v0, p0, Landroidx/fragment/app/a;->z:Z

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 63
    .line 64
    iput-boolean v0, v1, Lkg;->h:Z

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v0, v0, Lv5;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const/4 v4, 0x2

    .line 97
    const/4 v5, 0x0

    .line 98
    if-eqz v3, :cond_10

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Landroidx/fragment/app/b;

    .line 105
    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    iget-object v6, v3, Landroidx/fragment/app/b;->c:Lvf;

    .line 109
    .line 110
    new-instance v7, Lng;

    .line 111
    .line 112
    invoke-direct {v7, v6}, Lng;-><init>(Lvf;)V

    .line 113
    .line 114
    .line 115
    iget v8, v6, Lvf;->a:I

    .line 116
    .line 117
    const/4 v9, -0x1

    .line 118
    if-le v8, v9, :cond_e

    .line 119
    .line 120
    iget-object v8, v7, Lng;->m:Landroid/os/Bundle;

    .line 121
    .line 122
    if-nez v8, :cond_e

    .line 123
    .line 124
    new-instance v8, Landroid/os/Bundle;

    .line 125
    .line 126
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v8}, Lvf;->z(Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    iget-object v9, v6, Lvf;->Q:Lqg;

    .line 133
    .line 134
    invoke-virtual {v9, v8}, Lqg;->c(Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    iget-object v9, v6, Lvf;->u:Lig;

    .line 138
    .line 139
    invoke-virtual {v9}, Landroidx/fragment/app/a;->P()Ljg;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    if-eqz v9, :cond_4

    .line 144
    .line 145
    const-string v10, "android:support:fragments"

    .line 146
    .line 147
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    iget-object v9, v3, Landroidx/fragment/app/b;->a:Lko;

    .line 151
    .line 152
    invoke-virtual {v9, v2}, Lko;->m(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_5

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    move-object v5, v8

    .line 163
    :goto_3
    iget-object v8, v6, Lvf;->F:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v8, :cond_6

    .line 166
    .line 167
    invoke-virtual {v3}, Landroidx/fragment/app/b;->o()V

    .line 168
    .line 169
    .line 170
    :cond_6
    iget-object v3, v6, Lvf;->c:Landroid/util/SparseArray;

    .line 171
    .line 172
    if-eqz v3, :cond_8

    .line 173
    .line 174
    if-nez v5, :cond_7

    .line 175
    .line 176
    new-instance v3, Landroid/os/Bundle;

    .line 177
    .line 178
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 179
    .line 180
    .line 181
    move-object v5, v3

    .line 182
    :cond_7
    const-string v3, "android:view_state"

    .line 183
    .line 184
    iget-object v8, v6, Lvf;->c:Landroid/util/SparseArray;

    .line 185
    .line 186
    invoke-virtual {v5, v3, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 187
    .line 188
    .line 189
    :cond_8
    iget-object v3, v6, Lvf;->d:Landroid/os/Bundle;

    .line 190
    .line 191
    if-eqz v3, :cond_a

    .line 192
    .line 193
    if-nez v5, :cond_9

    .line 194
    .line 195
    new-instance v3, Landroid/os/Bundle;

    .line 196
    .line 197
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 198
    .line 199
    .line 200
    move-object v5, v3

    .line 201
    :cond_9
    const-string v3, "android:view_registry_state"

    .line 202
    .line 203
    iget-object v8, v6, Lvf;->d:Landroid/os/Bundle;

    .line 204
    .line 205
    invoke-virtual {v5, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 206
    .line 207
    .line 208
    :cond_a
    iget-boolean v3, v6, Lvf;->H:Z

    .line 209
    .line 210
    if-nez v3, :cond_c

    .line 211
    .line 212
    if-nez v5, :cond_b

    .line 213
    .line 214
    new-instance v3, Landroid/os/Bundle;

    .line 215
    .line 216
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 217
    .line 218
    .line 219
    move-object v5, v3

    .line 220
    :cond_b
    const-string v3, "android:user_visible_hint"

    .line 221
    .line 222
    iget-boolean v8, v6, Lvf;->H:Z

    .line 223
    .line 224
    invoke-virtual {v5, v3, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    .line 226
    .line 227
    :cond_c
    iput-object v5, v7, Lng;->m:Landroid/os/Bundle;

    .line 228
    .line 229
    iget-object v3, v6, Lvf;->h:Ljava/lang/String;

    .line 230
    .line 231
    if-eqz v3, :cond_f

    .line 232
    .line 233
    if-nez v5, :cond_d

    .line 234
    .line 235
    new-instance v3, Landroid/os/Bundle;

    .line 236
    .line 237
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 238
    .line 239
    .line 240
    iput-object v3, v7, Lng;->m:Landroid/os/Bundle;

    .line 241
    .line 242
    :cond_d
    iget-object v3, v7, Lng;->m:Landroid/os/Bundle;

    .line 243
    .line 244
    const-string v5, "android:target_state"

    .line 245
    .line 246
    iget-object v8, v6, Lvf;->h:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v3, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget v3, v6, Lvf;->i:I

    .line 252
    .line 253
    if-eqz v3, :cond_f

    .line 254
    .line 255
    iget-object v5, v7, Lng;->m:Landroid/os/Bundle;

    .line 256
    .line 257
    const-string v8, "android:target_req_state"

    .line 258
    .line 259
    invoke-virtual {v5, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_e
    iget-object v3, v6, Lvf;->b:Landroid/os/Bundle;

    .line 264
    .line 265
    iput-object v3, v7, Lng;->m:Landroid/os/Bundle;

    .line 266
    .line 267
    :cond_f
    :goto_4
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    invoke-static {v4}, Landroidx/fragment/app/a;->E(I)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_3

    .line 275
    .line 276
    const-string v3, "FragmentManager"

    .line 277
    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v5, "Saved state of "

    .line 281
    .line 282
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v5, ": "

    .line 289
    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget-object v5, v7, Lng;->m:Landroid/os/Bundle;

    .line 294
    .line 295
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_12

    .line 312
    .line 313
    invoke-static {v4}, Landroidx/fragment/app/a;->E(I)Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    if-eqz p0, :cond_11

    .line 318
    .line 319
    const-string p0, "FragmentManager"

    .line 320
    .line 321
    const-string v0, "saveAllState: no fragments!"

    .line 322
    .line 323
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    :cond_11
    return-object v5

    .line 327
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 328
    .line 329
    iget-object v3, v0, Lv5;->c:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v3, Ljava/util/ArrayList;

    .line 332
    .line 333
    monitor-enter v3

    .line 334
    :try_start_0
    iget-object v6, v0, Lv5;->c:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v6, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    if-eqz v6, :cond_13

    .line 343
    .line 344
    monitor-exit v3

    .line 345
    move-object v6, v5

    .line 346
    goto :goto_6

    .line 347
    :catchall_0
    move-exception p0

    .line 348
    goto/16 :goto_8

    .line 349
    .line 350
    :cond_13
    new-instance v6, Ljava/util/ArrayList;

    .line 351
    .line 352
    iget-object v7, v0, Lv5;->c:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v7, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .line 362
    .line 363
    iget-object v0, v0, Lv5;->c:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    move v8, v2

    .line 372
    :cond_14
    :goto_5
    if-ge v8, v7, :cond_15

    .line 373
    .line 374
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    add-int/lit8 v8, v8, 0x1

    .line 379
    .line 380
    check-cast v9, Lvf;

    .line 381
    .line 382
    iget-object v10, v9, Lvf;->e:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    invoke-static {v4}, Landroidx/fragment/app/a;->E(I)Z

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    if-eqz v10, :cond_14

    .line 392
    .line 393
    const-string v10, "FragmentManager"

    .line 394
    .line 395
    new-instance v11, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v12, "saveAllState: adding fragment ("

    .line 401
    .line 402
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    iget-object v12, v9, Lvf;->e:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v12, "): "

    .line 411
    .line 412
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_15
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :goto_6
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 428
    .line 429
    if-eqz v0, :cond_17

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-lez v0, :cond_17

    .line 436
    .line 437
    new-array v3, v0, [Lf7;

    .line 438
    .line 439
    :goto_7
    if-ge v2, v0, :cond_18

    .line 440
    .line 441
    new-instance v7, Lf7;

    .line 442
    .line 443
    iget-object v8, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    check-cast v8, Le7;

    .line 450
    .line 451
    invoke-direct {v7, v8}, Lf7;-><init>(Le7;)V

    .line 452
    .line 453
    .line 454
    aput-object v7, v3, v2

    .line 455
    .line 456
    invoke-static {v4}, Landroidx/fragment/app/a;->E(I)Z

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    if-eqz v7, :cond_16

    .line 461
    .line 462
    const-string v7, "FragmentManager"

    .line 463
    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    const-string v9, "saveAllState: adding back stack #"

    .line 467
    .line 468
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v9, ": "

    .line 475
    .line 476
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    iget-object v9, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v9

    .line 485
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 496
    .line 497
    goto :goto_7

    .line 498
    :cond_17
    move-object v3, v5

    .line 499
    :cond_18
    new-instance v0, Ljg;

    .line 500
    .line 501
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 502
    .line 503
    .line 504
    iput-object v5, v0, Ljg;->e:Ljava/lang/String;

    .line 505
    .line 506
    new-instance v2, Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .line 510
    .line 511
    iput-object v2, v0, Ljg;->f:Ljava/util/ArrayList;

    .line 512
    .line 513
    new-instance v4, Ljava/util/ArrayList;

    .line 514
    .line 515
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .line 517
    .line 518
    iput-object v4, v0, Ljg;->g:Ljava/util/ArrayList;

    .line 519
    .line 520
    iput-object v1, v0, Ljg;->a:Ljava/util/ArrayList;

    .line 521
    .line 522
    iput-object v6, v0, Ljg;->b:Ljava/util/ArrayList;

    .line 523
    .line 524
    iput-object v3, v0, Ljg;->c:[Lf7;

    .line 525
    .line 526
    iget-object v1, p0, Landroidx/fragment/app/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    iput v1, v0, Ljg;->d:I

    .line 533
    .line 534
    iget-object v1, p0, Landroidx/fragment/app/a;->r:Lvf;

    .line 535
    .line 536
    if-eqz v1, :cond_19

    .line 537
    .line 538
    iget-object v1, v1, Lvf;->e:Ljava/lang/String;

    .line 539
    .line 540
    iput-object v1, v0, Ljg;->e:Ljava/lang/String;

    .line 541
    .line 542
    :cond_19
    iget-object v1, p0, Landroidx/fragment/app/a;->j:Ljava/util/Map;

    .line 543
    .line 544
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 549
    .line 550
    .line 551
    iget-object v1, p0, Landroidx/fragment/app/a;->j:Ljava/util/Map;

    .line 552
    .line 553
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 558
    .line 559
    .line 560
    new-instance v1, Ljava/util/ArrayList;

    .line 561
    .line 562
    iget-object p0, p0, Landroidx/fragment/app/a;->x:Ljava/util/ArrayDeque;

    .line 563
    .line 564
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 565
    .line 566
    .line 567
    iput-object v1, v0, Ljg;->h:Ljava/util/ArrayList;

    .line 568
    .line 569
    return-object v0

    .line 570
    :goto_8
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    throw p0
.end method

.method public final Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 14
    .line 15
    iget-object v1, v1, Lwf;->l:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/fragment/app/a;->H:Lc7;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 23
    .line 24
    iget-object v1, v1, Lwf;->l:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/fragment/app/a;->H:Lc7;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/a;->Y()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final R(Lvf;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->A(Lvf;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    instance-of p1, p0, Landroidx/fragment/app/FragmentContainerView;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    .line 12
    .line 13
    xor-int/lit8 p1, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final S(Lgu;Lmg;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lvf;->N:Landroidx/lifecycle/a;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/lifecycle/a;->c:Lmk;

    .line 4
    .line 5
    sget-object v1, Lmk;->a:Lmk;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroidx/fragment/app/FragmentManager$6;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2, p1}, Landroidx/fragment/app/FragmentManager$6;-><init>(Landroidx/fragment/app/a;Lmg;Lnk;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lfg;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2, v0}, Lfg;-><init>(Lnk;Lmg;Lqk;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Landroidx/fragment/app/a;->k:Ljava/util/Map;

    .line 24
    .line 25
    const-string p1, "app_picker_result"

    .line 26
    .line 27
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lfg;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lfg;->a:Lnk;

    .line 36
    .line 37
    iget-object p0, p0, Lfg;->c:Lqk;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lnk;->b(Lrk;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public final T(Lvf;Lmk;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lvf;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lv5;->l(Ljava/lang/String;)Lvf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Lvf;->t:Lwf;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Lvf;->s:Landroidx/fragment/app/a;

    .line 16
    .line 17
    if-ne v0, p0, :cond_1

    .line 18
    .line 19
    :cond_0
    iput-object p2, p1, Lvf;->M:Lmk;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string p2, "Fragment "

    .line 23
    .line 24
    const-string v0, " is not an active fragment of FragmentManager "

    .line 25
    .line 26
    invoke-static {p2, p1, v0, p0}, Lc2;->j(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final U(Lvf;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lvf;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lv5;->l(Ljava/lang/String;)Lvf;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lvf;->t:Lwf;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Lvf;->s:Landroidx/fragment/app/a;

    .line 18
    .line 19
    if-ne v0, p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "Fragment "

    .line 23
    .line 24
    const-string v1, " is not an active fragment of FragmentManager "

    .line 25
    .line 26
    invoke-static {v0, p1, v1, p0}, Lc2;->j(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a;->r:Lvf;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/fragment/app/a;->r:Lvf;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->p(Lvf;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Landroidx/fragment/app/a;->r:Lvf;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->p(Lvf;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final V(Lvf;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->A(Lvf;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_7

    .line 6
    .line 7
    iget-object v0, p1, Lvf;->I:Ltf;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v2, v0, Ltf;->b:I

    .line 15
    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    move v3, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v3, v0, Ltf;->c:I

    .line 21
    .line 22
    :goto_1
    add-int/2addr v3, v2

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    move v2, v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v2, v0, Ltf;->d:I

    .line 28
    .line 29
    :goto_2
    add-int/2addr v2, v3

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    move v0, v1

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v0, v0, Ltf;->e:I

    .line 35
    .line 36
    :goto_3
    add-int/2addr v0, v2

    .line 37
    if-lez v0, :cond_7

    .line 38
    .line 39
    const v0, 0x7f0901e7

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lvf;

    .line 56
    .line 57
    iget-object p1, p1, Lvf;->I:Ltf;

    .line 58
    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    iget-boolean v1, p1, Ltf;->a:Z

    .line 63
    .line 64
    :goto_4
    iget-object p1, p0, Lvf;->I:Ltf;

    .line 65
    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_6
    invoke-virtual {p0}, Lvf;->d()Ltf;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iput-boolean v1, p0, Ltf;->a:Z

    .line 74
    .line 75
    :cond_7
    :goto_5
    return-void
.end method

.method public final X()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv5;->n()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    check-cast v4, Landroidx/fragment/app/b;

    .line 22
    .line 23
    iget-object v5, v4, Landroidx/fragment/app/b;->c:Lvf;

    .line 24
    .line 25
    iget-boolean v6, v5, Lvf;->G:Z

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    iget-boolean v6, p0, Landroidx/fragment/app/a;->b:Z

    .line 30
    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    iput-boolean v4, p0, Landroidx/fragment/app/a;->C:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iput-boolean v2, v5, Lvf;->G:Z

    .line 38
    .line 39
    invoke-virtual {v4}, Landroidx/fragment/app/b;->k()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method public final Y()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/fragment/app/a;->h:Lbg;

    .line 14
    .line 15
    iput-boolean v2, p0, Lbg;->a:Z

    .line 16
    .line 17
    iget-object p0, p0, Lbg;->c:Lrg;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Lrg;->a()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, Landroidx/fragment/app/a;->h:Lbg;

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v1, v3

    .line 42
    :goto_0
    if-lez v1, :cond_3

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/fragment/app/a;->q:Lvf;

    .line 45
    .line 46
    invoke-static {p0}, Landroidx/fragment/app/a;->H(Lvf;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v2, v3

    .line 54
    :goto_1
    iput-boolean v2, v0, Lbg;->a:Z

    .line 55
    .line 56
    iget-object p0, v0, Lbg;->c:Lrg;

    .line 57
    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    invoke-interface {p0}, Lrg;->a()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void

    .line 64
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0
.end method

.method public final a(Lvf;)Landroidx/fragment/app/b;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "add: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->f(Lvf;)Landroidx/fragment/app/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object p0, p1, Lvf;->s:Landroidx/fragment/app/a;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lv5;->A(Landroidx/fragment/app/b;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p1, Lvf;->A:Z

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lv5;->f(Lvf;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p1, Lvf;->l:Z

    .line 47
    .line 48
    iget-object v2, p1, Lvf;->F:Landroid/view/View;

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    iput-boolean v1, p1, Lvf;->J:Z

    .line 53
    .line 54
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/a;->F(Lvf;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Landroidx/fragment/app/a;->y:Z

    .line 62
    .line 63
    :cond_2
    return-object v0
.end method

.method public final b(Lwf;Ls8;Lvf;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/fragment/app/a;->p:Ls8;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/a;->q:Lvf;

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/fragment/app/a;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance v0, Ldg;

    .line 16
    .line 17
    invoke-direct {v0, p3}, Ldg;-><init>(Lvf;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/a;->q:Lvf;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/a;->Y()V

    .line 34
    .line 35
    .line 36
    :cond_2
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-object p2, p1, Lwf;->n:Lz2;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroidx/activity/a;->h()Landroidx/activity/b;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Landroidx/fragment/app/a;->g:Landroidx/activity/b;

    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    move-object v0, p3

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move-object v0, p1

    .line 51
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/a;->h:Lbg;

    .line 52
    .line 53
    invoke-virtual {p2, v0, v1}, Landroidx/activity/b;->a(Lsk;Lbg;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    const/4 p2, 0x0

    .line 57
    const/4 v0, 0x1

    .line 58
    if-eqz p3, :cond_6

    .line 59
    .line 60
    iget-object p1, p3, Lvf;->s:Landroidx/fragment/app/a;

    .line 61
    .line 62
    iget-object p1, p1, Landroidx/fragment/app/a;->G:Lkg;

    .line 63
    .line 64
    iget-object v1, p1, Lkg;->d:Ljava/util/HashMap;

    .line 65
    .line 66
    iget-object v2, p3, Lvf;->e:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lkg;

    .line 73
    .line 74
    if-nez v2, :cond_5

    .line 75
    .line 76
    new-instance v2, Lkg;

    .line 77
    .line 78
    iget-boolean p1, p1, Lkg;->f:Z

    .line 79
    .line 80
    invoke-direct {v2, p1}, Lkg;-><init>(Z)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p3, Lvf;->e:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_5
    iput-object v2, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_6
    if-eqz p1, :cond_a

    .line 92
    .line 93
    iget-object p1, p1, Lwf;->n:Lz2;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/activity/a;->e()Lb80;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v1, Lhb;->b:Lhb;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const-class v2, Lkg;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_9

    .line 114
    .line 115
    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 116
    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-object p1, p1, Lb80;->a:Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Lz70;

    .line 128
    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_7

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v1, v1, Lib;->a:Ljava/util/AbstractMap;

    .line 145
    .line 146
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 147
    .line 148
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    .line 150
    .line 151
    sget-object v1, Lhd;->d:Lhd;

    .line 152
    .line 153
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :try_start_0
    new-instance v1, Lkg;

    .line 157
    .line 158
    invoke-direct {v1, v0}, Lkg;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    :goto_2
    move-object v4, v1

    .line 162
    goto :goto_3

    .line 163
    :catch_0
    new-instance v1, Lkg;

    .line 164
    .line 165
    invoke-direct {v1, v0}, Lkg;-><init>(Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :goto_3
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lz70;

    .line 174
    .line 175
    if-eqz p1, :cond_8

    .line 176
    .line 177
    invoke-virtual {p1}, Lz70;->a()V

    .line 178
    .line 179
    .line 180
    :cond_8
    :goto_4
    check-cast v4, Lkg;

    .line 181
    .line 182
    iput-object v4, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_9
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 186
    .line 187
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_a
    new-instance p1, Lkg;

    .line 192
    .line 193
    invoke-direct {p1, p2}, Lkg;-><init>(Z)V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 197
    .line 198
    :goto_5
    iget-object p1, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 199
    .line 200
    iget-boolean v1, p0, Landroidx/fragment/app/a;->z:Z

    .line 201
    .line 202
    if-nez v1, :cond_c

    .line 203
    .line 204
    iget-boolean v1, p0, Landroidx/fragment/app/a;->A:Z

    .line 205
    .line 206
    if-eqz v1, :cond_b

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_b
    move v1, p2

    .line 210
    goto :goto_7

    .line 211
    :cond_c
    :goto_6
    move v1, v0

    .line 212
    :goto_7
    iput-boolean v1, p1, Lkg;->h:Z

    .line 213
    .line 214
    iget-object v1, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 215
    .line 216
    iput-object p1, v1, Lv5;->d:Ljava/lang/Object;

    .line 217
    .line 218
    iget-object p1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 219
    .line 220
    if-eqz p1, :cond_e

    .line 221
    .line 222
    iget-object p1, p1, Lwf;->n:Lz2;

    .line 223
    .line 224
    iget-object p1, p1, Landroidx/activity/a;->k:Lga;

    .line 225
    .line 226
    if-eqz p3, :cond_d

    .line 227
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    iget-object p3, p3, Lvf;->e:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p3, ":"

    .line 239
    .line 240
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    goto :goto_8

    .line 248
    :cond_d
    const-string p3, ""

    .line 249
    .line 250
    :goto_8
    const-string v1, "FragmentManager:"

    .line 251
    .line 252
    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    const-string v1, "StartActivityForResult"

    .line 257
    .line 258
    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    new-instance v2, Lt1;

    .line 263
    .line 264
    const/4 v3, 0x2

    .line 265
    invoke-direct {v2, v3}, Lt1;-><init>(I)V

    .line 266
    .line 267
    .line 268
    new-instance v4, Lag;

    .line 269
    .line 270
    invoke-direct {v4, p0, v3}, Lag;-><init>(Landroidx/fragment/app/a;I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v1, v2, v4}, Landroidx/activity/result/a;->d(Ljava/lang/String;Lem;Ls1;)Lv1;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iput-object v1, p0, Landroidx/fragment/app/a;->u:Lv1;

    .line 278
    .line 279
    const-string v1, "StartIntentSenderForResult"

    .line 280
    .line 281
    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    new-instance v2, Lt1;

    .line 286
    .line 287
    const/4 v3, 0x3

    .line 288
    invoke-direct {v2, v3}, Lt1;-><init>(I)V

    .line 289
    .line 290
    .line 291
    new-instance v3, Lag;

    .line 292
    .line 293
    invoke-direct {v3, p0, p2}, Lag;-><init>(Landroidx/fragment/app/a;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v1, v2, v3}, Landroidx/activity/result/a;->d(Ljava/lang/String;Lem;Ls1;)Lv1;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    iput-object v1, p0, Landroidx/fragment/app/a;->v:Lv1;

    .line 301
    .line 302
    const-string v1, "RequestPermissions"

    .line 303
    .line 304
    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p3

    .line 308
    new-instance v1, Lt1;

    .line 309
    .line 310
    invoke-direct {v1, p2}, Lt1;-><init>(I)V

    .line 311
    .line 312
    .line 313
    new-instance p2, Lag;

    .line 314
    .line 315
    invoke-direct {p2, p0, v0}, Lag;-><init>(Landroidx/fragment/app/a;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, p3, v1, p2}, Landroidx/activity/result/a;->d(Ljava/lang/String;Lem;Ls1;)Lv1;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    iput-object p1, p0, Landroidx/fragment/app/a;->w:Lv1;

    .line 323
    .line 324
    :cond_e
    return-void

    .line 325
    :cond_f
    const-string p0, "Already attached"

    .line 326
    .line 327
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public final c(Lvf;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const-string v2, "FragmentManager"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "attach: "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p1, Lvf;->A:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p1, Lvf;->A:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Lvf;->k:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lv5;->f(Lvf;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "add from attach: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p1}, Landroidx/fragment/app/a;->F(Lvf;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Landroidx/fragment/app/a;->y:Z

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/a;->E:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/fragment/app/a;->D:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 7
    .line 8
    invoke-virtual {v1}, Lv5;->n()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    check-cast v4, Landroidx/fragment/app/b;

    .line 26
    .line 27
    iget-object v4, v4, Landroidx/fragment/app/b;->c:Lvf;

    .line 28
    .line 29
    iget-object v4, v4, Lvf;->E:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/a;->C()Lhd;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {v4, v5}, Lgc;->f(Landroid/view/ViewGroup;Lhd;)Lgc;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v0
.end method

.method public final f(Lvf;)Landroidx/fragment/app/b;
    .locals 3

    .line 1
    iget-object v0, p1, Lvf;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 4
    .line 5
    iget-object v2, v1, Lv5;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/fragment/app/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Landroidx/fragment/app/b;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/fragment/app/a;->l:Lko;

    .line 21
    .line 22
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/b;-><init>(Lko;Lv5;Lvf;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 26
    .line 27
    iget-object p1, p1, Lwf;->k:Lz2;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroidx/fragment/app/b;->m(Ljava/lang/ClassLoader;)V

    .line 34
    .line 35
    .line 36
    iget p0, p0, Landroidx/fragment/app/a;->n:I

    .line 37
    .line 38
    iput p0, v0, Landroidx/fragment/app/b;->e:I

    .line 39
    .line 40
    return-object v0
.end method

.method public final g(Lvf;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Landroidx/fragment/app/a;->E(I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "detach: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v2, p1, Lvf;->A:Z

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p1, Lvf;->A:Z

    .line 33
    .line 34
    iget-boolean v3, p1, Lvf;->k:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/fragment/app/a;->E(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "remove from detach: "

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 62
    .line 63
    iget-object v1, v0, Lv5;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, v0, Lv5;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p1, Lvf;->k:Z

    .line 78
    .line 79
    invoke-static {p1}, Landroidx/fragment/app/a;->F(Lvf;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iput-boolean v2, p0, Landroidx/fragment/app/a;->y:Z

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->V(Lvf;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0

    .line 94
    :cond_3
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lvf;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Lvf;->D:Z

    .line 27
    .line 28
    iget-object v0, v0, Lvf;->u:Lig;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/a;->h()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final i()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 9
    .line 10
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lvf;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean v3, v0, Lvf;->z:Z

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lvf;->u:Lig;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/a;->i()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    :goto_1
    return v1
.end method

.method public final j()Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 9
    .line 10
    invoke-virtual {v0}, Lv5;->u()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lvf;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, Landroidx/fragment/app/a;->G(Lvf;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    iget-boolean v6, v5, Lvf;->z:Z

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    iget-object v6, v5, Lvf;->u:Lig;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroidx/fragment/app/a;->j()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v6, v1

    .line 52
    :goto_1
    if-eqz v6, :cond_1

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move v4, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/a;->e:Ljava/util/ArrayList;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/a;->e:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ge v1, v0, :cond_7

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/fragment/app/a;->e:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lvf;

    .line 85
    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_6

    .line 93
    .line 94
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_7
    iput-object v3, p0, Landroidx/fragment/app/a;->e:Ljava/util/ArrayList;

    .line 101
    .line 102
    return v4
.end method

.method public final k()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/a;->B:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->w(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/a;->e()Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lgc;

    .line 26
    .line 27
    invoke-virtual {v1}, Lgc;->e()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, -0x1

    .line 32
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->s(I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/fragment/app/a;->p:Ls8;

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/fragment/app/a;->q:Lvf;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/fragment/app/a;->g:Landroidx/activity/b;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/fragment/app/a;->h:Lbg;

    .line 47
    .line 48
    iget-object v1, v1, Lbg;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lp8;

    .line 65
    .line 66
    invoke-interface {v2}, Lp8;->cancel()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iput-object v0, p0, Landroidx/fragment/app/a;->g:Landroidx/activity/b;

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/a;->u:Lv1;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Lv1;->G()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroidx/fragment/app/a;->v:Lv1;

    .line 80
    .line 81
    invoke-virtual {v0}, Lv1;->G()V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Landroidx/fragment/app/a;->w:Lv1;

    .line 85
    .line 86
    invoke-virtual {p0}, Lv1;->G()V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lvf;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Lvf;->D:Z

    .line 27
    .line 28
    iget-object v0, v0, Lvf;->u:Lig;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/a;->l()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lvf;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lvf;->u:Lig;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/a;->m()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public final n()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 9
    .line 10
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lvf;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean v3, v0, Lvf;->z:Z

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lvf;->u:Lig;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/a;->n()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    :goto_1
    return v1
.end method

.method public final o()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 8
    .line 9
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lvf;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-boolean v1, v0, Lvf;->z:Z

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lvf;->u:Lig;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/a;->o()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    return-void
.end method

.method public final p(Lvf;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p1, Lvf;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lv5;->l(Ljava/lang/String;)Lvf;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eq p1, p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p1, Lvf;->s:Landroidx/fragment/app/a;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroidx/fragment/app/a;->H(Lvf;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    iget-object v0, p1, Lvf;->j:Ljava/lang/Boolean;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq v0, p0, :cond_2

    .line 32
    .line 33
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p0, p1, Lvf;->j:Ljava/lang/Boolean;

    .line 38
    .line 39
    iget-object p0, p1, Lvf;->u:Lig;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/a;->Y()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroidx/fragment/app/a;->r:Lvf;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->p(Lvf;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lvf;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lvf;->u:Lig;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/a;->q()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public final r()Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 9
    .line 10
    invoke-virtual {p0}, Lv5;->u()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    move v0, v1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lvf;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-static {v3}, Landroidx/fragment/app/a;->G(Lvf;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iget-boolean v4, v3, Lvf;->z:Z

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    iget-object v3, v3, Lvf;->u:Lig;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroidx/fragment/app/a;->r()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v3, v1

    .line 51
    :goto_1
    if-eqz v3, :cond_1

    .line 52
    .line 53
    move v0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return v0
.end method

.method public final s(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 6
    .line 7
    iget-object v2, v2, Lv5;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/b;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iput p1, v3, Landroidx/fragment/app/b;->e:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/a;->I(IZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/a;->e()Ljava/util/HashSet;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lgc;

    .line 58
    .line 59
    invoke-virtual {v2}, Lgc;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/a;->b:Z

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->w(Z)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_2
    iput-boolean v1, p0, Landroidx/fragment/app/a;->b:Z

    .line 72
    .line 73
    throw p1
.end method

.method public final t(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 3
    iget-object v2, v1, Lv5;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v1, v1, Lv5;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1e

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    const-string v4, "Active Fragments:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/b;

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_1d

    .line 10
    iget-object v4, v4, Landroidx/fragment/app/b;->c:Lvf;

    .line 11
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentId=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget v6, v4, Lvf;->w:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    const-string v6, " mContainerId=#"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget v6, v4, Lvf;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    const-string v6, " mTag="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lvf;->y:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Lvf;->a:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 19
    const-string v6, " mWho="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lvf;->e:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    const-string v6, " mBackStackNesting="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Lvf;->r:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 21
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAdded="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lvf;->k:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 22
    const-string v6, " mRemoving="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lvf;->l:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 23
    const-string v6, " mFromLayout="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lvf;->m:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 24
    const-string v6, " mInLayout="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lvf;->n:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 25
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHidden="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lvf;->z:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 26
    const-string v6, " mDetached="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lvf;->A:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 27
    const-string v6, " mMenuVisible="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lvf;->C:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 28
    const-string v6, " mHasMenu="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 29
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mRetainInstance="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lvf;->B:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 30
    const-string v6, " mUserVisibleHint="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v4, Lvf;->H:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 31
    iget-object v6, v4, Lvf;->s:Landroidx/fragment/app/a;

    if-eqz v6, :cond_0

    .line 32
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mFragmentManager="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    iget-object v6, v4, Lvf;->s:Landroidx/fragment/app/a;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 34
    :cond_0
    iget-object v6, v4, Lvf;->t:Lwf;

    if-eqz v6, :cond_1

    .line 35
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    iget-object v6, v4, Lvf;->t:Lwf;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 37
    :cond_1
    iget-object v6, v4, Lvf;->v:Lvf;

    if-eqz v6, :cond_2

    .line 38
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mParentFragment="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    iget-object v6, v4, Lvf;->v:Lvf;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 40
    :cond_2
    iget-object v6, v4, Lvf;->f:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 41
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mArguments="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lvf;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 42
    :cond_3
    iget-object v6, v4, Lvf;->b:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    .line 43
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedFragmentState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget-object v6, v4, Lvf;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 45
    :cond_4
    iget-object v6, v4, Lvf;->c:Landroid/util/SparseArray;

    if-eqz v6, :cond_5

    .line 46
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    iget-object v6, v4, Lvf;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 48
    :cond_5
    iget-object v6, v4, Lvf;->d:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    .line 49
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mSavedViewRegistryState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget-object v6, v4, Lvf;->d:Landroid/os/Bundle;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 51
    :cond_6
    invoke-virtual {v4}, Lvf;->n()Lvf;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 52
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mTarget="

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 53
    const-string v6, " mTargetRequestCode="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    iget v6, v4, Lvf;->i:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 55
    :cond_7
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mPopDirection="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget-object v6, v4, Lvf;->I:Ltf;

    if-nez v6, :cond_8

    move v6, v5

    goto :goto_1

    .line 57
    :cond_8
    iget-boolean v6, v6, Ltf;->a:Z

    .line 58
    :goto_1
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 59
    iget-object v6, v4, Lvf;->I:Ltf;

    if-nez v6, :cond_9

    move v6, v5

    goto :goto_2

    .line 60
    :cond_9
    iget v6, v6, Ltf;->b:I

    :goto_2
    if-eqz v6, :cond_b

    .line 61
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    iget-object v6, v4, Lvf;->I:Ltf;

    if-nez v6, :cond_a

    move v6, v5

    goto :goto_3

    .line 63
    :cond_a
    iget v6, v6, Ltf;->b:I

    .line 64
    :goto_3
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 65
    :cond_b
    iget-object v6, v4, Lvf;->I:Ltf;

    if-nez v6, :cond_c

    move v6, v5

    goto :goto_4

    .line 66
    :cond_c
    iget v6, v6, Ltf;->c:I

    :goto_4
    if-eqz v6, :cond_e

    .line 67
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget-object v6, v4, Lvf;->I:Ltf;

    if-nez v6, :cond_d

    move v6, v5

    goto :goto_5

    .line 69
    :cond_d
    iget v6, v6, Ltf;->c:I

    .line 70
    :goto_5
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 71
    :cond_e
    iget-object v6, v4, Lvf;->I:Ltf;

    if-nez v6, :cond_f

    move v6, v5

    goto :goto_6

    .line 72
    :cond_f
    iget v6, v6, Ltf;->d:I

    :goto_6
    if-eqz v6, :cond_11

    .line 73
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopEnterAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget-object v6, v4, Lvf;->I:Ltf;

    if-nez v6, :cond_10

    move v6, v5

    goto :goto_7

    .line 75
    :cond_10
    iget v6, v6, Ltf;->d:I

    .line 76
    :goto_7
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 77
    :cond_11
    iget-object v6, v4, Lvf;->I:Ltf;

    if-nez v6, :cond_12

    move v6, v5

    goto :goto_8

    .line 78
    :cond_12
    iget v6, v6, Ltf;->e:I

    :goto_8
    if-eqz v6, :cond_14

    .line 79
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "getPopExitAnim="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget-object v6, v4, Lvf;->I:Ltf;

    if-nez v6, :cond_13

    move v6, v5

    goto :goto_9

    .line 81
    :cond_13
    iget v6, v6, Ltf;->e:I

    .line 82
    :goto_9
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 83
    :cond_14
    iget-object v6, v4, Lvf;->E:Landroid/view/ViewGroup;

    if-eqz v6, :cond_15

    .line 84
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lvf;->E:Landroid/view/ViewGroup;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 85
    :cond_15
    iget-object v6, v4, Lvf;->F:Landroid/view/View;

    if-eqz v6, :cond_16

    .line 86
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mView="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Lvf;->F:Landroid/view/View;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    :cond_16
    invoke-virtual {v4}, Lvf;->h()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 88
    invoke-interface {v4}, Lc80;->e()Lb80;

    move-result-object v6

    .line 89
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    sget-object v7, Lhb;->b:Lhb;

    .line 91
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    const-class v8, Ltl;

    .line 93
    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 94
    const-string v10, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    iget-object v6, v6, Lb80;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lz70;

    .line 96
    invoke-virtual {v8, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 97
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_c

    .line 98
    :cond_17
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    iget-object v7, v7, Lib;->a:Ljava/util/AbstractMap;

    check-cast v7, Ljava/util/LinkedHashMap;

    .line 100
    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 101
    sget-object v7, Lhd;->d:Lhd;

    .line 102
    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :try_start_0
    new-instance v7, Ltl;

    invoke-direct {v7}, Ltl;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    move-object v10, v7

    goto :goto_b

    .line 104
    :catch_0
    new-instance v7, Ltl;

    invoke-direct {v7}, Ltl;-><init>()V

    goto :goto_a

    .line 105
    :goto_b
    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz70;

    if-eqz v6, :cond_18

    .line 106
    invoke-virtual {v6}, Lz70;->a()V

    .line 107
    :cond_18
    :goto_c
    check-cast v10, Ltl;

    .line 108
    iget-object v6, v10, Ltl;->c:Lq20;

    .line 109
    iget v7, v6, Lq20;->c:I

    if-lez v7, :cond_1c

    .line 110
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Loaders:"

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    iget v7, v6, Lq20;->c:I

    if-gtz v7, :cond_19

    goto :goto_d

    .line 112
    :cond_19
    iget-object p0, v6, Lq20;->b:[Ljava/lang/Object;

    aget-object p0, p0, v5

    if-eqz p0, :cond_1a

    .line 113
    invoke-static {}, Lc2;->l()V

    return-void

    .line 114
    :cond_1a
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "  #"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    iget-object p0, v6, Lq20;->a:[I

    aget p0, p0, v5

    .line 116
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 117
    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 118
    :cond_1b
    const-string p0, "Local and anonymous classes can not be ViewModels"

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_1c
    :goto_d
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Child "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lvf;->u:Lig;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    iget-object v4, v4, Lvf;->u:Lig;

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p2, p3, p4}, Landroidx/fragment/app/a;->t(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_1d
    const-string v4, "null"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1f

    .line 124
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v5

    :goto_e
    if-ge p4, p2, :cond_1f

    .line 125
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvf;

    .line 126
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 129
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lvf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_e

    .line 131
    :cond_1f
    iget-object p2, p0, Landroidx/fragment/app/a;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_20

    .line 132
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_20

    .line 133
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v5

    :goto_f
    if-ge p4, p2, :cond_20

    .line 134
    iget-object v1, p0, Landroidx/fragment/app/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvf;

    .line 135
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 138
    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Lvf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_f

    .line 140
    :cond_20
    iget-object p2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_21

    .line 141
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_21

    .line 142
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v5

    :goto_10
    if-ge p4, p2, :cond_21

    .line 143
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7;

    .line 144
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 147
    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Le7;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v1, v0, p3, v2}, Le7;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_10

    .line 150
    :cond_21
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Back Stack Index: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/fragment/app/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    monitor-enter p2

    .line 153
    :try_start_1
    iget-object p4, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_22

    .line 154
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_11
    if-ge v5, p4, :cond_22

    .line 155
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgg;

    .line 156
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 159
    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :catchall_0
    move-exception p0

    goto :goto_12

    .line 161
    :cond_22
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Landroidx/fragment/app/a;->o:Lwf;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Landroidx/fragment/app/a;->p:Ls8;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    iget-object p2, p0, Landroidx/fragment/app/a;->q:Lvf;

    if-eqz p2, :cond_23

    .line 171
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Landroidx/fragment/app/a;->q:Lvf;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 174
    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    iget p2, p0, Landroidx/fragment/app/a;->n:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 177
    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    iget-boolean p2, p0, Landroidx/fragment/app/a;->z:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 179
    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    iget-boolean p2, p0, Landroidx/fragment/app/a;->A:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 181
    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    iget-boolean p2, p0, Landroidx/fragment/app/a;->B:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 183
    iget-boolean p2, p0, Landroidx/fragment/app/a;->y:Z

    if-eqz p2, :cond_24

    .line 184
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget-boolean p0, p0, Landroidx/fragment/app/a;->y:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_24
    return-void

    .line 187
    :goto_12
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/a;->q:Lvf;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroidx/fragment/app/a;->q:Lvf;

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 87
    .line 88
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string p0, "null"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string p0, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0
.end method

.method public final u(Lgg;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/fragment/app/a;->B:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string p0, "FragmentManager has been destroyed"

    .line 12
    .line 13
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "FragmentManager has not been attached to a host."

    .line 18
    .line 19
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-boolean v0, p0, Landroidx/fragment/app/a;->z:Z

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Landroidx/fragment/app/a;->A:Z

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string p0, "Can not perform this action after onSaveInstanceState"

    .line 33
    .line 34
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 42
    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "Activity has been destroyed"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/a;->Q()V

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Landroidx/fragment/app/a;->B:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string p0, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "FragmentManager has not been attached to a host."

    .line 20
    .line 21
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 30
    .line 31
    iget-object v1, v1, Lwf;->l:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-ne v0, v1, :cond_5

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    iget-boolean p1, p0, Landroidx/fragment/app/a;->z:Z

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-boolean p1, p0, Landroidx/fragment/app/a;->A:Z

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string p0, "Can not perform this action after onSaveInstanceState"

    .line 51
    .line 52
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/a;->D:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Landroidx/fragment/app/a;->D:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Landroidx/fragment/app/a;->E:Ljava/util/ArrayList;

    .line 73
    .line 74
    :cond_4
    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Landroidx/fragment/app/a;->b:Z

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    const-string p0, "Must be called from main thread of fragment host"

    .line 79
    .line 80
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_6
    const-string p0, "FragmentManager is already executing transactions"

    .line 85
    .line 86
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final w(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->v(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    move v0, p1

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/a;->D:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/a;->E:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    monitor-exit v3

    .line 22
    move v6, p1

    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_3

    .line 26
    :cond_0
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    move v5, p1

    .line 33
    move v6, v5

    .line 34
    :goto_1
    iget-object v7, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-ge v5, v4, :cond_1

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lgg;

    .line 43
    .line 44
    invoke-interface {v7, v1, v2}, Lgg;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    or-int/2addr v6, v7

    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Landroidx/fragment/app/a;->o:Lwf;

    .line 56
    .line 57
    iget-object v1, v1, Lwf;->l:Landroid/os/Handler;

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/fragment/app/a;->H:Lc7;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_2
    if-eqz v6, :cond_2

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    .line 69
    .line 70
    :try_start_2
    iget-object v1, p0, Landroidx/fragment/app/a;->D:Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object v2, p0, Landroidx/fragment/app/a;->E:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/a;->N(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/a;->d()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/a;->d()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/a;->Y()V

    .line 87
    .line 88
    .line 89
    iget-boolean v1, p0, Landroidx/fragment/app/a;->C:Z

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    iput-boolean p1, p0, Landroidx/fragment/app/a;->C:Z

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/a;->X()V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 99
    .line 100
    iget-object p0, p0, Lv5;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 114
    .line 115
    .line 116
    return v0

    .line 117
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    throw p0
.end method

.method public final x(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 1
    iget-object v4, v0, Landroidx/fragment/app/a;->c:Lv5;

    move/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le7;

    iget-boolean v6, v6, Le7;->p:Z

    .line 2
    iget-object v7, v0, Landroidx/fragment/app/a;->F:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Landroidx/fragment/app/a;->F:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    iget-object v7, v0, Landroidx/fragment/app/a;->F:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lv5;->u()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v7, v0, Landroidx/fragment/app/a;->r:Lvf;

    move v9, v5

    const/4 v10, 0x0

    :goto_1
    const/4 v13, 0x1

    if-ge v9, v3, :cond_13

    .line 7
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le7;

    .line 8
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 9
    iget-object v8, v0, Landroidx/fragment/app/a;->F:Ljava/util/ArrayList;

    if-nez v15, :cond_d

    .line 10
    iget-object v15, v14, Le7;->a:Ljava/util/ArrayList;

    const/4 v12, 0x0

    .line 11
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v12, v11, :cond_c

    .line 12
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Log;

    .line 13
    iget v5, v11, Log;->a:I

    if-eq v5, v13, :cond_b

    move/from16 v16, v13

    const/4 v13, 0x2

    if-eq v5, v13, :cond_5

    const/4 v13, 0x3

    if-eq v5, v13, :cond_4

    const/4 v13, 0x6

    if-eq v5, v13, :cond_4

    const/4 v13, 0x7

    if-eq v5, v13, :cond_3

    const/16 v13, 0x8

    if-eq v5, v13, :cond_1

    goto :goto_3

    .line 14
    :cond_1
    new-instance v5, Log;

    const/16 v13, 0x9

    invoke-direct {v5, v13, v7}, Log;-><init>(ILvf;)V

    invoke-virtual {v15, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    .line 15
    iget-object v5, v11, Log;->b:Lvf;

    move-object v7, v5

    :cond_2
    :goto_3
    move/from16 v17, v6

    move/from16 v19, v9

    move/from16 v9, v16

    goto/16 :goto_9

    :cond_3
    move/from16 v19, v9

    move/from16 v9, v16

    :goto_4
    move/from16 v17, v6

    goto/16 :goto_8

    .line 16
    :cond_4
    iget-object v5, v11, Log;->b:Lvf;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object v5, v11, Log;->b:Lvf;

    if-ne v5, v7, :cond_2

    .line 18
    new-instance v7, Log;

    const/16 v13, 0x9

    invoke-direct {v7, v13, v5}, Log;-><init>(ILvf;)V

    invoke-virtual {v15, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v17, v6

    move/from16 v19, v9

    move/from16 v9, v16

    const/4 v7, 0x0

    goto/16 :goto_9

    .line 19
    :cond_5
    iget-object v5, v11, Log;->b:Lvf;

    .line 20
    iget v13, v5, Lvf;->x:I

    .line 21
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v18, v17

    move/from16 v17, v6

    move-object v6, v7

    move/from16 v7, v18

    const/16 v18, 0x0

    :goto_5
    if-ltz v7, :cond_9

    .line 22
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Lvf;

    move/from16 v19, v9

    .line 23
    iget v9, v7, Lvf;->x:I

    if-ne v9, v13, :cond_8

    if-ne v7, v5, :cond_6

    move/from16 v18, v16

    goto :goto_6

    :cond_6
    if-ne v7, v6, :cond_7

    .line 24
    new-instance v6, Log;

    const/16 v9, 0x9

    invoke-direct {v6, v9, v7}, Log;-><init>(ILvf;)V

    invoke-virtual {v15, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    .line 25
    :cond_7
    new-instance v9, Log;

    move-object/from16 v21, v6

    const/4 v6, 0x3

    invoke-direct {v9, v6, v7}, Log;-><init>(ILvf;)V

    .line 26
    iget v6, v11, Log;->c:I

    iput v6, v9, Log;->c:I

    .line 27
    iget v6, v11, Log;->e:I

    iput v6, v9, Log;->e:I

    .line 28
    iget v6, v11, Log;->d:I

    iput v6, v9, Log;->d:I

    .line 29
    iget v6, v11, Log;->f:I

    iput v6, v9, Log;->f:I

    .line 30
    invoke-virtual {v15, v12, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 31
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v21

    :cond_8
    :goto_6
    add-int/lit8 v7, v20, -0x1

    move/from16 v9, v19

    goto :goto_5

    :cond_9
    move/from16 v19, v9

    if-eqz v18, :cond_a

    .line 32
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    move/from16 v9, v16

    goto :goto_7

    :cond_a
    move/from16 v9, v16

    .line 33
    iput v9, v11, Log;->a:I

    .line 34
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    move-object v7, v6

    goto :goto_9

    :cond_b
    move/from16 v19, v9

    move v9, v13

    goto/16 :goto_4

    .line 35
    :goto_8
    iget-object v5, v11, Log;->b:Lvf;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v12, v9

    move/from16 v5, p3

    move v13, v9

    move/from16 v6, v17

    move/from16 v9, v19

    goto/16 :goto_2

    :cond_c
    move/from16 v17, v6

    move/from16 v19, v9

    goto :goto_c

    :cond_d
    move/from16 v17, v6

    move/from16 v19, v9

    move v9, v13

    .line 36
    iget-object v5, v14, Le7;->a:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v9

    :goto_a
    if-ltz v6, :cond_10

    .line 38
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Log;

    .line 39
    iget v12, v11, Log;->a:I

    const/4 v13, 0x3

    if-eq v12, v9, :cond_f

    if-eq v12, v13, :cond_e

    packed-switch v12, :pswitch_data_0

    goto :goto_b

    .line 40
    :pswitch_0
    iget-object v9, v11, Log;->g:Lmk;

    iput-object v9, v11, Log;->h:Lmk;

    goto :goto_b

    .line 41
    :pswitch_1
    iget-object v7, v11, Log;->b:Lvf;

    goto :goto_b

    :pswitch_2
    const/4 v7, 0x0

    goto :goto_b

    .line 42
    :cond_e
    :pswitch_3
    iget-object v9, v11, Log;->b:Lvf;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 43
    :cond_f
    :pswitch_4
    iget-object v9, v11, Log;->b:Lvf;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v6, v6, -0x1

    const/4 v9, 0x1

    goto :goto_a

    :cond_10
    :goto_c
    if-nez v10, :cond_12

    .line 44
    iget-boolean v5, v14, Le7;->g:Z

    if-eqz v5, :cond_11

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v10, 0x1

    :goto_e
    add-int/lit8 v9, v19, 0x1

    move/from16 v5, p3

    move/from16 v6, v17

    goto/16 :goto_1

    :cond_13
    move/from16 v17, v6

    .line 45
    iget-object v5, v0, Landroidx/fragment/app/a;->F:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-nez v17, :cond_16

    .line 46
    iget v5, v0, Landroidx/fragment/app/a;->n:I

    const/4 v9, 0x1

    if-lt v5, v9, :cond_16

    move/from16 v5, p3

    :goto_f
    if-ge v5, v3, :cond_16

    .line 47
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le7;

    .line 48
    iget-object v6, v6, Le7;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :cond_14
    :goto_10
    if-ge v8, v7, :cond_15

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Log;

    .line 49
    iget-object v9, v9, Log;->b:Lvf;

    if-eqz v9, :cond_14

    .line 50
    iget-object v10, v9, Lvf;->s:Landroidx/fragment/app/a;

    if-eqz v10, :cond_14

    .line 51
    invoke-virtual {v0, v9}, Landroidx/fragment/app/a;->f(Lvf;)Landroidx/fragment/app/b;

    move-result-object v9

    .line 52
    invoke-virtual {v4, v9}, Lv5;->A(Landroidx/fragment/app/b;)V

    goto :goto_10

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_16
    move/from16 v4, p3

    :goto_11
    const/4 v5, -0x1

    if-ge v4, v3, :cond_22

    .line 53
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le7;

    .line 54
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 55
    invoke-virtual {v6, v5}, Le7;->c(I)V

    .line 56
    iget-object v5, v6, Le7;->q:Landroidx/fragment/app/a;

    iget-object v7, v6, Le7;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_12
    if-ltz v8, :cond_1d

    .line 57
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Log;

    .line 58
    iget-object v11, v10, Log;->b:Lvf;

    if-eqz v11, :cond_1c

    .line 59
    iget-object v12, v11, Lvf;->I:Ltf;

    if-nez v12, :cond_17

    goto :goto_13

    .line 60
    :cond_17
    invoke-virtual {v11}, Lvf;->d()Ltf;

    move-result-object v12

    iput-boolean v9, v12, Ltf;->a:Z

    .line 61
    :goto_13
    iget v9, v6, Le7;->f:I

    const/16 v12, 0x2002

    const/16 v13, 0x1001

    if-eq v9, v13, :cond_1a

    const/16 v14, 0x1003

    if-eq v9, v14, :cond_19

    if-eq v9, v12, :cond_18

    const/4 v12, 0x0

    goto :goto_14

    :cond_18
    move v12, v13

    goto :goto_14

    :cond_19
    move v12, v14

    .line 62
    :cond_1a
    :goto_14
    iget-object v9, v11, Lvf;->I:Ltf;

    if-nez v9, :cond_1b

    if-nez v12, :cond_1b

    goto :goto_15

    .line 63
    :cond_1b
    invoke-virtual {v11}, Lvf;->d()Ltf;

    .line 64
    iget-object v9, v11, Lvf;->I:Ltf;

    iput v12, v9, Ltf;->f:I

    .line 65
    :goto_15
    invoke-virtual {v11}, Lvf;->d()Ltf;

    .line 66
    iget-object v9, v11, Lvf;->I:Ltf;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    :cond_1c
    iget v9, v10, Log;->a:I

    packed-switch v9, :pswitch_data_1

    .line 68
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cmd: "

    iget v2, v10, Log;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_6
    iget-object v9, v10, Log;->g:Lmk;

    invoke-virtual {v5, v11, v9}, Landroidx/fragment/app/a;->T(Lvf;Lmk;)V

    :goto_16
    const/4 v9, 0x1

    goto/16 :goto_17

    .line 70
    :pswitch_7
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->U(Lvf;)V

    goto :goto_16

    :pswitch_8
    const/4 v9, 0x0

    .line 71
    invoke-virtual {v5, v9}, Landroidx/fragment/app/a;->U(Lvf;)V

    goto :goto_16

    .line 72
    :pswitch_9
    iget v9, v10, Log;->c:I

    iget v12, v10, Log;->d:I

    iget v13, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v9, v12, v13, v10}, Lvf;->I(IIII)V

    const/4 v9, 0x1

    .line 73
    invoke-virtual {v5, v11, v9}, Landroidx/fragment/app/a;->R(Lvf;Z)V

    .line 74
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->g(Lvf;)V

    goto :goto_16

    .line 75
    :pswitch_a
    iget v9, v10, Log;->c:I

    iget v12, v10, Log;->d:I

    iget v13, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v9, v12, v13, v10}, Lvf;->I(IIII)V

    .line 76
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->c(Lvf;)V

    goto :goto_16

    .line 77
    :pswitch_b
    iget v9, v10, Log;->c:I

    iget v12, v10, Log;->d:I

    iget v13, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v9, v12, v13, v10}, Lvf;->I(IIII)V

    const/4 v9, 0x1

    .line 78
    invoke-virtual {v5, v11, v9}, Landroidx/fragment/app/a;->R(Lvf;Z)V

    .line 79
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->D(Lvf;)V

    goto :goto_16

    .line 80
    :pswitch_c
    iget v9, v10, Log;->c:I

    iget v12, v10, Log;->d:I

    iget v13, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v9, v12, v13, v10}, Lvf;->I(IIII)V

    .line 81
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroidx/fragment/app/a;->W(Lvf;)V

    goto :goto_16

    .line 82
    :pswitch_d
    iget v9, v10, Log;->c:I

    iget v12, v10, Log;->d:I

    iget v13, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v9, v12, v13, v10}, Lvf;->I(IIII)V

    .line 83
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->a(Lvf;)Landroidx/fragment/app/b;

    goto :goto_16

    .line 84
    :pswitch_e
    iget v9, v10, Log;->c:I

    iget v12, v10, Log;->d:I

    iget v13, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v9, v12, v13, v10}, Lvf;->I(IIII)V

    const/4 v9, 0x1

    .line 85
    invoke-virtual {v5, v11, v9}, Landroidx/fragment/app/a;->R(Lvf;Z)V

    .line 86
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->M(Lvf;)V

    :goto_17
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_12

    :cond_1d
    const/4 v12, 0x0

    goto/16 :goto_1c

    :cond_1e
    const/4 v9, 0x1

    .line 87
    invoke-virtual {v6, v9}, Le7;->c(I)V

    .line 88
    iget-object v5, v6, Le7;->q:Landroidx/fragment/app/a;

    iget-object v7, v6, Le7;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_18
    if-ge v9, v8, :cond_1d

    .line 89
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Log;

    .line 90
    iget-object v11, v10, Log;->b:Lvf;

    if-eqz v11, :cond_21

    .line 91
    iget-object v12, v11, Lvf;->I:Ltf;

    if-nez v12, :cond_1f

    goto :goto_19

    .line 92
    :cond_1f
    invoke-virtual {v11}, Lvf;->d()Ltf;

    move-result-object v12

    const/4 v13, 0x0

    iput-boolean v13, v12, Ltf;->a:Z

    .line 93
    :goto_19
    iget v12, v6, Le7;->f:I

    .line 94
    iget-object v13, v11, Lvf;->I:Ltf;

    if-nez v13, :cond_20

    if-nez v12, :cond_20

    goto :goto_1a

    .line 95
    :cond_20
    invoke-virtual {v11}, Lvf;->d()Ltf;

    .line 96
    iget-object v13, v11, Lvf;->I:Ltf;

    iput v12, v13, Ltf;->f:I

    .line 97
    :goto_1a
    invoke-virtual {v11}, Lvf;->d()Ltf;

    .line 98
    iget-object v12, v11, Lvf;->I:Ltf;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    :cond_21
    iget v12, v10, Log;->a:I

    packed-switch v12, :pswitch_data_2

    .line 100
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cmd: "

    iget v2, v10, Log;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_10
    iget-object v10, v10, Log;->h:Lmk;

    invoke-virtual {v5, v11, v10}, Landroidx/fragment/app/a;->T(Lvf;Lmk;)V

    const/4 v12, 0x0

    goto/16 :goto_1b

    :pswitch_11
    const/4 v12, 0x0

    .line 102
    invoke-virtual {v5, v12}, Landroidx/fragment/app/a;->U(Lvf;)V

    goto :goto_1b

    :pswitch_12
    const/4 v12, 0x0

    .line 103
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->U(Lvf;)V

    goto :goto_1b

    :pswitch_13
    const/4 v12, 0x0

    .line 104
    iget v13, v10, Log;->c:I

    iget v14, v10, Log;->d:I

    iget v15, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lvf;->I(IIII)V

    const/4 v13, 0x0

    .line 105
    invoke-virtual {v5, v11, v13}, Landroidx/fragment/app/a;->R(Lvf;Z)V

    .line 106
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->c(Lvf;)V

    goto :goto_1b

    :pswitch_14
    const/4 v12, 0x0

    .line 107
    iget v13, v10, Log;->c:I

    iget v14, v10, Log;->d:I

    iget v15, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lvf;->I(IIII)V

    .line 108
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->g(Lvf;)V

    goto :goto_1b

    :pswitch_15
    const/4 v12, 0x0

    .line 109
    iget v13, v10, Log;->c:I

    iget v14, v10, Log;->d:I

    iget v15, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lvf;->I(IIII)V

    const/4 v13, 0x0

    .line 110
    invoke-virtual {v5, v11, v13}, Landroidx/fragment/app/a;->R(Lvf;Z)V

    .line 111
    invoke-static {v11}, Landroidx/fragment/app/a;->W(Lvf;)V

    goto :goto_1b

    :pswitch_16
    const/4 v12, 0x0

    .line 112
    iget v13, v10, Log;->c:I

    iget v14, v10, Log;->d:I

    iget v15, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lvf;->I(IIII)V

    .line 113
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->D(Lvf;)V

    goto :goto_1b

    :pswitch_17
    const/4 v12, 0x0

    .line 114
    iget v13, v10, Log;->c:I

    iget v14, v10, Log;->d:I

    iget v15, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lvf;->I(IIII)V

    .line 115
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->M(Lvf;)V

    goto :goto_1b

    :pswitch_18
    const/4 v12, 0x0

    .line 116
    iget v13, v10, Log;->c:I

    iget v14, v10, Log;->d:I

    iget v15, v10, Log;->e:I

    iget v10, v10, Log;->f:I

    invoke-virtual {v11, v13, v14, v15, v10}, Lvf;->I(IIII)V

    const/4 v13, 0x0

    .line 117
    invoke-virtual {v5, v11, v13}, Landroidx/fragment/app/a;->R(Lvf;Z)V

    .line 118
    invoke-virtual {v5, v11}, Landroidx/fragment/app/a;->a(Lvf;)Landroidx/fragment/app/b;

    :goto_1b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_18

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    :cond_22
    add-int/lit8 v4, v3, -0x1

    .line 119
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v6, p3

    :goto_1d
    if-ge v6, v3, :cond_27

    .line 120
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le7;

    if-eqz v4, :cond_24

    .line 121
    iget-object v8, v7, Le7;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_1e
    if-ltz v8, :cond_26

    .line 122
    iget-object v9, v7, Le7;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Log;

    .line 123
    iget-object v9, v9, Log;->b:Lvf;

    if-eqz v9, :cond_23

    .line 124
    invoke-virtual {v0, v9}, Landroidx/fragment/app/a;->f(Lvf;)Landroidx/fragment/app/b;

    move-result-object v9

    .line 125
    invoke-virtual {v9}, Landroidx/fragment/app/b;->k()V

    :cond_23
    add-int/lit8 v8, v8, -0x1

    goto :goto_1e

    .line 126
    :cond_24
    iget-object v7, v7, Le7;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :cond_25
    :goto_1f
    if-ge v9, v8, :cond_26

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Log;

    .line 127
    iget-object v10, v10, Log;->b:Lvf;

    if-eqz v10, :cond_25

    .line 128
    invoke-virtual {v0, v10}, Landroidx/fragment/app/a;->f(Lvf;)Landroidx/fragment/app/b;

    move-result-object v10

    .line 129
    invoke-virtual {v10}, Landroidx/fragment/app/b;->k()V

    goto :goto_1f

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 130
    :cond_27
    iget v6, v0, Landroidx/fragment/app/a;->n:I

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v9}, Landroidx/fragment/app/a;->I(IZ)V

    .line 131
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move/from16 v7, p3

    :goto_20
    if-ge v7, v3, :cond_2a

    .line 132
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le7;

    .line 133
    iget-object v8, v8, Le7;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :cond_28
    :goto_21
    if-ge v10, v9, :cond_29

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Log;

    .line 134
    iget-object v11, v11, Log;->b:Lvf;

    if-eqz v11, :cond_28

    .line 135
    iget-object v11, v11, Lvf;->E:Landroid/view/ViewGroup;

    if-eqz v11, :cond_28

    .line 136
    invoke-virtual {v0}, Landroidx/fragment/app/a;->C()Lhd;

    move-result-object v12

    .line 137
    invoke-static {v11, v12}, Lgc;->f(Landroid/view/ViewGroup;Lhd;)Lgc;

    move-result-object v11

    .line 138
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 139
    :cond_2a
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgc;

    .line 140
    iput-boolean v4, v6, Lgc;->d:Z

    .line 141
    iget-object v7, v6, Lgc;->b:Ljava/util/ArrayList;

    monitor-enter v7

    .line 142
    :try_start_0
    invoke-virtual {v6}, Lgc;->g()V

    const/4 v13, 0x0

    .line 143
    iput-boolean v13, v6, Lgc;->e:Z

    .line 144
    iget-object v8, v6, Lgc;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_23
    if-ltz v8, :cond_2c

    .line 145
    iget-object v9, v6, Lgc;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls20;

    .line 146
    iget-object v10, v9, Ls20;->c:Lvf;

    .line 147
    iget-object v10, v10, Lvf;->F:Landroid/view/View;

    invoke-static {v10}, Lt20;->c(Landroid/view/View;)I

    move-result v10

    .line 148
    iget v11, v9, Ls20;->a:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_2b

    if-eq v10, v13, :cond_2b

    .line 149
    iget-object v8, v9, Ls20;->c:Lvf;

    .line 150
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v6, Lgc;->e:Z

    goto :goto_24

    :catchall_0
    move-exception v0

    goto :goto_25

    :cond_2b
    const/4 v9, 0x0

    add-int/lit8 v8, v8, -0x1

    goto :goto_23

    :cond_2c
    const/4 v9, 0x0

    const/4 v13, 0x2

    .line 151
    :goto_24
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v6}, Lgc;->c()V

    goto :goto_22

    .line 153
    :goto_25
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2d
    move/from16 v0, p3

    :goto_26
    if-ge v0, v3, :cond_2f

    .line 154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le7;

    .line 155
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 156
    iget v6, v4, Le7;->s:I

    if-ltz v6, :cond_2e

    .line 157
    iput v5, v4, Le7;->s:I

    .line 158
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final y(I)Lvf;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 2
    .line 3
    iget-object v0, p0, Lv5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lvf;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget v3, v2, Lvf;->w:I

    .line 24
    .line 25
    if-ne v3, p1, :cond_0

    .line 26
    .line 27
    return-object v2

    .line 28
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Lv5;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/fragment/app/b;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/fragment/app/b;->c:Lvf;

    .line 58
    .line 59
    iget v1, v0, Lvf;->w:I

    .line 60
    .line 61
    if-ne v1, p1, :cond_2

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lvf;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lv5;

    .line 2
    .line 3
    iget-object v0, p0, Lv5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lvf;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v3, v2, Lvf;->y:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p0, p0, Lv5;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/fragment/app/b;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, v0, Landroidx/fragment/app/b;->c:Lvf;

    .line 62
    .line 63
    iget-object v1, v0, Lvf;->y:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_3
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method
