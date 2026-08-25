.class public final Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lko;

.field public final b:Lv5;

.field public final c:Lvf;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lko;Lv5;Ljava/lang/ClassLoader;Lcg;Lng;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/b;->d:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/fragment/app/b;->b:Lv5;

    .line 13
    .line 14
    iget-object p1, p5, Lng;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p4, p1}, Lcg;->a(Ljava/lang/String;)Lvf;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 21
    .line 22
    iget-object p0, p5, Lng;->j:Landroid/os/Bundle;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1, p0}, Lvf;->J(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p5, Lng;->b:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p0, p1, Lvf;->e:Ljava/lang/String;

    .line 35
    .line 36
    iget-boolean p0, p5, Lng;->c:Z

    .line 37
    .line 38
    iput-boolean p0, p1, Lvf;->m:Z

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    iput-boolean p0, p1, Lvf;->o:Z

    .line 42
    .line 43
    iget p0, p5, Lng;->d:I

    .line 44
    .line 45
    iput p0, p1, Lvf;->w:I

    .line 46
    .line 47
    iget p0, p5, Lng;->e:I

    .line 48
    .line 49
    iput p0, p1, Lvf;->x:I

    .line 50
    .line 51
    iget-object p0, p5, Lng;->f:Ljava/lang/String;

    .line 52
    .line 53
    iput-object p0, p1, Lvf;->y:Ljava/lang/String;

    .line 54
    .line 55
    iget-boolean p0, p5, Lng;->g:Z

    .line 56
    .line 57
    iput-boolean p0, p1, Lvf;->B:Z

    .line 58
    .line 59
    iget-boolean p0, p5, Lng;->h:Z

    .line 60
    .line 61
    iput-boolean p0, p1, Lvf;->l:Z

    .line 62
    .line 63
    iget-boolean p0, p5, Lng;->i:Z

    .line 64
    .line 65
    iput-boolean p0, p1, Lvf;->A:Z

    .line 66
    .line 67
    iget-boolean p0, p5, Lng;->k:Z

    .line 68
    .line 69
    iput-boolean p0, p1, Lvf;->z:Z

    .line 70
    .line 71
    invoke-static {}, Lmk;->values()[Lmk;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget p2, p5, Lng;->l:I

    .line 76
    .line 77
    aget-object p0, p0, p2

    .line 78
    .line 79
    iput-object p0, p1, Lvf;->M:Lmk;

    .line 80
    .line 81
    iget-object p0, p5, Lng;->m:Landroid/os/Bundle;

    .line 82
    .line 83
    if-eqz p0, :cond_1

    .line 84
    .line 85
    iput-object p0, p1, Lvf;->b:Landroid/os/Bundle;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p0, p1, Lvf;->b:Landroid/os/Bundle;

    .line 94
    .line 95
    :goto_0
    const/4 p0, 0x2

    .line 96
    invoke-static {p0}, Landroidx/fragment/app/a;->E(I)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_2

    .line 101
    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p2, "Instantiated fragment "

    .line 105
    .line 106
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string p1, "FragmentManager"

    .line 117
    .line 118
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method

.method public constructor <init>(Lko;Lv5;Lvf;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Landroidx/fragment/app/b;->d:Z

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 125
    iput-object p1, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 126
    iput-object p2, p0, Landroidx/fragment/app/b;->b:Lv5;

    .line 127
    iput-object p3, p0, Landroidx/fragment/app/b;->c:Lvf;

    return-void
.end method

.method public constructor <init>(Lko;Lv5;Lvf;Lng;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Landroidx/fragment/app/b;->d:Z

    const/4 v1, -0x1

    .line 130
    iput v1, p0, Landroidx/fragment/app/b;->e:I

    .line 131
    iput-object p1, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 132
    iput-object p2, p0, Landroidx/fragment/app/b;->b:Lv5;

    .line 133
    iput-object p3, p0, Landroidx/fragment/app/b;->c:Lvf;

    const/4 p0, 0x0

    .line 134
    iput-object p0, p3, Lvf;->c:Landroid/util/SparseArray;

    .line 135
    iput-object p0, p3, Lvf;->d:Landroid/os/Bundle;

    .line 136
    iput v0, p3, Lvf;->r:I

    .line 137
    iput-boolean v0, p3, Lvf;->n:Z

    .line 138
    iput-boolean v0, p3, Lvf;->k:Z

    .line 139
    iget-object p1, p3, Lvf;->g:Lvf;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lvf;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p3, Lvf;->h:Ljava/lang/String;

    .line 140
    iput-object p0, p3, Lvf;->g:Lvf;

    .line 141
    iget-object p0, p4, Lng;->m:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 142
    iput-object p0, p3, Lvf;->b:Landroid/os/Bundle;

    return-void

    .line 143
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iput-object p0, p3, Lvf;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    const/4 v0, 0x3

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
    iget-object v3, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "moveto ACTIVITY_CREATED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, v3, Lvf;->b:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object v1, v3, Lvf;->u:Lig;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/a;->J()V

    .line 34
    .line 35
    .line 36
    iput v0, v3, Lvf;->a:I

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iput-boolean v1, v3, Lvf;->D:Z

    .line 40
    .line 41
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "moveto RESTORE_VIEW_STATE: "

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, v3, Lvf;->F:Landroid/view/View;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object v4, v3, Lvf;->b:Landroid/os/Bundle;

    .line 71
    .line 72
    iget-object v5, v3, Lvf;->c:Landroid/util/SparseArray;

    .line 73
    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 77
    .line 78
    .line 79
    iput-object v2, v3, Lvf;->c:Landroid/util/SparseArray;

    .line 80
    .line 81
    :cond_2
    iget-object v0, v3, Lvf;->F:Landroid/view/View;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v0, v3, Lvf;->O:Lpg;

    .line 86
    .line 87
    iget-object v5, v3, Lvf;->d:Landroid/os/Bundle;

    .line 88
    .line 89
    iget-object v0, v0, Lpg;->c:Lqg;

    .line 90
    .line 91
    invoke-virtual {v0, v5}, Lqg;->b(Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, v3, Lvf;->d:Landroid/os/Bundle;

    .line 95
    .line 96
    :cond_3
    iput-boolean v1, v3, Lvf;->D:Z

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Lvf;->D(Landroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v0, v3, Lvf;->D:Z

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    iget-object v0, v3, Lvf;->F:Landroid/view/View;

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    iget-object v0, v3, Lvf;->O:Lpg;

    .line 110
    .line 111
    sget-object v4, Llk;->ON_CREATE:Llk;

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Lpg;->b(Llk;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    new-instance p0, Ln30;

    .line 118
    .line 119
    const-string v0, "Fragment "

    .line 120
    .line 121
    const-string v1, " did not call through to super.onViewStateRestored()"

    .line 122
    .line 123
    invoke-static {v0, v3, v1}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_5
    :goto_0
    iput-object v2, v3, Lvf;->b:Landroid/os/Bundle;

    .line 132
    .line 133
    iget-object v0, v3, Lvf;->u:Lig;

    .line 134
    .line 135
    iput-boolean v1, v0, Landroidx/fragment/app/a;->z:Z

    .line 136
    .line 137
    iput-boolean v1, v0, Landroidx/fragment/app/a;->A:Z

    .line 138
    .line 139
    iget-object v2, v0, Landroidx/fragment/app/a;->G:Lkg;

    .line 140
    .line 141
    iput-boolean v1, v2, Lkg;->h:Z

    .line 142
    .line 143
    const/4 v2, 0x4

    .line 144
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->s(I)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Lko;->d(Z)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b;->b:Lv5;

    .line 2
    .line 3
    iget-object v0, v0, Lv5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 8
    .line 9
    iget-object v1, p0, Lvf;->E:Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/lit8 v4, v3, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lvf;

    .line 28
    .line 29
    iget-object v6, v5, Lvf;->E:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-ne v6, v1, :cond_1

    .line 32
    .line 33
    iget-object v5, v5, Lvf;->F:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v2, v0, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-ge v3, v4, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lvf;

    .line 60
    .line 61
    iget-object v5, v4, Lvf;->E:Landroid/view/ViewGroup;

    .line 62
    .line 63
    if-ne v5, v1, :cond_3

    .line 64
    .line 65
    iget-object v4, v4, Lvf;->F:Landroid/view/View;

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    goto :goto_1

    .line 75
    :cond_4
    :goto_2
    iget-object v0, p0, Lvf;->E:Landroid/view/ViewGroup;

    .line 76
    .line 77
    iget-object p0, p0, Lvf;->F:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v0, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto ATTACHED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lvf;->g:Lvf;

    .line 30
    .line 31
    const-string v2, " that does not belong to this FragmentManager!"

    .line 32
    .line 33
    const-string v3, " declared target fragment "

    .line 34
    .line 35
    iget-object v4, p0, Landroidx/fragment/app/b;->b:Lv5;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const-string v6, "Fragment "

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Lvf;->e:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v4, v4, Lv5;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/fragment/app/b;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v2, v1, Lvf;->g:Lvf;

    .line 57
    .line 58
    iget-object v2, v2, Lvf;->e:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v2, v1, Lvf;->h:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v5, v1, Lvf;->g:Lvf;

    .line 63
    .line 64
    move-object v5, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, v1, Lvf;->g:Lvf;

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_2
    iget-object v0, v1, Lvf;->h:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object v4, v4, Lv5;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v4, Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v5, v0

    .line 108
    check-cast v5, Landroidx/fragment/app/b;

    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, v1, Lvf;->h:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    .line 143
    .line 144
    invoke-virtual {v5}, Landroidx/fragment/app/b;->k()V

    .line 145
    .line 146
    .line 147
    :cond_5
    iget-object v0, v1, Lvf;->s:Landroidx/fragment/app/a;

    .line 148
    .line 149
    iget-object v2, v0, Landroidx/fragment/app/a;->o:Lwf;

    .line 150
    .line 151
    iput-object v2, v1, Lvf;->t:Lwf;

    .line 152
    .line 153
    iget-object v0, v0, Landroidx/fragment/app/a;->q:Lvf;

    .line 154
    .line 155
    iput-object v0, v1, Lvf;->v:Lvf;

    .line 156
    .line 157
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 158
    .line 159
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Lko;->j(Z)V

    .line 161
    .line 162
    .line 163
    iget-object v2, v1, Lvf;->R:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-nez v4, :cond_8

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 176
    .line 177
    .line 178
    iget-object v2, v1, Lvf;->u:Lig;

    .line 179
    .line 180
    iget-object v3, v1, Lvf;->t:Lwf;

    .line 181
    .line 182
    invoke-virtual {v1}, Lvf;->b()Ls8;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v2, v3, v4, v1}, Landroidx/fragment/app/a;->b(Lwf;Ls8;Lvf;)V

    .line 187
    .line 188
    .line 189
    iput v0, v1, Lvf;->a:I

    .line 190
    .line 191
    iput-boolean v0, v1, Lvf;->D:Z

    .line 192
    .line 193
    iget-object v2, v1, Lvf;->t:Lwf;

    .line 194
    .line 195
    iget-object v2, v2, Lwf;->k:Lz2;

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Lvf;->q(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    iget-boolean v2, v1, Lvf;->D:Z

    .line 201
    .line 202
    if-eqz v2, :cond_7

    .line 203
    .line 204
    iget-object v2, v1, Lvf;->s:Landroidx/fragment/app/a;

    .line 205
    .line 206
    iget-object v2, v2, Landroidx/fragment/app/a;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_6

    .line 217
    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Llg;

    .line 223
    .line 224
    invoke-interface {v3}, Llg;->d()V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_6
    iget-object v1, v1, Lvf;->u:Lig;

    .line 229
    .line 230
    iput-boolean v0, v1, Landroidx/fragment/app/a;->z:Z

    .line 231
    .line 232
    iput-boolean v0, v1, Landroidx/fragment/app/a;->A:Z

    .line 233
    .line 234
    iget-object v2, v1, Landroidx/fragment/app/a;->G:Lkg;

    .line 235
    .line 236
    iput-boolean v0, v2, Lkg;->h:Z

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->s(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lko;->e(Z)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_7
    new-instance p0, Ln30;

    .line 246
    .line 247
    const-string v0, " did not call through to super.onAttach()"

    .line 248
    .line 249
    invoke-static {v6, v1, v0}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p0

    .line 257
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lc2;->l()V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method public final d()I
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 2
    .line 3
    iget-object v1, v0, Lvf;->s:Landroidx/fragment/app/a;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget p0, v0, Lvf;->a:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget v1, p0, Landroidx/fragment/app/b;->e:I

    .line 11
    .line 12
    iget-object v2, v0, Lvf;->M:Lmk;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x5

    .line 20
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x4

    .line 23
    const/4 v8, 0x2

    .line 24
    const/4 v9, 0x1

    .line 25
    if-eq v2, v9, :cond_3

    .line 26
    .line 27
    if-eq v2, v8, :cond_2

    .line 28
    .line 29
    if-eq v2, v6, :cond_1

    .line 30
    .line 31
    if-eq v2, v7, :cond_4

    .line 32
    .line 33
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_4
    :goto_0
    iget-boolean v2, v0, Lvf;->m:Z

    .line 53
    .line 54
    if-eqz v2, :cond_7

    .line 55
    .line 56
    iget-boolean v2, v0, Lvf;->n:Z

    .line 57
    .line 58
    iget p0, p0, Landroidx/fragment/app/b;->e:I

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    invoke-static {p0, v8}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object p0, v0, Lvf;->F:Landroid/view/View;

    .line 67
    .line 68
    if-eqz p0, :cond_7

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-nez p0, :cond_7

    .line 75
    .line 76
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    if-ge p0, v7, :cond_6

    .line 82
    .line 83
    iget p0, v0, Lvf;->a:I

    .line 84
    .line 85
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    goto :goto_1

    .line 90
    :cond_6
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :cond_7
    :goto_1
    iget-boolean p0, v0, Lvf;->k:Z

    .line 95
    .line 96
    if-nez p0, :cond_8

    .line 97
    .line 98
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    :cond_8
    iget-object p0, v0, Lvf;->E:Landroid/view/ViewGroup;

    .line 103
    .line 104
    if-eqz p0, :cond_f

    .line 105
    .line 106
    invoke-virtual {v0}, Lvf;->j()Landroidx/fragment/app/a;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroidx/fragment/app/a;->C()Lhd;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {p0, v2}, Lgc;->f(Landroid/view/ViewGroup;Lhd;)Lgc;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0, v0}, Lgc;->d(Lvf;)Ls20;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-eqz v2, :cond_9

    .line 123
    .line 124
    iget v2, v2, Ls20;->b:I

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_9
    move v2, v3

    .line 128
    :goto_2
    iget-object p0, p0, Lgc;->c:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    :cond_a
    :goto_3
    if-ge v3, v10, :cond_c

    .line 135
    .line 136
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    check-cast v11, Ls20;

    .line 143
    .line 144
    iget-object v12, v11, Ls20;->c:Lvf;

    .line 145
    .line 146
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    if-eq v12, v0, :cond_b

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_b
    iget-boolean v12, v11, Ls20;->f:Z

    .line 153
    .line 154
    if-nez v12, :cond_a

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_c
    const/4 v11, 0x0

    .line 158
    :goto_4
    if-eqz v11, :cond_e

    .line 159
    .line 160
    if-eqz v2, :cond_d

    .line 161
    .line 162
    if-ne v2, v9, :cond_e

    .line 163
    .line 164
    :cond_d
    iget p0, v11, Ls20;->b:I

    .line 165
    .line 166
    move v3, p0

    .line 167
    goto :goto_5

    .line 168
    :cond_e
    move v3, v2

    .line 169
    :cond_f
    :goto_5
    if-ne v3, v8, :cond_10

    .line 170
    .line 171
    const/4 p0, 0x6

    .line 172
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    goto :goto_6

    .line 177
    :cond_10
    if-ne v3, v6, :cond_11

    .line 178
    .line 179
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    goto :goto_6

    .line 184
    :cond_11
    iget-boolean p0, v0, Lvf;->l:Z

    .line 185
    .line 186
    if-eqz p0, :cond_13

    .line 187
    .line 188
    iget p0, v0, Lvf;->r:I

    .line 189
    .line 190
    if-lez p0, :cond_12

    .line 191
    .line 192
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    goto :goto_6

    .line 197
    :cond_12
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    :cond_13
    :goto_6
    iget-boolean p0, v0, Lvf;->G:Z

    .line 202
    .line 203
    if-eqz p0, :cond_14

    .line 204
    .line 205
    iget p0, v0, Lvf;->a:I

    .line 206
    .line 207
    if-ge p0, v4, :cond_14

    .line 208
    .line 209
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    :cond_14
    invoke-static {v8}, Landroidx/fragment/app/a;->E(I)Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_15

    .line 218
    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v2, "computeExpectedState() of "

    .line 222
    .line 223
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v2, " for "

    .line 230
    .line 231
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    const-string v0, "FragmentManager"

    .line 242
    .line 243
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    :cond_15
    return v1
.end method

.method public final e()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto CREATED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v1, Lvf;->L:Z

    .line 30
    .line 31
    iget-object v2, v1, Lvf;->b:Landroid/os/Bundle;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lko;->k(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Lvf;->b:Landroid/os/Bundle;

    .line 43
    .line 44
    iget-object v2, v1, Lvf;->u:Lig;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/fragment/app/a;->J()V

    .line 47
    .line 48
    .line 49
    iput v3, v1, Lvf;->a:I

    .line 50
    .line 51
    iput-boolean v4, v1, Lvf;->D:Z

    .line 52
    .line 53
    iget-object v2, v1, Lvf;->N:Landroidx/lifecycle/a;

    .line 54
    .line 55
    new-instance v5, Landroidx/fragment/app/Fragment$5;

    .line 56
    .line 57
    invoke-direct {v5, v1}, Landroidx/fragment/app/Fragment$5;-><init>(Lvf;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v5}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v1, Lvf;->Q:Lqg;

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lqg;->b(Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lvf;->r(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    iput-boolean v3, v1, Lvf;->L:Z

    .line 72
    .line 73
    iget-boolean v0, v1, Lvf;->D:Z

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v0, v1, Lvf;->N:Landroidx/lifecycle/a;

    .line 78
    .line 79
    sget-object v1, Llk;->ON_CREATE:Llk;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v4}, Lko;->f(Z)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    new-instance p0, Ln30;

    .line 89
    .line 90
    const-string v0, "Fragment "

    .line 91
    .line 92
    const-string v2, " did not call through to super.onCreate()"

    .line 93
    .line 94
    invoke-static {v0, v1, v2}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_2
    if-eqz v2, :cond_3

    .line 103
    .line 104
    const-string p0, "android:support:fragments"

    .line 105
    .line 106
    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-eqz p0, :cond_3

    .line 111
    .line 112
    iget-object v0, v1, Lvf;->u:Lig;

    .line 113
    .line 114
    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->O(Landroid/os/Parcelable;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, v1, Lvf;->u:Lig;

    .line 118
    .line 119
    iput-boolean v4, p0, Landroidx/fragment/app/a;->z:Z

    .line 120
    .line 121
    iput-boolean v4, p0, Landroidx/fragment/app/a;->A:Z

    .line 122
    .line 123
    iget-object v0, p0, Landroidx/fragment/app/a;->G:Lkg;

    .line 124
    .line 125
    iput-boolean v4, v0, Lkg;->h:Z

    .line 126
    .line 127
    invoke-virtual {p0, v3}, Landroidx/fragment/app/a;->s(I)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iput v3, v1, Lvf;->a:I

    .line 131
    .line 132
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 2
    .line 3
    iget-boolean v1, v0, Lvf;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Landroidx/fragment/app/a;->E(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "FragmentManager"

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "moveto CREATE_VIEW: "

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, v0, Lvf;->b:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lvf;->w(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lvf;->K:Landroid/view/LayoutInflater;

    .line 41
    .line 42
    iget-object v3, v0, Lvf;->E:Landroid/view/ViewGroup;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget v3, v0, Lvf;->x:I

    .line 48
    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    const/4 v4, -0x1

    .line 52
    if-eq v3, v4, :cond_4

    .line 53
    .line 54
    iget-object v4, v0, Lvf;->s:Landroidx/fragment/app/a;

    .line 55
    .line 56
    iget-object v4, v4, Landroidx/fragment/app/a;->p:Ls8;

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ls8;->x(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/view/ViewGroup;

    .line 63
    .line 64
    if-nez v3, :cond_6

    .line 65
    .line 66
    iget-boolean v4, v0, Lvf;->o:Z

    .line 67
    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lvf;->k()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget v1, v0, Lvf;->x:I

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    const-string p0, "unknown"

    .line 83
    .line 84
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    iget v2, v0, Lvf;->x:I

    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v4, "No view found for id 0x"

    .line 95
    .line 96
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, " ("

    .line 103
    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p0, ") for fragment "

    .line 111
    .line 112
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    :cond_4
    const-string p0, "Cannot create fragment "

    .line 127
    .line 128
    const-string v1, " for a container view with no id"

    .line 129
    .line 130
    invoke-static {p0, v0, v1}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_5
    const/4 v3, 0x0

    .line 139
    :cond_6
    :goto_1
    iput-object v3, v0, Lvf;->E:Landroid/view/ViewGroup;

    .line 140
    .line 141
    iget-object v4, v0, Lvf;->b:Landroid/os/Bundle;

    .line 142
    .line 143
    invoke-virtual {v0, v1, v3, v4}, Lvf;->E(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lvf;->F:Landroid/view/View;

    .line 147
    .line 148
    const/4 v4, 0x2

    .line 149
    if-eqz v1, :cond_b

    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    invoke-virtual {v1, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lvf;->F:Landroid/view/View;

    .line 156
    .line 157
    const v6, 0x7f0900c0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    if-eqz v3, :cond_7

    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/b;->b()V

    .line 166
    .line 167
    .line 168
    :cond_7
    iget-boolean v1, v0, Lvf;->z:Z

    .line 169
    .line 170
    if-eqz v1, :cond_8

    .line 171
    .line 172
    iget-object v1, v0, Lvf;->F:Landroid/view/View;

    .line 173
    .line 174
    const/16 v3, 0x8

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    :cond_8
    iget-object v1, v0, Lvf;->F:Landroid/view/View;

    .line 180
    .line 181
    sget-object v3, Lu70;->a:Ljava/util/WeakHashMap;

    .line 182
    .line 183
    invoke-static {v1}, Lg70;->b(Landroid/view/View;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    iget-object v3, v0, Lvf;->F:Landroid/view/View;

    .line 188
    .line 189
    if-eqz v1, :cond_9

    .line 190
    .line 191
    invoke-static {v3}, Lh70;->c(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_9
    new-instance v1, Lj9;

    .line 196
    .line 197
    const/4 v6, 0x1

    .line 198
    invoke-direct {v1, v6, v3}, Lj9;-><init>(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 202
    .line 203
    .line 204
    :goto_2
    iget-object v1, v0, Lvf;->b:Landroid/os/Bundle;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lvf;->C(Landroid/os/Bundle;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lvf;->u:Lig;

    .line 210
    .line 211
    invoke-virtual {v1, v4}, Landroidx/fragment/app/a;->s(I)V

    .line 212
    .line 213
    .line 214
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 215
    .line 216
    invoke-virtual {p0, v5}, Lko;->p(Z)V

    .line 217
    .line 218
    .line 219
    iget-object p0, v0, Lvf;->F:Landroid/view/View;

    .line 220
    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    iget-object v1, v0, Lvf;->F:Landroid/view/View;

    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-virtual {v0}, Lvf;->d()Ltf;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    iput v1, v3, Ltf;->j:F

    .line 236
    .line 237
    iget-object v1, v0, Lvf;->E:Landroid/view/ViewGroup;

    .line 238
    .line 239
    if-eqz v1, :cond_b

    .line 240
    .line 241
    if-nez p0, :cond_b

    .line 242
    .line 243
    iget-object p0, v0, Lvf;->F:Landroid/view/View;

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    if-eqz p0, :cond_a

    .line 250
    .line 251
    invoke-virtual {v0}, Lvf;->d()Ltf;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iput-object p0, v1, Ltf;->k:Landroid/view/View;

    .line 256
    .line 257
    invoke-static {v4}, Landroidx/fragment/app/a;->E(I)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_a

    .line 262
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v3, "requestFocus: Saved focused view "

    .line 266
    .line 267
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string p0, " for Fragment "

    .line 274
    .line 275
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    :cond_a
    iget-object p0, v0, Lvf;->F:Landroid/view/View;

    .line 289
    .line 290
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 292
    .line 293
    .line 294
    :cond_b
    iput v4, v0, Lvf;->a:I

    .line 295
    .line 296
    return-void
.end method

.method public final g()V
    .locals 10

    .line 1
    const/4 v0, 0x3

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
    iget-object v3, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "movefrom CREATED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v1, v3, Lvf;->l:Z

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget v1, v3, Lvf;->r:I

    .line 36
    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    move v1, v5

    .line 43
    :goto_1
    iget-object v6, p0, Landroidx/fragment/app/b;->b:Lv5;

    .line 44
    .line 45
    if-nez v1, :cond_7

    .line 46
    .line 47
    iget-object v7, v6, Lv5;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v7, Lkg;

    .line 50
    .line 51
    iget-object v8, v7, Lkg;->c:Ljava/util/HashMap;

    .line 52
    .line 53
    iget-object v9, v3, Lvf;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-nez v8, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    iget-boolean v8, v7, Lkg;->f:Z

    .line 63
    .line 64
    if-eqz v8, :cond_4

    .line 65
    .line 66
    iget-boolean v7, v7, Lkg;->g:Z

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    :goto_2
    move v7, v4

    .line 70
    :goto_3
    if-eqz v7, :cond_5

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    iget-object p0, v3, Lvf;->h:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    invoke-virtual {v6, p0}, Lv5;->l(Ljava/lang/String;)Lvf;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_6

    .line 82
    .line 83
    iget-boolean v0, p0, Lvf;->B:Z

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    iput-object p0, v3, Lvf;->g:Lvf;

    .line 88
    .line 89
    :cond_6
    iput v5, v3, Lvf;->a:I

    .line 90
    .line 91
    return-void

    .line 92
    :cond_7
    :goto_4
    iget-object v7, v3, Lvf;->t:Lwf;

    .line 93
    .line 94
    if-eqz v7, :cond_8

    .line 95
    .line 96
    iget-object v4, v6, Lv5;->d:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v4, Lkg;

    .line 99
    .line 100
    iget-boolean v4, v4, Lkg;->g:Z

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    iget-object v7, v7, Lwf;->k:Lz2;

    .line 104
    .line 105
    if-eqz v7, :cond_9

    .line 106
    .line 107
    invoke-virtual {v7}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    xor-int/2addr v4, v7

    .line 112
    :cond_9
    :goto_5
    if-nez v1, :cond_a

    .line 113
    .line 114
    if-eqz v4, :cond_d

    .line 115
    .line 116
    :cond_a
    iget-object v1, v6, Lv5;->d:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Lkg;

    .line 119
    .line 120
    iget-object v4, v1, Lkg;->e:Ljava/util/HashMap;

    .line 121
    .line 122
    iget-object v1, v1, Lkg;->d:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v7, "Clearing non-config state for "

    .line 133
    .line 134
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_b
    iget-object v0, v3, Lvf;->e:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lkg;

    .line 154
    .line 155
    if-eqz v0, :cond_c

    .line 156
    .line 157
    invoke-virtual {v0}, Lkg;->a()V

    .line 158
    .line 159
    .line 160
    iget-object v0, v3, Lvf;->e:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_c
    iget-object v0, v3, Lvf;->e:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lb80;

    .line 172
    .line 173
    if-eqz v0, :cond_d

    .line 174
    .line 175
    invoke-virtual {v0}, Lb80;->a()V

    .line 176
    .line 177
    .line 178
    iget-object v0, v3, Lvf;->e:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    :cond_d
    iget-object v0, v3, Lvf;->u:Lig;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroidx/fragment/app/a;->k()V

    .line 186
    .line 187
    .line 188
    iget-object v0, v3, Lvf;->N:Landroidx/lifecycle/a;

    .line 189
    .line 190
    sget-object v1, Llk;->ON_DESTROY:Llk;

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 193
    .line 194
    .line 195
    iput v5, v3, Lvf;->a:I

    .line 196
    .line 197
    iput-boolean v5, v3, Lvf;->D:Z

    .line 198
    .line 199
    iput-boolean v5, v3, Lvf;->L:Z

    .line 200
    .line 201
    invoke-virtual {v3}, Lvf;->t()V

    .line 202
    .line 203
    .line 204
    iget-boolean v0, v3, Lvf;->D:Z

    .line 205
    .line 206
    if-eqz v0, :cond_11

    .line 207
    .line 208
    iget-object v0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 209
    .line 210
    invoke-virtual {v0, v5}, Lko;->g(Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Lv5;->n()Ljava/util/ArrayList;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    :cond_e
    :goto_6
    if-ge v5, v1, :cond_f

    .line 222
    .line 223
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    add-int/lit8 v5, v5, 0x1

    .line 228
    .line 229
    check-cast v2, Landroidx/fragment/app/b;

    .line 230
    .line 231
    if-eqz v2, :cond_e

    .line 232
    .line 233
    iget-object v2, v2, Landroidx/fragment/app/b;->c:Lvf;

    .line 234
    .line 235
    iget-object v4, v3, Lvf;->e:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v7, v2, Lvf;->h:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-eqz v4, :cond_e

    .line 244
    .line 245
    iput-object v3, v2, Lvf;->g:Lvf;

    .line 246
    .line 247
    const/4 v4, 0x0

    .line 248
    iput-object v4, v2, Lvf;->h:Ljava/lang/String;

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_f
    iget-object v0, v3, Lvf;->h:Ljava/lang/String;

    .line 252
    .line 253
    if-eqz v0, :cond_10

    .line 254
    .line 255
    invoke-virtual {v6, v0}, Lv5;->l(Ljava/lang/String;)Lvf;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iput-object v0, v3, Lvf;->g:Lvf;

    .line 260
    .line 261
    :cond_10
    invoke-virtual {v6, p0}, Lv5;->B(Landroidx/fragment/app/b;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :cond_11
    new-instance p0, Ln30;

    .line 266
    .line 267
    const-string v0, "Fragment "

    .line 268
    .line 269
    const-string v1, " did not call through to super.onDestroy()"

    .line 270
    .line 271
    invoke-static {v0, v3, v1}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p0
.end method

.method public final h()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom CREATE_VIEW: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lvf;->E:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v2, v1, Lvf;->F:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, v1, Lvf;->u:Lig;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->s(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v1, Lvf;->F:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, v1, Lvf;->O:Lpg;

    .line 51
    .line 52
    invoke-virtual {v0}, Lpg;->d()V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lpg;->b:Landroidx/lifecycle/a;

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/lifecycle/a;->c:Lmk;

    .line 58
    .line 59
    sget-object v3, Lmk;->c:Lmk;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ltz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, v1, Lvf;->O:Lpg;

    .line 68
    .line 69
    sget-object v3, Llk;->ON_DESTROY:Llk;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Lpg;->b(Llk;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iput v2, v1, Lvf;->a:I

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, v1, Lvf;->D:Z

    .line 78
    .line 79
    invoke-virtual {v1}, Lvf;->u()V

    .line 80
    .line 81
    .line 82
    iget-boolean v2, v1, Lvf;->D:Z

    .line 83
    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    invoke-interface {v1}, Lc80;->e()Lb80;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v3, Lhb;->b:Lhb;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const-class v4, Ltl;

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    const-string v6, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 107
    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iget-object v2, v2, Lb80;->a:Ljava/util/LinkedHashMap;

    .line 113
    .line 114
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Lz70;

    .line 119
    .line 120
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_3

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v3, v3, Lib;->a:Ljava/util/AbstractMap;

    .line 136
    .line 137
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 140
    .line 141
    .line 142
    sget-object v3, Lhd;->d:Lhd;

    .line 143
    .line 144
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :try_start_0
    new-instance v3, Ltl;

    .line 148
    .line 149
    invoke-direct {v3}, Ltl;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    :goto_0
    move-object v6, v3

    .line 153
    goto :goto_1

    .line 154
    :catch_0
    new-instance v3, Ltl;

    .line 155
    .line 156
    invoke-direct {v3}, Ltl;-><init>()V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :goto_1
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Lz70;

    .line 165
    .line 166
    if-eqz v2, :cond_4

    .line 167
    .line 168
    invoke-virtual {v2}, Lz70;->a()V

    .line 169
    .line 170
    .line 171
    :cond_4
    :goto_2
    check-cast v6, Ltl;

    .line 172
    .line 173
    iget-object v2, v6, Ltl;->c:Lq20;

    .line 174
    .line 175
    iget v3, v2, Lq20;->c:I

    .line 176
    .line 177
    if-gtz v3, :cond_5

    .line 178
    .line 179
    iput-boolean v0, v1, Lvf;->q:Z

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    iget-object v2, v2, Lq20;->b:[Ljava/lang/Object;

    .line 183
    .line 184
    aget-object v2, v2, v0

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lc2;->l()V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    const-string v2, "Local and anonymous classes can not be ViewModels"

    .line 194
    .line 195
    invoke-static {v2}, Lc2;->n(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :goto_3
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 199
    .line 200
    invoke-virtual {p0, v0}, Lko;->q(Z)V

    .line 201
    .line 202
    .line 203
    const/4 p0, 0x0

    .line 204
    iput-object p0, v1, Lvf;->E:Landroid/view/ViewGroup;

    .line 205
    .line 206
    iput-object p0, v1, Lvf;->F:Landroid/view/View;

    .line 207
    .line 208
    iput-object p0, v1, Lvf;->O:Lpg;

    .line 209
    .line 210
    iget-object v2, v1, Lvf;->P:Landroidx/lifecycle/b;

    .line 211
    .line 212
    invoke-virtual {v2, p0}, Landroidx/lifecycle/b;->e(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    iput-boolean v0, v1, Lvf;->n:Z

    .line 216
    .line 217
    return-void

    .line 218
    :cond_7
    new-instance p0, Ln30;

    .line 219
    .line 220
    const-string v0, "Fragment "

    .line 221
    .line 222
    const-string v2, " did not call through to super.onDestroyView()"

    .line 223
    .line 224
    invoke-static {v0, v1, v2}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p0
.end method

.method public final i()V
    .locals 8

    .line 1
    const/4 v0, 0x3

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
    iget-object v3, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "movefrom ATTACHED: "

    .line 15
    .line 16
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, -0x1

    .line 30
    iput v1, v3, Lvf;->a:I

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    iput-boolean v4, v3, Lvf;->D:Z

    .line 34
    .line 35
    invoke-virtual {v3}, Lvf;->v()V

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    iput-object v5, v3, Lvf;->K:Landroid/view/LayoutInflater;

    .line 40
    .line 41
    iget-boolean v6, v3, Lvf;->D:Z

    .line 42
    .line 43
    if-eqz v6, :cond_8

    .line 44
    .line 45
    iget-object v6, v3, Lvf;->u:Lig;

    .line 46
    .line 47
    iget-boolean v7, v6, Landroidx/fragment/app/a;->B:Z

    .line 48
    .line 49
    if-nez v7, :cond_1

    .line 50
    .line 51
    invoke-virtual {v6}, Landroidx/fragment/app/a;->k()V

    .line 52
    .line 53
    .line 54
    new-instance v6, Lig;

    .line 55
    .line 56
    invoke-direct {v6}, Landroidx/fragment/app/a;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v6, v3, Lvf;->u:Lig;

    .line 60
    .line 61
    :cond_1
    iget-object v6, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 62
    .line 63
    invoke-virtual {v6, v4}, Lko;->h(Z)V

    .line 64
    .line 65
    .line 66
    iput v1, v3, Lvf;->a:I

    .line 67
    .line 68
    iput-object v5, v3, Lvf;->t:Lwf;

    .line 69
    .line 70
    iput-object v5, v3, Lvf;->v:Lvf;

    .line 71
    .line 72
    iput-object v5, v3, Lvf;->s:Landroidx/fragment/app/a;

    .line 73
    .line 74
    iget-boolean v1, v3, Lvf;->l:Z

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget v1, v3, Lvf;->r:I

    .line 79
    .line 80
    if-lez v1, :cond_5

    .line 81
    .line 82
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/b;->b:Lv5;

    .line 83
    .line 84
    iget-object p0, p0, Lv5;->d:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p0, Lkg;

    .line 87
    .line 88
    iget-object v1, p0, Lkg;->c:Ljava/util/HashMap;

    .line 89
    .line 90
    iget-object v6, v3, Lvf;->e:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget-boolean v1, p0, Lkg;->f:Z

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    iget-boolean p0, p0, Lkg;->g:Z

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 107
    :goto_1
    if-eqz p0, :cond_7

    .line 108
    .line 109
    :cond_5
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v0, "initState called for fragment: "

    .line 118
    .line 119
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_6
    new-instance p0, Landroidx/lifecycle/a;

    .line 133
    .line 134
    invoke-direct {p0, v3}, Landroidx/lifecycle/a;-><init>(Lsk;)V

    .line 135
    .line 136
    .line 137
    iput-object p0, v3, Lvf;->N:Landroidx/lifecycle/a;

    .line 138
    .line 139
    new-instance p0, Lqg;

    .line 140
    .line 141
    invoke-direct {p0, v3}, Lqg;-><init>(Lvz;)V

    .line 142
    .line 143
    .line 144
    iput-object p0, v3, Lvf;->Q:Lqg;

    .line 145
    .line 146
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    iput-object p0, v3, Lvf;->e:Ljava/lang/String;

    .line 155
    .line 156
    iput-boolean v4, v3, Lvf;->k:Z

    .line 157
    .line 158
    iput-boolean v4, v3, Lvf;->l:Z

    .line 159
    .line 160
    iput-boolean v4, v3, Lvf;->m:Z

    .line 161
    .line 162
    iput-boolean v4, v3, Lvf;->n:Z

    .line 163
    .line 164
    iput-boolean v4, v3, Lvf;->o:Z

    .line 165
    .line 166
    iput v4, v3, Lvf;->r:I

    .line 167
    .line 168
    iput-object v5, v3, Lvf;->s:Landroidx/fragment/app/a;

    .line 169
    .line 170
    new-instance p0, Lig;

    .line 171
    .line 172
    invoke-direct {p0}, Landroidx/fragment/app/a;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object p0, v3, Lvf;->u:Lig;

    .line 176
    .line 177
    iput-object v5, v3, Lvf;->t:Lwf;

    .line 178
    .line 179
    iput v4, v3, Lvf;->w:I

    .line 180
    .line 181
    iput v4, v3, Lvf;->x:I

    .line 182
    .line 183
    iput-object v5, v3, Lvf;->y:Ljava/lang/String;

    .line 184
    .line 185
    iput-boolean v4, v3, Lvf;->z:Z

    .line 186
    .line 187
    iput-boolean v4, v3, Lvf;->A:Z

    .line 188
    .line 189
    :cond_7
    return-void

    .line 190
    :cond_8
    new-instance p0, Ln30;

    .line 191
    .line 192
    const-string v0, "Fragment "

    .line 193
    .line 194
    const-string v1, " did not call through to super.onDetach()"

    .line 195
    .line 196
    invoke-static {v0, v3, v1}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p0
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 2
    .line 3
    iget-boolean v1, v0, Lvf;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Lvf;->n:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, v0, Lvf;->q:Z

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Landroidx/fragment/app/a;->E(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "moveto CREATE_VIEW: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "FragmentManager"

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, v0, Lvf;->b:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lvf;->w(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v0, Lvf;->K:Landroid/view/LayoutInflater;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    iget-object v3, v0, Lvf;->b:Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lvf;->E(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lvf;->F:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lvf;->F:Landroid/view/View;

    .line 64
    .line 65
    const v3, 0x7f0900c0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v1, v0, Lvf;->z:Z

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    iget-object v1, v0, Lvf;->F:Landroid/view/View;

    .line 76
    .line 77
    const/16 v3, 0x8

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v1, v0, Lvf;->b:Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lvf;->C(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lvf;->u:Lig;

    .line 88
    .line 89
    const/4 v3, 0x2

    .line 90
    invoke-virtual {v1, v3}, Landroidx/fragment/app/a;->s(I)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lko;->p(Z)V

    .line 96
    .line 97
    .line 98
    iput v3, v0, Lvf;->a:I

    .line 99
    .line 100
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/b;->d:Z

    .line 2
    .line 3
    const-string v1, "FragmentManager"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {v2}, Landroidx/fragment/app/a;->E(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 35
    const/4 v4, 0x0

    .line 36
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/b;->d:Z

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/b;->d()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget v6, v3, Lvf;->a:I

    .line 43
    .line 44
    const/4 v7, 0x3

    .line 45
    if-eq v5, v6, :cond_9

    .line 46
    .line 47
    if-le v5, v6, :cond_4

    .line 48
    .line 49
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    packed-switch v6, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/b;->n()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :pswitch_1
    const/4 v5, 0x6

    .line 63
    iput v5, v3, Lvf;->a:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/b;->p()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_3
    iget-object v5, v3, Lvf;->F:Landroid/view/View;

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iget-object v5, v3, Lvf;->E:Landroid/view/ViewGroup;

    .line 75
    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    invoke-virtual {v3}, Lvf;->j()Landroidx/fragment/app/a;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Landroidx/fragment/app/a;->C()Lhd;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v5, v6}, Lgc;->f(Landroid/view/ViewGroup;Lhd;)Lgc;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    iget-object v6, v3, Lvf;->F:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-static {v6}, Lt20;->b(I)I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    invoke-static {v2}, Landroidx/fragment/app/a;->E(I)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v8, "SpecialEffectsController: Enqueuing add operation for fragment "

    .line 109
    .line 110
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-virtual {v5, v6, v2, p0}, Lgc;->a(IILandroidx/fragment/app/b;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    const/4 v5, 0x4

    .line 127
    iput v5, v3, Lvf;->a:I

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/b;->a()V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/b;->j()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/b;->f()V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/b;->e()V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/b;->c()V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_4
    add-int/lit8 v6, v6, -0x1

    .line 150
    .line 151
    packed-switch v6, :pswitch_data_1

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/b;->l()V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :pswitch_9
    const/4 v5, 0x5

    .line 160
    iput v5, v3, Lvf;->a:I

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/b;->q()V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :pswitch_b
    invoke-static {v7}, Landroidx/fragment/app/a;->E(I)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_5

    .line 173
    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v6, "movefrom ACTIVITY_CREATED: "

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    :cond_5
    iget-object v5, v3, Lvf;->F:Landroid/view/View;

    .line 195
    .line 196
    if-eqz v5, :cond_6

    .line 197
    .line 198
    iget-object v5, v3, Lvf;->c:Landroid/util/SparseArray;

    .line 199
    .line 200
    if-nez v5, :cond_6

    .line 201
    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/b;->o()V

    .line 203
    .line 204
    .line 205
    :cond_6
    iget-object v5, v3, Lvf;->F:Landroid/view/View;

    .line 206
    .line 207
    if-eqz v5, :cond_8

    .line 208
    .line 209
    iget-object v5, v3, Lvf;->E:Landroid/view/ViewGroup;

    .line 210
    .line 211
    if-eqz v5, :cond_8

    .line 212
    .line 213
    invoke-virtual {v3}, Lvf;->j()Landroidx/fragment/app/a;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v6}, Landroidx/fragment/app/a;->C()Lhd;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-static {v5, v6}, Lgc;->f(Landroid/view/ViewGroup;Lhd;)Lgc;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-static {v2}, Landroidx/fragment/app/a;->E(I)Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_7

    .line 230
    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    .line 234
    .line 235
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    :cond_7
    invoke-virtual {v5, v0, v7, p0}, Lgc;->a(IILandroidx/fragment/app/b;)V

    .line 249
    .line 250
    .line 251
    :cond_8
    iput v7, v3, Lvf;->a:I

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :pswitch_c
    iput-boolean v4, v3, Lvf;->n:Z

    .line 256
    .line 257
    iput v2, v3, Lvf;->a:I

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/b;->h()V

    .line 262
    .line 263
    .line 264
    iput v0, v3, Lvf;->a:I

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/b;->g()V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/b;->i()V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_9
    iget-boolean v5, v3, Lvf;->J:Z

    .line 279
    .line 280
    if-eqz v5, :cond_f

    .line 281
    .line 282
    iget-object v5, v3, Lvf;->F:Landroid/view/View;

    .line 283
    .line 284
    if-eqz v5, :cond_d

    .line 285
    .line 286
    iget-object v5, v3, Lvf;->E:Landroid/view/ViewGroup;

    .line 287
    .line 288
    if-eqz v5, :cond_d

    .line 289
    .line 290
    invoke-virtual {v3}, Lvf;->j()Landroidx/fragment/app/a;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-virtual {v6}, Landroidx/fragment/app/a;->C()Lhd;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-static {v5, v6}, Lgc;->f(Landroid/view/ViewGroup;Lhd;)Lgc;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    iget-boolean v6, v3, Lvf;->z:Z

    .line 303
    .line 304
    if-eqz v6, :cond_b

    .line 305
    .line 306
    invoke-static {v2}, Landroidx/fragment/app/a;->E(I)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_a

    .line 311
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    .line 315
    .line 316
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    :cond_a
    invoke-virtual {v5, v7, v0, p0}, Lgc;->a(IILandroidx/fragment/app/b;)V

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_b
    invoke-static {v2}, Landroidx/fragment/app/a;->E(I)Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-eqz v6, :cond_c

    .line 338
    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    .line 342
    .line 343
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    :cond_c
    invoke-virtual {v5, v2, v0, p0}, Lgc;->a(IILandroidx/fragment/app/b;)V

    .line 357
    .line 358
    .line 359
    :cond_d
    :goto_1
    iget-object v1, v3, Lvf;->s:Landroidx/fragment/app/a;

    .line 360
    .line 361
    if-eqz v1, :cond_e

    .line 362
    .line 363
    iget-boolean v2, v3, Lvf;->k:Z

    .line 364
    .line 365
    if-eqz v2, :cond_e

    .line 366
    .line 367
    invoke-static {v3}, Landroidx/fragment/app/a;->F(Lvf;)Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_e

    .line 372
    .line 373
    iput-boolean v0, v1, Landroidx/fragment/app/a;->y:Z

    .line 374
    .line 375
    :cond_e
    iput-boolean v4, v3, Lvf;->J:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .line 377
    :cond_f
    iput-boolean v4, p0, Landroidx/fragment/app/b;->d:Z

    .line 378
    .line 379
    return-void

    .line 380
    :goto_2
    iput-boolean v4, p0, Landroidx/fragment/app/b;->d:Z

    .line 381
    .line 382
    throw v0

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom RESUMED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lvf;->u:Lig;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->s(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v1, Lvf;->F:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, v1, Lvf;->O:Lpg;

    .line 40
    .line 41
    sget-object v2, Llk;->ON_PAUSE:Llk;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lpg;->b(Llk;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, v1, Lvf;->N:Landroidx/lifecycle/a;

    .line 47
    .line 48
    sget-object v2, Llk;->ON_PAUSE:Llk;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x6

    .line 54
    iput v0, v1, Lvf;->a:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, v1, Lvf;->D:Z

    .line 58
    .line 59
    invoke-virtual {v1}, Lvf;->x()V

    .line 60
    .line 61
    .line 62
    iget-boolean v2, v1, Lvf;->D:Z

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lko;->i(Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance p0, Ln30;

    .line 73
    .line 74
    const-string v0, "Fragment "

    .line 75
    .line 76
    const-string v2, " did not call through to super.onPause()"

    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 2
    .line 3
    iget-object v0, p0, Lvf;->b:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lvf;->b:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v0, "android:view_state"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lvf;->c:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget-object p1, p0, Lvf;->b:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v0, "android:view_registry_state"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lvf;->d:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object p1, p0, Lvf;->b:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v0, "android:target_state"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lvf;->h:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lvf;->b:Landroid/os/Bundle;

    .line 44
    .line 45
    const-string v0, "android:target_req_state"

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lvf;->i:I

    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Lvf;->b:Landroid/os/Bundle;

    .line 55
    .line 56
    const-string v0, "android:user_visible_hint"

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput-boolean p1, p0, Lvf;->H:Z

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iput-boolean v1, p0, Lvf;->G:Z

    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-string v1, "FragmentManager"

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "moveto RESUMED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v2, Lvf;->I:Ltf;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move-object v0, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v0, Ltf;->k:Landroid/view/View;

    .line 37
    .line 38
    :goto_0
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object v4, v2, Lvf;->F:Landroid/view/View;

    .line 41
    .line 42
    if-ne v0, v4, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :goto_1
    if-eqz v4, :cond_5

    .line 50
    .line 51
    iget-object v5, v2, Lvf;->F:Landroid/view/View;

    .line 52
    .line 53
    if-ne v4, v5, :cond_4

    .line 54
    .line 55
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x2

    .line 60
    invoke-static {v5}, Landroidx/fragment/app/a;->E(I)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, "requestFocus: Restoring focused view "

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " "

    .line 77
    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    const-string v0, "succeeded"

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const-string v0, "failed"

    .line 87
    .line 88
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " on Fragment "

    .line 92
    .line 93
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " resulting in focused view "

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v0, v2, Lvf;->F:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    :goto_4
    invoke-virtual {v2}, Lvf;->d()Ltf;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v3, v0, Ltf;->k:Landroid/view/View;

    .line 131
    .line 132
    iget-object v0, v2, Lvf;->u:Lig;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/fragment/app/a;->J()V

    .line 135
    .line 136
    .line 137
    iget-object v0, v2, Lvf;->u:Lig;

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->w(Z)Z

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x7

    .line 144
    iput v0, v2, Lvf;->a:I

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    iput-boolean v1, v2, Lvf;->D:Z

    .line 148
    .line 149
    invoke-virtual {v2}, Lvf;->y()V

    .line 150
    .line 151
    .line 152
    iget-boolean v4, v2, Lvf;->D:Z

    .line 153
    .line 154
    if-eqz v4, :cond_7

    .line 155
    .line 156
    iget-object v4, v2, Lvf;->N:Landroidx/lifecycle/a;

    .line 157
    .line 158
    sget-object v5, Llk;->ON_RESUME:Llk;

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 161
    .line 162
    .line 163
    iget-object v4, v2, Lvf;->F:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v4, :cond_6

    .line 166
    .line 167
    iget-object v4, v2, Lvf;->O:Lpg;

    .line 168
    .line 169
    iget-object v4, v4, Lpg;->b:Landroidx/lifecycle/a;

    .line 170
    .line 171
    invoke-virtual {v4, v5}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    iget-object v4, v2, Lvf;->u:Lig;

    .line 175
    .line 176
    iput-boolean v1, v4, Landroidx/fragment/app/a;->z:Z

    .line 177
    .line 178
    iput-boolean v1, v4, Landroidx/fragment/app/a;->A:Z

    .line 179
    .line 180
    iget-object v5, v4, Landroidx/fragment/app/a;->G:Lkg;

    .line 181
    .line 182
    iput-boolean v1, v5, Lkg;->h:Z

    .line 183
    .line 184
    invoke-virtual {v4, v0}, Landroidx/fragment/app/a;->s(I)V

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 188
    .line 189
    invoke-virtual {p0, v1}, Lko;->l(Z)V

    .line 190
    .line 191
    .line 192
    iput-object v3, v2, Lvf;->b:Landroid/os/Bundle;

    .line 193
    .line 194
    iput-object v3, v2, Lvf;->c:Landroid/util/SparseArray;

    .line 195
    .line 196
    iput-object v3, v2, Lvf;->d:Landroid/os/Bundle;

    .line 197
    .line 198
    return-void

    .line 199
    :cond_7
    new-instance p0, Ln30;

    .line 200
    .line 201
    const-string v0, "Fragment "

    .line 202
    .line 203
    const-string v1, " did not call through to super.onResume()"

    .line 204
    .line 205
    invoke-static {v0, v2, v1}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 2
    .line 3
    iget-object v0, p0, Lvf;->F:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lvf;->F:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    iput-object v0, p0, Lvf;->c:Landroid/util/SparseArray;

    .line 25
    .line 26
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lvf;->O:Lpg;

    .line 32
    .line 33
    iget-object v1, v1, Lpg;->c:Lqg;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lqg;->c(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    iput-object v0, p0, Lvf;->d:Landroid/os/Bundle;

    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "moveto STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lvf;->u:Lig;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/a;->J()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Lvf;->u:Lig;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->w(Z)Z

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    iput v0, v1, Lvf;->a:I

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    iput-boolean v2, v1, Lvf;->D:Z

    .line 45
    .line 46
    invoke-virtual {v1}, Lvf;->A()V

    .line 47
    .line 48
    .line 49
    iget-boolean v3, v1, Lvf;->D:Z

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-object v3, v1, Lvf;->N:Landroidx/lifecycle/a;

    .line 54
    .line 55
    sget-object v4, Llk;->ON_START:Llk;

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v1, Lvf;->F:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object v3, v1, Lvf;->O:Lpg;

    .line 65
    .line 66
    iget-object v3, v3, Lpg;->b:Landroidx/lifecycle/a;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v1, v1, Lvf;->u:Lig;

    .line 72
    .line 73
    iput-boolean v2, v1, Landroidx/fragment/app/a;->z:Z

    .line 74
    .line 75
    iput-boolean v2, v1, Landroidx/fragment/app/a;->A:Z

    .line 76
    .line 77
    iget-object v3, v1, Landroidx/fragment/app/a;->G:Lkg;

    .line 78
    .line 79
    iput-boolean v2, v3, Lkg;->h:Z

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->s(I)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Lko;->n(Z)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    new-instance p0, Ln30;

    .line 91
    .line 92
    const-string v0, "Fragment "

    .line 93
    .line 94
    const-string v2, " did not call through to super.onStart()"

    .line 95
    .line 96
    invoke-static {v0, v1, v2}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method public final q()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/a;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/b;->c:Lvf;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "movefrom STARTED: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "FragmentManager"

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v1, Lvf;->u:Lig;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, v0, Landroidx/fragment/app/a;->A:Z

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/fragment/app/a;->G:Lkg;

    .line 35
    .line 36
    iput-boolean v2, v3, Lkg;->h:Z

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->s(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Lvf;->F:Landroid/view/View;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v1, Lvf;->O:Lpg;

    .line 47
    .line 48
    sget-object v3, Llk;->ON_STOP:Llk;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lpg;->b(Llk;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, v1, Lvf;->N:Landroidx/lifecycle/a;

    .line 54
    .line 55
    sget-object v3, Llk;->ON_STOP:Llk;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 58
    .line 59
    .line 60
    iput v2, v1, Lvf;->a:I

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, v1, Lvf;->D:Z

    .line 64
    .line 65
    invoke-virtual {v1}, Lvf;->B()V

    .line 66
    .line 67
    .line 68
    iget-boolean v2, v1, Lvf;->D:Z

    .line 69
    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    iget-object p0, p0, Landroidx/fragment/app/b;->a:Lko;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lko;->o(Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    new-instance p0, Ln30;

    .line 79
    .line 80
    const-string v0, "Fragment "

    .line 81
    .line 82
    const-string v2, " did not call through to super.onStop()"

    .line 83
    .line 84
    invoke-static {v0, v1, v2}, Lt20;->e(Ljava/lang/String;Lvf;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method
