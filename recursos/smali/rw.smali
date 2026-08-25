.class public final Lrw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Lqw;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrw;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lrw;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lrw;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lrw;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lrw;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lrw;->e:I

    .line 31
    .line 32
    iput p1, p0, Lrw;->f:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lnu;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->h(Lnu;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lnu;->a:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Lrw;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->l0:Lzw;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Lzw;->j()Lw;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v4, v2, Lyw;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    check-cast v2, Lyw;

    .line 22
    .line 23
    iget-object v2, v2, Lyw;->e:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lw;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v2, v3

    .line 33
    :goto_0
    invoke-static {v0, v2}, Lu70;->h(Landroid/view/View;Lw;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->e0:Lvw;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Lko;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lko;->I(Lnu;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iput-object v3, p1, Lnu;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    invoke-virtual {p0}, Lrw;->c()Lqw;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget p2, p1, Lnu;->f:I

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Lqw;->a(I)Lpw;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Lpw;->a:Ljava/util/ArrayList;

    .line 63
    .line 64
    iget-object p0, p0, Lqw;->a:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Lpw;

    .line 71
    .line 72
    iget p0, p0, Lpw;->b:I

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-gt p0, p2, :cond_3

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    invoke-virtual {p1}, Lnu;->n()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final b(I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lrw;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Lvw;

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lvw;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-boolean v0, v0, Lvw;->f:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lz1;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lz1;->g(II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 27
    .line 28
    invoke-virtual {v0}, Lvw;->b()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "invalid position "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ". State item count is "

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1
.end method

.method public final c()Lqw;
    .locals 2

    .line 1
    iget-object v0, p0, Lrw;->g:Lqw;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lqw;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lqw;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Lqw;->b:I

    .line 19
    .line 20
    iput-object v0, p0, Lrw;->g:Lqw;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lrw;->g:Lqw;

    .line 23
    .line 24
    return-object p0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrw;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lrw;->e(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->u0:[I

    .line 21
    .line 22
    iget-object p0, p0, Lrw;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Loh;

    .line 25
    .line 26
    iget-object v0, p0, Loh;->c:[I

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Loh;->d:I

    .line 36
    .line 37
    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrw;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lnu;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v1, v2}, Lrw;->a(Lnu;Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Lnu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnu;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lrw;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lnu;->j()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, v0, Lnu;->n:Lrw;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lrw;->j(Lnu;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Lnu;->q()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget p1, v0, Lnu;->j:I

    .line 36
    .line 37
    and-int/lit8 p1, p1, -0x21

    .line 38
    .line 39
    iput p1, v0, Lnu;->j:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lrw;->g(Lnu;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->K:Lhw;

    .line 45
    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lnu;->h()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->K:Lhw;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lhw;->d(Lnu;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final g(Lnu;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lrw;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:Loh;

    .line 4
    .line 5
    invoke-virtual {p1}, Lnu;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p1, Lnu;->a:Landroid/view/View;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v2, :cond_f

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lnu;->k()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_e

    .line 28
    .line 29
    invoke-virtual {p1}, Lnu;->p()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_d

    .line 34
    .line 35
    iget v2, p1, Lnu;->j:I

    .line 36
    .line 37
    and-int/lit8 v2, v2, 0x10

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    sget-object v2, Lu70;->a:Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-static {v3}, Le70;->i(Landroid/view/View;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    move v2, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v2, v4

    .line 52
    :goto_0
    invoke-virtual {p1}, Lnu;->h()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_b

    .line 57
    .line 58
    iget v3, p0, Lrw;->f:I

    .line 59
    .line 60
    if-lez v3, :cond_9

    .line 61
    .line 62
    iget v3, p1, Lnu;->j:I

    .line 63
    .line 64
    and-int/lit16 v3, v3, 0x20e

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_2
    iget-object v3, p0, Lrw;->c:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    iget v7, p0, Lrw;->f:I

    .line 76
    .line 77
    if-lt v6, v7, :cond_3

    .line 78
    .line 79
    if-lez v6, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Lrw;->e(I)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v6, v6, -0x1

    .line 85
    .line 86
    :cond_3
    sget-object v7, Landroidx/recyclerview/widget/RecyclerView;->u0:[I

    .line 87
    .line 88
    if-lez v6, :cond_8

    .line 89
    .line 90
    iget v7, p1, Lnu;->c:I

    .line 91
    .line 92
    iget-object v8, v1, Loh;->c:[I

    .line 93
    .line 94
    if-eqz v8, :cond_5

    .line 95
    .line 96
    iget v8, v1, Loh;->d:I

    .line 97
    .line 98
    mul-int/lit8 v8, v8, 0x2

    .line 99
    .line 100
    move v9, v4

    .line 101
    :goto_1
    if-ge v9, v8, :cond_5

    .line 102
    .line 103
    iget-object v10, v1, Loh;->c:[I

    .line 104
    .line 105
    aget v10, v10, v9

    .line 106
    .line 107
    if-ne v10, v7, :cond_4

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    add-int/lit8 v9, v9, 0x2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    add-int/lit8 v6, v6, -0x1

    .line 114
    .line 115
    :goto_2
    if-ltz v6, :cond_7

    .line 116
    .line 117
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Lnu;

    .line 122
    .line 123
    iget v7, v7, Lnu;->c:I

    .line 124
    .line 125
    iget-object v8, v1, Loh;->c:[I

    .line 126
    .line 127
    if-eqz v8, :cond_7

    .line 128
    .line 129
    iget v8, v1, Loh;->d:I

    .line 130
    .line 131
    mul-int/lit8 v8, v8, 0x2

    .line 132
    .line 133
    move v9, v4

    .line 134
    :goto_3
    if-ge v9, v8, :cond_7

    .line 135
    .line 136
    iget-object v10, v1, Loh;->c:[I

    .line 137
    .line 138
    aget v10, v10, v9

    .line 139
    .line 140
    if-ne v10, v7, :cond_6

    .line 141
    .line 142
    add-int/lit8 v6, v6, -0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    add-int/lit8 v9, v9, 0x2

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    add-int/2addr v6, v5

    .line 149
    :cond_8
    :goto_4
    invoke-virtual {v3, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    move v1, v5

    .line 153
    goto :goto_6

    .line 154
    :cond_9
    :goto_5
    move v1, v4

    .line 155
    :goto_6
    if-nez v1, :cond_a

    .line 156
    .line 157
    invoke-virtual {p0, p1, v5}, Lrw;->a(Lnu;Z)V

    .line 158
    .line 159
    .line 160
    :goto_7
    move v4, v1

    .line 161
    goto :goto_8

    .line 162
    :cond_a
    move v5, v4

    .line 163
    goto :goto_7

    .line 164
    :cond_b
    move v5, v4

    .line 165
    :goto_8
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Lko;

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lko;->I(Lnu;)V

    .line 168
    .line 169
    .line 170
    if-nez v4, :cond_c

    .line 171
    .line 172
    if-nez v5, :cond_c

    .line 173
    .line 174
    if-eqz v2, :cond_c

    .line 175
    .line 176
    const/4 p0, 0x0

    .line 177
    iput-object p0, p1, Lnu;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    .line 179
    :cond_c
    return-void

    .line 180
    :cond_d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    const-string p1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 185
    .line 186
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 195
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 199
    .line 200
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p0

    .line 221
    :cond_f
    :goto_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    .line 226
    .line 227
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Lnu;->j()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string p1, " isAttached:"

    .line 238
    .line 239
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_10

    .line 247
    .line 248
    move v4, v5

    .line 249
    :cond_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p0
.end method

.method public final h(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Lnu;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lnu;->j:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xc

    .line 8
    .line 9
    iget-object v1, p0, Lrw;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lnu;->l()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->K:Lhw;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Lnu;->d()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v0, Lzb;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-boolean v0, v0, Lzb;->g:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lnu;->g()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lrw;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lrw;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    :cond_2
    iput-object p0, p1, Lnu;->n:Lrw;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p1, Lnu;->o:Z

    .line 62
    .line 63
    iget-object p0, p0, Lrw;->b:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lnu;->g()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Lnu;->i()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 82
    .line 83
    iget-boolean v0, v0, Ldw;->b:Z

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    :goto_1
    iput-object p0, p1, Lnu;->n:Lrw;

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p1, Lnu;->o:Z

    .line 106
    .line 107
    iget-object p0, p0, Lrw;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final i(IJ)Lnu;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lrw;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Lvw;

    .line 8
    .line 9
    if-ltz v1, :cond_4b

    .line 10
    .line 11
    invoke-virtual {v3}, Lvw;->b()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v1, v4, :cond_4b

    .line 16
    .line 17
    iget-boolean v4, v3, Lvw;->f:Z

    .line 18
    .line 19
    const/16 v5, 0x20

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    if-eqz v4, :cond_5

    .line 24
    .line 25
    iget-object v4, v0, Lrw;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    move v9, v8

    .line 37
    :goto_0
    if-ge v9, v4, :cond_2

    .line 38
    .line 39
    iget-object v10, v0, Lrw;->b:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    check-cast v10, Lnu;

    .line 46
    .line 47
    invoke-virtual {v10}, Lnu;->q()Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-nez v11, :cond_1

    .line 52
    .line 53
    invoke-virtual {v10}, Lnu;->c()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-ne v11, v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v10, v5}, Lnu;->a(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 67
    .line 68
    iget-boolean v9, v9, Ldw;->b:Z

    .line 69
    .line 70
    if-eqz v9, :cond_4

    .line 71
    .line 72
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Lz1;

    .line 73
    .line 74
    invoke-virtual {v9, v1, v8}, Lz1;->g(II)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-lez v9, :cond_4

    .line 79
    .line 80
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 81
    .line 82
    check-cast v10, Lju;

    .line 83
    .line 84
    iget-object v10, v10, Lju;->e:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-ge v9, v10, :cond_4

    .line 91
    .line 92
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 93
    .line 94
    invoke-virtual {v10, v9}, Ldw;->a(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v9

    .line 98
    move v11, v8

    .line 99
    :goto_1
    if-ge v11, v4, :cond_4

    .line 100
    .line 101
    iget-object v12, v0, Lrw;->b:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    check-cast v12, Lnu;

    .line 108
    .line 109
    invoke-virtual {v12}, Lnu;->q()Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-nez v13, :cond_3

    .line 114
    .line 115
    iget-wide v13, v12, Lnu;->e:J

    .line 116
    .line 117
    cmp-long v13, v13, v9

    .line 118
    .line 119
    if-nez v13, :cond_3

    .line 120
    .line 121
    invoke-virtual {v12, v5}, Lnu;->a(I)V

    .line 122
    .line 123
    .line 124
    move-object v10, v12

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    :goto_2
    move-object v10, v6

    .line 130
    :goto_3
    if-eqz v10, :cond_6

    .line 131
    .line 132
    const/4 v4, 0x1

    .line 133
    goto :goto_4

    .line 134
    :cond_5
    move-object v10, v6

    .line 135
    :cond_6
    move v4, v8

    .line 136
    :goto_4
    iget-object v9, v0, Lrw;->a:Ljava/util/ArrayList;

    .line 137
    .line 138
    iget-object v11, v0, Lrw;->c:Ljava/util/ArrayList;

    .line 139
    .line 140
    const/4 v12, -0x1

    .line 141
    if-nez v10, :cond_1d

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    move v13, v8

    .line 148
    :goto_5
    if-ge v13, v10, :cond_9

    .line 149
    .line 150
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    check-cast v14, Lnu;

    .line 155
    .line 156
    invoke-virtual {v14}, Lnu;->q()Z

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    if-nez v15, :cond_8

    .line 161
    .line 162
    invoke-virtual {v14}, Lnu;->c()I

    .line 163
    .line 164
    .line 165
    move-result v15

    .line 166
    if-ne v15, v1, :cond_8

    .line 167
    .line 168
    invoke-virtual {v14}, Lnu;->g()Z

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    if-nez v15, :cond_8

    .line 173
    .line 174
    iget-boolean v15, v3, Lvw;->f:Z

    .line 175
    .line 176
    if-nez v15, :cond_7

    .line 177
    .line 178
    invoke-virtual {v14}, Lnu;->i()Z

    .line 179
    .line 180
    .line 181
    move-result v15

    .line 182
    if-nez v15, :cond_8

    .line 183
    .line 184
    :cond_7
    invoke-virtual {v14, v5}, Lnu;->a(I)V

    .line 185
    .line 186
    .line 187
    move-object v10, v14

    .line 188
    const/16 v17, 0x1

    .line 189
    .line 190
    goto/16 :goto_b

    .line 191
    .line 192
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_9
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Lv5;

    .line 196
    .line 197
    iget-object v10, v10, Lv5;->d:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v10, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    move v14, v8

    .line 206
    :goto_6
    if-ge v14, v13, :cond_b

    .line 207
    .line 208
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    check-cast v15, Landroid/view/View;

    .line 213
    .line 214
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Lnu;

    .line 215
    .line 216
    .line 217
    move-result-object v16

    .line 218
    const/16 v17, 0x1

    .line 219
    .line 220
    invoke-virtual/range {v16 .. v16}, Lnu;->c()I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-ne v7, v1, :cond_a

    .line 225
    .line 226
    invoke-virtual/range {v16 .. v16}, Lnu;->g()Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-nez v7, :cond_a

    .line 231
    .line 232
    invoke-virtual/range {v16 .. v16}, Lnu;->i()Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-nez v7, :cond_a

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_b
    const/16 v17, 0x1

    .line 243
    .line 244
    move-object v15, v6

    .line 245
    :goto_7
    if-eqz v15, :cond_11

    .line 246
    .line 247
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Lnu;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Lv5;

    .line 252
    .line 253
    iget-object v13, v10, Lv5;->c:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v13, Lo9;

    .line 256
    .line 257
    iget-object v14, v10, Lv5;->b:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v14, Lcw;

    .line 260
    .line 261
    iget-object v14, v14, Lcw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 262
    .line 263
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 264
    .line 265
    .line 266
    move-result v14

    .line 267
    if-ltz v14, :cond_10

    .line 268
    .line 269
    invoke-virtual {v13, v14}, Lo9;->d(I)Z

    .line 270
    .line 271
    .line 272
    move-result v16

    .line 273
    if-eqz v16, :cond_f

    .line 274
    .line 275
    invoke-virtual {v13, v14}, Lo9;->a(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10, v15}, Lv5;->F(Landroid/view/View;)V

    .line 279
    .line 280
    .line 281
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Lv5;

    .line 282
    .line 283
    iget-object v13, v10, Lv5;->c:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v13, Lo9;

    .line 286
    .line 287
    iget-object v10, v10, Lv5;->b:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v10, Lcw;

    .line 290
    .line 291
    iget-object v10, v10, Lcw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 292
    .line 293
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    if-ne v10, v12, :cond_c

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_c
    invoke-virtual {v13, v10}, Lo9;->d(I)Z

    .line 301
    .line 302
    .line 303
    move-result v14

    .line 304
    if-eqz v14, :cond_d

    .line 305
    .line 306
    :goto_8
    move v10, v12

    .line 307
    goto :goto_9

    .line 308
    :cond_d
    invoke-virtual {v13, v10}, Lo9;->b(I)I

    .line 309
    .line 310
    .line 311
    move-result v13

    .line 312
    sub-int/2addr v10, v13

    .line 313
    :goto_9
    if-eq v10, v12, :cond_e

    .line 314
    .line 315
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Lv5;

    .line 316
    .line 317
    invoke-virtual {v13, v10}, Lv5;->i(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v15}, Lrw;->h(Landroid/view/View;)V

    .line 321
    .line 322
    .line 323
    const/16 v10, 0x2020

    .line 324
    .line 325
    invoke-virtual {v7, v10}, Lnu;->a(I)V

    .line 326
    .line 327
    .line 328
    move-object v10, v7

    .line 329
    goto :goto_b

    .line 330
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 331
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v3, "layout index should not be -1 after unhiding a view:"

    .line 335
    .line 336
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw v0

    .line 357
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 358
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v2, "trying to unhide a view that was not hidden"

    .line 362
    .line 363
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v0

    .line 377
    :cond_10
    const-string v0, "view is not a child, cannot hide "

    .line 378
    .line 379
    invoke-static {v15, v0}, Lc2;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    return-object v6

    .line 383
    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    move v10, v8

    .line 388
    :goto_a
    if-ge v10, v7, :cond_13

    .line 389
    .line 390
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v13

    .line 394
    check-cast v13, Lnu;

    .line 395
    .line 396
    invoke-virtual {v13}, Lnu;->g()Z

    .line 397
    .line 398
    .line 399
    move-result v14

    .line 400
    if-nez v14, :cond_12

    .line 401
    .line 402
    invoke-virtual {v13}, Lnu;->c()I

    .line 403
    .line 404
    .line 405
    move-result v14

    .line 406
    if-ne v14, v1, :cond_12

    .line 407
    .line 408
    invoke-virtual {v13}, Lnu;->e()Z

    .line 409
    .line 410
    .line 411
    move-result v14

    .line 412
    if-nez v14, :cond_12

    .line 413
    .line 414
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-object v10, v13

    .line 418
    goto :goto_b

    .line 419
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_13
    move-object v10, v6

    .line 423
    :goto_b
    if-eqz v10, :cond_1e

    .line 424
    .line 425
    invoke-virtual {v10}, Lnu;->i()Z

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    if-eqz v7, :cond_14

    .line 430
    .line 431
    iget-boolean v7, v3, Lvw;->f:Z

    .line 432
    .line 433
    goto :goto_d

    .line 434
    :cond_14
    iget v7, v10, Lnu;->c:I

    .line 435
    .line 436
    if-ltz v7, :cond_1c

    .line 437
    .line 438
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 439
    .line 440
    check-cast v13, Lju;

    .line 441
    .line 442
    iget-object v13, v13, Lju;->e:Ljava/util/ArrayList;

    .line 443
    .line 444
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 445
    .line 446
    .line 447
    move-result v13

    .line 448
    if-ge v7, v13, :cond_1c

    .line 449
    .line 450
    iget-boolean v7, v3, Lvw;->f:Z

    .line 451
    .line 452
    if-nez v7, :cond_17

    .line 453
    .line 454
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 455
    .line 456
    iget v13, v10, Lnu;->c:I

    .line 457
    .line 458
    check-cast v7, Lju;

    .line 459
    .line 460
    invoke-virtual {v7, v13}, Lju;->e(I)Landroidx/preference/Preference;

    .line 461
    .line 462
    .line 463
    move-result-object v13

    .line 464
    new-instance v14, Liu;

    .line 465
    .line 466
    invoke-direct {v14, v13}, Liu;-><init>(Landroidx/preference/Preference;)V

    .line 467
    .line 468
    .line 469
    iget-object v7, v7, Lju;->f:Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 472
    .line 473
    .line 474
    move-result v13

    .line 475
    if-eq v13, v12, :cond_15

    .line 476
    .line 477
    goto :goto_c

    .line 478
    :cond_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 479
    .line 480
    .line 481
    move-result v13

    .line 482
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    :goto_c
    iget v7, v10, Lnu;->f:I

    .line 486
    .line 487
    if-eq v13, v7, :cond_17

    .line 488
    .line 489
    :cond_16
    move v7, v8

    .line 490
    goto :goto_d

    .line 491
    :cond_17
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 492
    .line 493
    iget-boolean v13, v7, Ldw;->b:Z

    .line 494
    .line 495
    if-eqz v13, :cond_18

    .line 496
    .line 497
    iget-wide v13, v10, Lnu;->e:J

    .line 498
    .line 499
    iget v15, v10, Lnu;->c:I

    .line 500
    .line 501
    invoke-virtual {v7, v15}, Ldw;->a(I)J

    .line 502
    .line 503
    .line 504
    move-result-wide v15

    .line 505
    cmp-long v7, v13, v15

    .line 506
    .line 507
    if-nez v7, :cond_16

    .line 508
    .line 509
    :cond_18
    move/from16 v7, v17

    .line 510
    .line 511
    :goto_d
    if-nez v7, :cond_1b

    .line 512
    .line 513
    const/4 v7, 0x4

    .line 514
    invoke-virtual {v10, v7}, Lnu;->a(I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v10}, Lnu;->j()Z

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-eqz v7, :cond_19

    .line 522
    .line 523
    iget-object v7, v10, Lnu;->a:Landroid/view/View;

    .line 524
    .line 525
    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 526
    .line 527
    .line 528
    iget-object v7, v10, Lnu;->n:Lrw;

    .line 529
    .line 530
    invoke-virtual {v7, v10}, Lrw;->j(Lnu;)V

    .line 531
    .line 532
    .line 533
    goto :goto_e

    .line 534
    :cond_19
    invoke-virtual {v10}, Lnu;->q()Z

    .line 535
    .line 536
    .line 537
    move-result v7

    .line 538
    if-eqz v7, :cond_1a

    .line 539
    .line 540
    iget v7, v10, Lnu;->j:I

    .line 541
    .line 542
    and-int/lit8 v7, v7, -0x21

    .line 543
    .line 544
    iput v7, v10, Lnu;->j:I

    .line 545
    .line 546
    :cond_1a
    :goto_e
    invoke-virtual {v0, v10}, Lrw;->g(Lnu;)V

    .line 547
    .line 548
    .line 549
    move-object v10, v6

    .line 550
    goto :goto_f

    .line 551
    :cond_1b
    move/from16 v4, v17

    .line 552
    .line 553
    goto :goto_f

    .line 554
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 555
    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    .line 559
    .line 560
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw v0

    .line 581
    :cond_1d
    const/16 v17, 0x1

    .line 582
    .line 583
    :cond_1e
    :goto_f
    const-wide/16 v18, 0x0

    .line 584
    .line 585
    const-wide v20, 0x7fffffffffffffffL

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    if-nez v10, :cond_33

    .line 591
    .line 592
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Lz1;

    .line 593
    .line 594
    invoke-virtual {v7, v1, v8}, Lz1;->g(II)I

    .line 595
    .line 596
    .line 597
    move-result v7

    .line 598
    if-ltz v7, :cond_32

    .line 599
    .line 600
    const-wide/16 v22, 0x3

    .line 601
    .line 602
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 603
    .line 604
    check-cast v13, Lju;

    .line 605
    .line 606
    iget-object v13, v13, Lju;->e:Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 609
    .line 610
    .line 611
    move-result v13

    .line 612
    if-ge v7, v13, :cond_32

    .line 613
    .line 614
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 615
    .line 616
    check-cast v13, Lju;

    .line 617
    .line 618
    invoke-virtual {v13, v7}, Lju;->e(I)Landroidx/preference/Preference;

    .line 619
    .line 620
    .line 621
    move-result-object v14

    .line 622
    const-wide/16 v24, 0x4

    .line 623
    .line 624
    new-instance v15, Liu;

    .line 625
    .line 626
    invoke-direct {v15, v14}, Liu;-><init>(Landroidx/preference/Preference;)V

    .line 627
    .line 628
    .line 629
    iget-object v13, v13, Lju;->f:Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 632
    .line 633
    .line 634
    move-result v14

    .line 635
    if-eq v14, v12, :cond_1f

    .line 636
    .line 637
    goto :goto_10

    .line 638
    :cond_1f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 639
    .line 640
    .line 641
    move-result v14

    .line 642
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    :goto_10
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 646
    .line 647
    iget-boolean v13, v12, Ldw;->b:Z

    .line 648
    .line 649
    if-eqz v13, :cond_27

    .line 650
    .line 651
    invoke-virtual {v12, v7}, Ldw;->a(I)J

    .line 652
    .line 653
    .line 654
    move-result-wide v12

    .line 655
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 656
    .line 657
    .line 658
    move-result v10

    .line 659
    add-int/lit8 v10, v10, -0x1

    .line 660
    .line 661
    :goto_11
    if-ltz v10, :cond_23

    .line 662
    .line 663
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v15

    .line 667
    check-cast v15, Lnu;

    .line 668
    .line 669
    move/from16 v26, v7

    .line 670
    .line 671
    iget-wide v6, v15, Lnu;->e:J

    .line 672
    .line 673
    iget-object v8, v15, Lnu;->a:Landroid/view/View;

    .line 674
    .line 675
    cmp-long v6, v6, v12

    .line 676
    .line 677
    if-nez v6, :cond_22

    .line 678
    .line 679
    invoke-virtual {v15}, Lnu;->q()Z

    .line 680
    .line 681
    .line 682
    move-result v6

    .line 683
    if-nez v6, :cond_22

    .line 684
    .line 685
    iget v6, v15, Lnu;->f:I

    .line 686
    .line 687
    if-ne v14, v6, :cond_21

    .line 688
    .line 689
    invoke-virtual {v15, v5}, Lnu;->a(I)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v15}, Lnu;->i()Z

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    if-eqz v5, :cond_20

    .line 697
    .line 698
    iget-boolean v5, v3, Lvw;->f:Z

    .line 699
    .line 700
    if-nez v5, :cond_20

    .line 701
    .line 702
    iget v5, v15, Lnu;->j:I

    .line 703
    .line 704
    and-int/lit8 v5, v5, -0xf

    .line 705
    .line 706
    or-int/lit8 v5, v5, 0x2

    .line 707
    .line 708
    iput v5, v15, Lnu;->j:I

    .line 709
    .line 710
    :cond_20
    move-object v10, v15

    .line 711
    goto :goto_13

    .line 712
    :cond_21
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    const/4 v6, 0x0

    .line 716
    invoke-virtual {v2, v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 717
    .line 718
    .line 719
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Lnu;

    .line 720
    .line 721
    .line 722
    move-result-object v7

    .line 723
    const/4 v8, 0x0

    .line 724
    iput-object v8, v7, Lnu;->n:Lrw;

    .line 725
    .line 726
    iput-boolean v6, v7, Lnu;->o:Z

    .line 727
    .line 728
    iget v6, v7, Lnu;->j:I

    .line 729
    .line 730
    and-int/lit8 v6, v6, -0x21

    .line 731
    .line 732
    iput v6, v7, Lnu;->j:I

    .line 733
    .line 734
    invoke-virtual {v0, v7}, Lrw;->g(Lnu;)V

    .line 735
    .line 736
    .line 737
    :cond_22
    add-int/lit8 v10, v10, -0x1

    .line 738
    .line 739
    move/from16 v7, v26

    .line 740
    .line 741
    const/4 v6, 0x0

    .line 742
    const/4 v8, 0x0

    .line 743
    goto :goto_11

    .line 744
    :cond_23
    move/from16 v26, v7

    .line 745
    .line 746
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 747
    .line 748
    .line 749
    move-result v5

    .line 750
    add-int/lit8 v5, v5, -0x1

    .line 751
    .line 752
    :goto_12
    if-ltz v5, :cond_25

    .line 753
    .line 754
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v6

    .line 758
    check-cast v6, Lnu;

    .line 759
    .line 760
    iget-wide v7, v6, Lnu;->e:J

    .line 761
    .line 762
    cmp-long v7, v7, v12

    .line 763
    .line 764
    if-nez v7, :cond_26

    .line 765
    .line 766
    invoke-virtual {v6}, Lnu;->e()Z

    .line 767
    .line 768
    .line 769
    move-result v7

    .line 770
    if-nez v7, :cond_26

    .line 771
    .line 772
    iget v7, v6, Lnu;->f:I

    .line 773
    .line 774
    if-ne v14, v7, :cond_24

    .line 775
    .line 776
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-object v10, v6

    .line 780
    goto :goto_13

    .line 781
    :cond_24
    invoke-virtual {v0, v5}, Lrw;->e(I)V

    .line 782
    .line 783
    .line 784
    :cond_25
    const/4 v10, 0x0

    .line 785
    goto :goto_13

    .line 786
    :cond_26
    add-int/lit8 v5, v5, -0x1

    .line 787
    .line 788
    goto :goto_12

    .line 789
    :goto_13
    if-eqz v10, :cond_27

    .line 790
    .line 791
    move/from16 v5, v26

    .line 792
    .line 793
    iput v5, v10, Lnu;->c:I

    .line 794
    .line 795
    move/from16 v4, v17

    .line 796
    .line 797
    :cond_27
    if-nez v10, :cond_2b

    .line 798
    .line 799
    invoke-virtual {v0}, Lrw;->c()Lqw;

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    iget-object v5, v5, Lqw;->a:Landroid/util/SparseArray;

    .line 804
    .line 805
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v5

    .line 809
    check-cast v5, Lpw;

    .line 810
    .line 811
    if-eqz v5, :cond_29

    .line 812
    .line 813
    iget-object v5, v5, Lpw;->a:Ljava/util/ArrayList;

    .line 814
    .line 815
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 816
    .line 817
    .line 818
    move-result v6

    .line 819
    if-nez v6, :cond_29

    .line 820
    .line 821
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 822
    .line 823
    .line 824
    move-result v6

    .line 825
    add-int/lit8 v6, v6, -0x1

    .line 826
    .line 827
    :goto_14
    if-ltz v6, :cond_29

    .line 828
    .line 829
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v7

    .line 833
    check-cast v7, Lnu;

    .line 834
    .line 835
    invoke-virtual {v7}, Lnu;->e()Z

    .line 836
    .line 837
    .line 838
    move-result v7

    .line 839
    if-nez v7, :cond_28

    .line 840
    .line 841
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    move-object v8, v5

    .line 846
    check-cast v8, Lnu;

    .line 847
    .line 848
    goto :goto_15

    .line 849
    :cond_28
    add-int/lit8 v6, v6, -0x1

    .line 850
    .line 851
    goto :goto_14

    .line 852
    :cond_29
    const/4 v8, 0x0

    .line 853
    :goto_15
    if-eqz v8, :cond_2a

    .line 854
    .line 855
    invoke-virtual {v8}, Lnu;->n()V

    .line 856
    .line 857
    .line 858
    sget-object v5, Landroidx/recyclerview/widget/RecyclerView;->u0:[I

    .line 859
    .line 860
    :cond_2a
    move-object v10, v8

    .line 861
    :cond_2b
    if-nez v10, :cond_31

    .line 862
    .line 863
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 864
    .line 865
    .line 866
    move-result-wide v5

    .line 867
    cmp-long v7, p2, v20

    .line 868
    .line 869
    if-eqz v7, :cond_2d

    .line 870
    .line 871
    iget-object v7, v0, Lrw;->g:Lqw;

    .line 872
    .line 873
    invoke-virtual {v7, v14}, Lqw;->a(I)Lpw;

    .line 874
    .line 875
    .line 876
    move-result-object v7

    .line 877
    iget-wide v7, v7, Lpw;->c:J

    .line 878
    .line 879
    cmp-long v9, v7, v18

    .line 880
    .line 881
    if-eqz v9, :cond_2d

    .line 882
    .line 883
    add-long/2addr v7, v5

    .line 884
    cmp-long v7, v7, p2

    .line 885
    .line 886
    if-gez v7, :cond_2c

    .line 887
    .line 888
    goto :goto_16

    .line 889
    :cond_2c
    const/16 v16, 0x0

    .line 890
    .line 891
    return-object v16

    .line 892
    :cond_2d
    :goto_16
    const/16 v16, 0x0

    .line 893
    .line 894
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 895
    .line 896
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 897
    .line 898
    .line 899
    :try_start_0
    const-string v8, "RV CreateView"

    .line 900
    .line 901
    sget v9, Ln50;->a:I

    .line 902
    .line 903
    invoke-static {v8}, Lm50;->a(Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v7, v2, v14}, Ldw;->b(Landroid/view/ViewGroup;I)Lnu;

    .line 907
    .line 908
    .line 909
    move-result-object v10

    .line 910
    iget-object v7, v10, Lnu;->a:Landroid/view/View;

    .line 911
    .line 912
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 913
    .line 914
    .line 915
    move-result-object v8

    .line 916
    if-nez v8, :cond_30

    .line 917
    .line 918
    iput v14, v10, Lnu;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    .line 920
    invoke-static {}, Lm50;->b()V

    .line 921
    .line 922
    .line 923
    sget-object v8, Landroidx/recyclerview/widget/RecyclerView;->u0:[I

    .line 924
    .line 925
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 926
    .line 927
    .line 928
    move-result-object v7

    .line 929
    if-eqz v7, :cond_2e

    .line 930
    .line 931
    new-instance v8, Ljava/lang/ref/WeakReference;

    .line 932
    .line 933
    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 934
    .line 935
    .line 936
    iput-object v8, v10, Lnu;->b:Ljava/lang/ref/WeakReference;

    .line 937
    .line 938
    :cond_2e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 939
    .line 940
    .line 941
    move-result-wide v7

    .line 942
    iget-object v9, v0, Lrw;->g:Lqw;

    .line 943
    .line 944
    sub-long/2addr v7, v5

    .line 945
    invoke-virtual {v9, v14}, Lqw;->a(I)Lpw;

    .line 946
    .line 947
    .line 948
    move-result-object v5

    .line 949
    iget-wide v11, v5, Lpw;->c:J

    .line 950
    .line 951
    cmp-long v6, v11, v18

    .line 952
    .line 953
    if-nez v6, :cond_2f

    .line 954
    .line 955
    goto :goto_17

    .line 956
    :cond_2f
    div-long v11, v11, v24

    .line 957
    .line 958
    mul-long v11, v11, v22

    .line 959
    .line 960
    div-long v7, v7, v24

    .line 961
    .line 962
    add-long/2addr v7, v11

    .line 963
    :goto_17
    iput-wide v7, v5, Lpw;->c:J

    .line 964
    .line 965
    goto :goto_18

    .line 966
    :cond_30
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 967
    .line 968
    const-string v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 969
    .line 970
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    :catchall_0
    move-exception v0

    .line 975
    sget v1, Ln50;->a:I

    .line 976
    .line 977
    invoke-static {}, Lm50;->b()V

    .line 978
    .line 979
    .line 980
    throw v0

    .line 981
    :cond_31
    const/16 v16, 0x0

    .line 982
    .line 983
    goto :goto_18

    .line 984
    :cond_32
    move v5, v7

    .line 985
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 986
    .line 987
    const-string v4, "(offset:"

    .line 988
    .line 989
    const-string v6, ").state:"

    .line 990
    .line 991
    const-string v7, "Inconsistency detected. Invalid item position "

    .line 992
    .line 993
    invoke-static {v7, v1, v4, v5, v6}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    invoke-virtual {v3}, Lvw;->b()I

    .line 998
    .line 999
    .line 1000
    move-result v3

    .line 1001
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v2

    .line 1008
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    throw v0

    .line 1019
    :cond_33
    move-object/from16 v16, v6

    .line 1020
    .line 1021
    const-wide/16 v22, 0x3

    .line 1022
    .line 1023
    const-wide/16 v24, 0x4

    .line 1024
    .line 1025
    :goto_18
    iget-object v5, v10, Lnu;->a:Landroid/view/View;

    .line 1026
    .line 1027
    if-eqz v4, :cond_34

    .line 1028
    .line 1029
    iget-boolean v6, v3, Lvw;->f:Z

    .line 1030
    .line 1031
    if-nez v6, :cond_34

    .line 1032
    .line 1033
    iget v6, v10, Lnu;->j:I

    .line 1034
    .line 1035
    and-int/lit16 v7, v6, 0x2000

    .line 1036
    .line 1037
    if-eqz v7, :cond_34

    .line 1038
    .line 1039
    and-int/lit16 v6, v6, -0x2001

    .line 1040
    .line 1041
    iput v6, v10, Lnu;->j:I

    .line 1042
    .line 1043
    iget-boolean v6, v3, Lvw;->i:Z

    .line 1044
    .line 1045
    if-eqz v6, :cond_34

    .line 1046
    .line 1047
    invoke-static {v10}, Lhw;->b(Lnu;)V

    .line 1048
    .line 1049
    .line 1050
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->K:Lhw;

    .line 1051
    .line 1052
    invoke-virtual {v10}, Lnu;->d()Ljava/util/List;

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    .line 1057
    .line 1058
    new-instance v6, Ldr;

    .line 1059
    .line 1060
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v6, v10}, Ldr;->a(Lnu;)V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v2, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->S(Lnu;Ldr;)V

    .line 1067
    .line 1068
    .line 1069
    :cond_34
    iget-boolean v6, v3, Lvw;->f:Z

    .line 1070
    .line 1071
    if-eqz v6, :cond_35

    .line 1072
    .line 1073
    invoke-virtual {v10}, Lnu;->f()Z

    .line 1074
    .line 1075
    .line 1076
    move-result v6

    .line 1077
    if-eqz v6, :cond_35

    .line 1078
    .line 1079
    iput v1, v10, Lnu;->g:I

    .line 1080
    .line 1081
    goto :goto_19

    .line 1082
    :cond_35
    invoke-virtual {v10}, Lnu;->f()Z

    .line 1083
    .line 1084
    .line 1085
    move-result v6

    .line 1086
    if-eqz v6, :cond_38

    .line 1087
    .line 1088
    iget v6, v10, Lnu;->j:I

    .line 1089
    .line 1090
    and-int/lit8 v6, v6, 0x2

    .line 1091
    .line 1092
    if-eqz v6, :cond_36

    .line 1093
    .line 1094
    goto :goto_1a

    .line 1095
    :cond_36
    invoke-virtual {v10}, Lnu;->g()Z

    .line 1096
    .line 1097
    .line 1098
    move-result v6

    .line 1099
    if-eqz v6, :cond_37

    .line 1100
    .line 1101
    goto :goto_1a

    .line 1102
    :cond_37
    :goto_19
    move/from16 v8, v17

    .line 1103
    .line 1104
    const/4 v6, 0x0

    .line 1105
    const/4 v7, 0x0

    .line 1106
    goto/16 :goto_1f

    .line 1107
    .line 1108
    :cond_38
    :goto_1a
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Lz1;

    .line 1109
    .line 1110
    const/4 v7, 0x0

    .line 1111
    invoke-virtual {v6, v1, v7}, Lz1;->g(II)I

    .line 1112
    .line 1113
    .line 1114
    move-result v6

    .line 1115
    iput-object v2, v10, Lnu;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1116
    .line 1117
    iget v8, v10, Lnu;->f:I

    .line 1118
    .line 1119
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1120
    .line 1121
    .line 1122
    move-result-wide v11

    .line 1123
    cmp-long v9, p2, v20

    .line 1124
    .line 1125
    if-eqz v9, :cond_3a

    .line 1126
    .line 1127
    iget-object v9, v0, Lrw;->g:Lqw;

    .line 1128
    .line 1129
    invoke-virtual {v9, v8}, Lqw;->a(I)Lpw;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v8

    .line 1133
    iget-wide v8, v8, Lpw;->d:J

    .line 1134
    .line 1135
    cmp-long v13, v8, v18

    .line 1136
    .line 1137
    if-eqz v13, :cond_3a

    .line 1138
    .line 1139
    add-long/2addr v8, v11

    .line 1140
    cmp-long v8, v8, p2

    .line 1141
    .line 1142
    if-gez v8, :cond_39

    .line 1143
    .line 1144
    goto :goto_1b

    .line 1145
    :cond_39
    move v6, v7

    .line 1146
    move/from16 v8, v17

    .line 1147
    .line 1148
    goto/16 :goto_1f

    .line 1149
    .line 1150
    :cond_3a
    :goto_1b
    iget-object v8, v2, Landroidx/recyclerview/widget/RecyclerView;->l:Ldw;

    .line 1151
    .line 1152
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1153
    .line 1154
    .line 1155
    iput v6, v10, Lnu;->c:I

    .line 1156
    .line 1157
    iget-boolean v9, v8, Ldw;->b:Z

    .line 1158
    .line 1159
    if-eqz v9, :cond_3b

    .line 1160
    .line 1161
    invoke-virtual {v8, v6}, Ldw;->a(I)J

    .line 1162
    .line 1163
    .line 1164
    move-result-wide v13

    .line 1165
    iput-wide v13, v10, Lnu;->e:J

    .line 1166
    .line 1167
    :cond_3b
    iget v9, v10, Lnu;->j:I

    .line 1168
    .line 1169
    and-int/lit16 v9, v9, -0x208

    .line 1170
    .line 1171
    or-int/lit8 v9, v9, 0x1

    .line 1172
    .line 1173
    iput v9, v10, Lnu;->j:I

    .line 1174
    .line 1175
    sget v9, Ln50;->a:I

    .line 1176
    .line 1177
    const-string v9, "RV OnBindView"

    .line 1178
    .line 1179
    invoke-static {v9}, Lm50;->a(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v10}, Lnu;->d()Ljava/util/List;

    .line 1183
    .line 1184
    .line 1185
    check-cast v8, Lju;

    .line 1186
    .line 1187
    invoke-virtual {v8, v6}, Lju;->e(I)Landroidx/preference/Preference;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v6

    .line 1191
    iget-object v8, v10, Lnu;->t:Landroid/content/res/ColorStateList;

    .line 1192
    .line 1193
    iget-object v9, v10, Lnu;->a:Landroid/view/View;

    .line 1194
    .line 1195
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v13

    .line 1199
    iget-object v14, v10, Lnu;->s:Landroid/graphics/drawable/Drawable;

    .line 1200
    .line 1201
    if-eq v13, v14, :cond_3c

    .line 1202
    .line 1203
    sget-object v13, Lu70;->a:Ljava/util/WeakHashMap;

    .line 1204
    .line 1205
    invoke-static {v9, v14}, Le70;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1206
    .line 1207
    .line 1208
    :cond_3c
    const v9, 0x1020016

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v10, v9}, Lnu;->b(I)Landroid/view/View;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v9

    .line 1215
    check-cast v9, Landroid/widget/TextView;

    .line 1216
    .line 1217
    if-eqz v9, :cond_3d

    .line 1218
    .line 1219
    if-eqz v8, :cond_3d

    .line 1220
    .line 1221
    invoke-virtual {v9}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v13

    .line 1225
    invoke-virtual {v13, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v13

    .line 1229
    if-nez v13, :cond_3d

    .line 1230
    .line 1231
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1232
    .line 1233
    .line 1234
    :cond_3d
    invoke-virtual {v6, v10}, Landroidx/preference/Preference;->l(Lnu;)V

    .line 1235
    .line 1236
    .line 1237
    iget-object v6, v10, Lnu;->k:Ljava/util/ArrayList;

    .line 1238
    .line 1239
    if-eqz v6, :cond_3e

    .line 1240
    .line 1241
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1242
    .line 1243
    .line 1244
    :cond_3e
    iget v6, v10, Lnu;->j:I

    .line 1245
    .line 1246
    and-int/lit16 v6, v6, -0x401

    .line 1247
    .line 1248
    iput v6, v10, Lnu;->j:I

    .line 1249
    .line 1250
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v6

    .line 1254
    instance-of v8, v6, Lmw;

    .line 1255
    .line 1256
    if-eqz v8, :cond_3f

    .line 1257
    .line 1258
    check-cast v6, Lmw;

    .line 1259
    .line 1260
    move/from16 v8, v17

    .line 1261
    .line 1262
    iput-boolean v8, v6, Lmw;->c:Z

    .line 1263
    .line 1264
    :cond_3f
    invoke-static {}, Lm50;->b()V

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v8

    .line 1271
    iget-object v0, v0, Lrw;->g:Lqw;

    .line 1272
    .line 1273
    iget v6, v10, Lnu;->f:I

    .line 1274
    .line 1275
    sub-long/2addr v8, v11

    .line 1276
    invoke-virtual {v0, v6}, Lqw;->a(I)Lpw;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    iget-wide v11, v0, Lpw;->d:J

    .line 1281
    .line 1282
    cmp-long v6, v11, v18

    .line 1283
    .line 1284
    if-nez v6, :cond_40

    .line 1285
    .line 1286
    goto :goto_1c

    .line 1287
    :cond_40
    div-long v11, v11, v24

    .line 1288
    .line 1289
    mul-long v11, v11, v22

    .line 1290
    .line 1291
    div-long v8, v8, v24

    .line 1292
    .line 1293
    add-long/2addr v8, v11

    .line 1294
    :goto_1c
    iput-wide v8, v0, Lpw;->d:J

    .line 1295
    .line 1296
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->A:Landroid/view/accessibility/AccessibilityManager;

    .line 1297
    .line 1298
    if-eqz v0, :cond_46

    .line 1299
    .line 1300
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1301
    .line 1302
    .line 1303
    move-result v0

    .line 1304
    if-eqz v0, :cond_46

    .line 1305
    .line 1306
    sget-object v0, Lu70;->a:Ljava/util/WeakHashMap;

    .line 1307
    .line 1308
    invoke-static {v5}, Le70;->c(Landroid/view/View;)I

    .line 1309
    .line 1310
    .line 1311
    move-result v0

    .line 1312
    const/4 v8, 0x1

    .line 1313
    if-nez v0, :cond_41

    .line 1314
    .line 1315
    invoke-static {v5, v8}, Le70;->s(Landroid/view/View;I)V

    .line 1316
    .line 1317
    .line 1318
    :cond_41
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->l0:Lzw;

    .line 1319
    .line 1320
    if-nez v0, :cond_42

    .line 1321
    .line 1322
    goto :goto_1e

    .line 1323
    :cond_42
    invoke-virtual {v0}, Lzw;->j()Lw;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    instance-of v6, v0, Lyw;

    .line 1328
    .line 1329
    if-eqz v6, :cond_45

    .line 1330
    .line 1331
    move-object v6, v0

    .line 1332
    check-cast v6, Lyw;

    .line 1333
    .line 1334
    invoke-static {v5}, Lu70;->c(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v9

    .line 1338
    if-nez v9, :cond_43

    .line 1339
    .line 1340
    move-object/from16 v9, v16

    .line 1341
    .line 1342
    goto :goto_1d

    .line 1343
    :cond_43
    instance-of v11, v9, Lu;

    .line 1344
    .line 1345
    if-eqz v11, :cond_44

    .line 1346
    .line 1347
    check-cast v9, Lu;

    .line 1348
    .line 1349
    iget-object v9, v9, Lu;->a:Lw;

    .line 1350
    .line 1351
    goto :goto_1d

    .line 1352
    :cond_44
    new-instance v11, Lw;

    .line 1353
    .line 1354
    invoke-direct {v11, v9}, Lw;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1355
    .line 1356
    .line 1357
    move-object v9, v11

    .line 1358
    :goto_1d
    if-eqz v9, :cond_45

    .line 1359
    .line 1360
    if-eq v9, v6, :cond_45

    .line 1361
    .line 1362
    iget-object v6, v6, Lyw;->e:Ljava/util/WeakHashMap;

    .line 1363
    .line 1364
    invoke-virtual {v6, v5, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    :cond_45
    invoke-static {v5, v0}, Lu70;->h(Landroid/view/View;Lw;)V

    .line 1368
    .line 1369
    .line 1370
    goto :goto_1e

    .line 1371
    :cond_46
    const/4 v8, 0x1

    .line 1372
    :goto_1e
    iget-boolean v0, v3, Lvw;->f:Z

    .line 1373
    .line 1374
    if-eqz v0, :cond_47

    .line 1375
    .line 1376
    iput v1, v10, Lnu;->g:I

    .line 1377
    .line 1378
    :cond_47
    move v6, v8

    .line 1379
    :goto_1f
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v0

    .line 1383
    if-nez v0, :cond_48

    .line 1384
    .line 1385
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v0

    .line 1389
    check-cast v0, Lmw;

    .line 1390
    .line 1391
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    .line 1393
    .line 1394
    goto :goto_20

    .line 1395
    :cond_48
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v1

    .line 1399
    if-nez v1, :cond_49

    .line 1400
    .line 1401
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    check-cast v0, Lmw;

    .line 1406
    .line 1407
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    .line 1409
    .line 1410
    goto :goto_20

    .line 1411
    :cond_49
    check-cast v0, Lmw;

    .line 1412
    .line 1413
    :goto_20
    iput-object v10, v0, Lmw;->a:Lnu;

    .line 1414
    .line 1415
    if-eqz v4, :cond_4a

    .line 1416
    .line 1417
    if-eqz v6, :cond_4a

    .line 1418
    .line 1419
    move v7, v8

    .line 1420
    :cond_4a
    iput-boolean v7, v0, Lmw;->d:Z

    .line 1421
    .line 1422
    return-object v10

    .line 1423
    :cond_4b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1424
    .line 1425
    const-string v4, "("

    .line 1426
    .line 1427
    const-string v5, "). Item count:"

    .line 1428
    .line 1429
    const-string v6, "Invalid item position "

    .line 1430
    .line 1431
    invoke-static {v6, v1, v4, v1, v5}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v1

    .line 1435
    invoke-virtual {v3}, Lvw;->b()I

    .line 1436
    .line 1437
    .line 1438
    move-result v3

    .line 1439
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v2

    .line 1446
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v1

    .line 1453
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1454
    .line 1455
    .line 1456
    throw v0
.end method

.method public final j(Lnu;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lnu;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lrw;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lrw;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x0

    .line 17
    iput-object p0, p1, Lnu;->n:Lrw;

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    iput-boolean p0, p1, Lnu;->o:Z

    .line 21
    .line 22
    iget p0, p1, Lnu;->j:I

    .line 23
    .line 24
    and-int/lit8 p0, p0, -0x21

    .line 25
    .line 26
    iput p0, p1, Lnu;->j:I

    .line 27
    .line 28
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lrw;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Llw;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Llw;->i:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Lrw;->e:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Lrw;->f:I

    .line 15
    .line 16
    iget-object v0, p0, Lrw;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Lrw;->f:I

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lrw;->e(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method
