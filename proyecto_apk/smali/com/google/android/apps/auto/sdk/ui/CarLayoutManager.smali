.class public Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;,
        Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$b;
    }
.end annotation


# static fields
.field public static final ROW_OFFSET_MODE_INDIVIDUAL:I = 0x0

.field public static final ROW_OFFSET_MODE_PAGE:I = 0x1


# instance fields
.field private final a:Landroid/view/animation/AccelerateInterpolator;

.field private final b:Landroid/content/Context;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;

.field private g:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/view/View;",
            "Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$b;",
            ">;"
        }
    .end annotation
.end field

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a:Landroid/view/animation/AccelerateInterpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->c:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->d:I

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->e:I

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->h:I

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->n:I

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->o:I

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->q:I

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->b:Landroid/content/Context;

    return-void
.end method

.method private a(I)I
    .locals 6

    .line 275
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    :goto_0
    if-lez p1, :cond_3

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v4, v3

    sub-int v3, v1, v0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    if-ge v4, v3, :cond_2

    return p1

    :cond_2
    move p1, v2

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;)Landroid/content/Context;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->b:Landroid/content/Context;

    return-object p0
.end method

.method private final a(Landroid/support/v7/widget/RecyclerView$n;Landroid/view/View;I)Landroid/view/View;
    .locals 7

    .line 274
    invoke-virtual {p0, p2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-nez p3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->c(I)Landroid/view/View;

    move-result-object v2

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingLeft()I

    move-result v3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v4

    if-nez p3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr p2, v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    sub-int v0, p2, v0

    :goto_1
    move v6, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p2

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p2

    iget p2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int v0, v1, p2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p2

    add-int/2addr p2, v0

    goto :goto_1

    :goto_2
    add-int v5, v4, v3

    move-object v1, p0

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    if-nez p3, :cond_3

    invoke-virtual {v1, v2, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->addView(Landroid/view/View;I)V

    return-object v2

    :cond_3
    invoke-virtual {v1, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private final a()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const-string v2, "CarLayoutManager"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_9

    .line 15
    .line 16
    const-string p0, ":: updatePageBreakPosition getChildCount: 0"

    .line 17
    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, ", mLowerPageBreakPosition:"

    .line 28
    .line 29
    const-string v5, ", mUpperPageBreakPosition:"

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget v3, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 34
    .line 35
    iget v6, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 36
    .line 37
    iget v7, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    .line 38
    .line 39
    const-string v8, ":: #BEFORE updatePageBreakPositions mAnchorPageBreakPosition:"

    .line 40
    .line 41
    invoke-static {v8, v3, v5, v6, v4}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget v6, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->j:I

    .line 60
    .line 61
    if-eq v3, v6, :cond_3

    .line 62
    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    const-string v1, "Item count changed. Resetting page break positions."

    .line 70
    .line 71
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChild()Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 83
    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->j:I

    .line 89
    .line 90
    iget v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 91
    .line 92
    const/4 v3, -0x1

    .line 93
    if-ne v1, v3, :cond_4

    .line 94
    .line 95
    const-string p0, "Unable to update anchor positions. There is no anchor position."

    .line 96
    .line 97
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_9

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 112
    .line 113
    iget v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    sub-int/2addr v1, v3

    .line 120
    iget v6, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 121
    .line 122
    invoke-virtual {p0, v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    if-nez v6, :cond_5

    .line 127
    .line 128
    const/high16 v6, -0x80000000

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    invoke-virtual {p0, v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 140
    .line 141
    iget v6, v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 142
    .line 143
    sub-int v6, v7, v6

    .line 144
    .line 145
    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_6

    .line 150
    .line 151
    iget v7, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 152
    .line 153
    iget v8, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 154
    .line 155
    iget v9, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    .line 156
    .line 157
    const-string v10, ", anchorTop:"

    .line 158
    .line 159
    const-string v11, " mAnchorPageBreakPosition:"

    .line 160
    .line 161
    const-string v12, ":: #MID updatePageBreakPositions topMargin:"

    .line 162
    .line 163
    invoke-static {v12, v3, v10, v1, v11}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    iget v7, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 194
    .line 195
    if-ge v1, v3, :cond_7

    .line 196
    .line 197
    iput v7, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 198
    .line 199
    iget v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    .line 200
    .line 201
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 202
    .line 203
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->b(I)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_7
    if-lez v7, :cond_8

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-lt v6, v1, :cond_8

    .line 217
    .line 218
    iget v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 219
    .line 220
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    .line 221
    .line 222
    iget v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 223
    .line 224
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 225
    .line 226
    invoke-direct {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(I)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_8
    iget v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 234
    .line 235
    invoke-direct {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(I)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 240
    .line 241
    iget v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :goto_2
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_9

    .line 249
    .line 250
    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 251
    .line 252
    iget v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 253
    .line 254
    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    .line 255
    .line 256
    const-string v3, ":: #AFTER updatePageBreakPositions mAnchorPageBreakPosition:"

    .line 257
    .line 258
    invoke-static {v3, v0, v5, v1, v4}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :cond_9
    return-void
.end method

.method private final a(Landroid/view/View;F)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->p:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$b;-><init>(B)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->p:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->p:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$b;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    iput p2, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$b;->a:F

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Landroid/view/animation/Animation;->startNow()V

    return-void
.end method

.method private final a(Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;I)Z
    .locals 5

    .line 277
    invoke-virtual {p0, p2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    if-nez v0, :cond_1

    return v1

    :cond_0
    if-ne p3, v2, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result p1

    sub-int/2addr p1, v2

    if-lt v0, p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->f:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;

    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->getTargetPosition()I

    move-result p1

    if-lt v0, p1, :cond_2

    return v2

    :cond_2
    if-ne p3, v2, :cond_3

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->f:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->getTargetPosition()I

    move-result p1

    if-gt v0, p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    if-nez p3, :cond_4

    add-int/lit8 v3, p1, -0x2

    if-lt v0, v3, :cond_4

    return v2

    :cond_4
    if-ne p3, v2, :cond_5

    add-int/lit8 p1, p1, 0x2

    if-gt v0, p1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iget v3, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    invoke-virtual {p0, p2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p2

    iget p1, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    if-nez p3, :cond_6

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_6

    return v1

    :cond_6
    if-ne p3, v2, :cond_7

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p1, p0

    if-le p2, p1, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method private final b()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChildIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    if-nez v1, :cond_2

    const-string v0, "CarLayoutManager"

    const-string v1, "The sample view has a height of 0. Returning a dummy value for now that won\'t be cached."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/apps/auto/sdk/ui/R$dimen;->car_sample_row_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_2
    iput v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->o:I

    return v1
.end method

.method private b(I)I
    .locals 7

    .line 2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    move v2, p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v5, v4

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result v4

    sub-int v6, v1, v0

    add-int/2addr v6, v4

    if-le v5, v6, :cond_3

    if-ne v2, p1, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    return p1
.end method

.method private final c()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->b()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->c()I

    move-result p0

    div-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, p0, :cond_1

    return v1

    :cond_1
    mul-int/2addr p0, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result p1

    div-int/2addr p0, p1

    return p0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    iget v5, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    iget v5, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v3

    sub-float/2addr v2, v0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->b()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->c()I

    move-result p0

    div-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result p1

    sub-int/2addr p1, p0

    if-gtz p1, :cond_1

    return v1

    :cond_1
    int-to-float p0, p1

    cmpl-float p1, v2, p0

    if-ltz p1, :cond_2

    const/16 p0, 0x3e8

    return p0

    :cond_2
    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    div-float/2addr v2, p0

    float-to-int p0, v2

    return p0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    new-instance p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public getFirstFullyVisibleChild()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChildIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstFullyVisibleChildIndex()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    move-result v2

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getFirstFullyVisibleChildPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getLastFocusedChildIndexIfVisible()I
    .locals 5

    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->n:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-le v3, v2, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public getLastFullyVisibleChild()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getLastFullyVisibleChildIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastFullyVisibleChildIndex()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    if-gt v2, v1, :cond_0

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getLastFullyVisibleChildPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getLastFullyVisibleChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getPageDownPosition()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    return p0
.end method

.method public getPageUpPosition()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    return p0
.end method

.method public isAtBottom()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getLastFullyVisibleChildIndex()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method public isAtTop()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChildIndex()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public offsetRows()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_9

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->d:I

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    const/high16 v4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    const-string v7, "CarLayoutManager"

    .line 17
    .line 18
    if-ne v0, v6, :cond_7

    .line 19
    .line 20
    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-static {v7, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_10

    .line 33
    .line 34
    const-string p0, ":: offsetRowsByPage anchorView null"

    .line 35
    .line 36
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 49
    .line 50
    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 51
    .line 52
    sub-int/2addr v1, v0

    .line 53
    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 68
    .line 69
    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 70
    .line 71
    sub-int/2addr v8, v0

    .line 72
    sub-int/2addr v8, v1

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    sub-int/2addr v1, v0

    .line 78
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    sub-int/2addr v0, v1

    .line 83
    int-to-float v0, v0

    .line 84
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    int-to-float v9, v9

    .line 89
    div-float/2addr v0, v9

    .line 90
    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_2

    .line 95
    .line 96
    const-string v9, ", distanceLeft:"

    .line 97
    .line 98
    const-string v10, ", scrollPercentage:"

    .line 99
    .line 100
    const-string v11, ":: offsetRowsByPage scrollDistance:"

    .line 101
    .line 102
    invoke-static {v11, v8, v9, v1, v10}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 125
    .line 126
    new-array v3, v3, [I

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->getLocationInWindow([I)V

    .line 129
    .line 130
    .line 131
    aget v3, v3, v6

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    add-int/2addr v3, v1

    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    move v6, v5

    .line 143
    :goto_0
    if-ge v6, v1, :cond_10

    .line 144
    .line 145
    invoke-virtual {p0, v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {p0, v7}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    iget v9, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 154
    .line 155
    if-ge v8, v9, :cond_3

    .line 156
    .line 157
    invoke-virtual {v7, v2}, Landroid/view/View;->setAlpha(F)V

    .line 158
    .line 159
    .line 160
    neg-int v8, v3

    .line 161
    :goto_1
    int-to-float v8, v8

    .line 162
    invoke-direct {p0, v7, v8}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/view/View;F)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_3
    iget v9, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 167
    .line 168
    if-ge v8, v9, :cond_6

    .line 169
    .line 170
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 175
    .line 176
    iget v9, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 177
    .line 178
    if-gez v9, :cond_4

    .line 179
    .line 180
    iget v9, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 181
    .line 182
    rsub-int/lit8 v9, v9, 0x0

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    move v9, v5

    .line 186
    :goto_2
    iget v10, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    .line 187
    .line 188
    if-gez v10, :cond_5

    .line 189
    .line 190
    iget v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    .line 191
    .line 192
    sub-int/2addr v9, v8

    .line 193
    :cond_5
    add-int/2addr v9, v3

    .line 194
    int-to-float v8, v9

    .line 195
    iget-object v9, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a:Landroid/view/animation/AccelerateInterpolator;

    .line 196
    .line 197
    invoke-virtual {v9, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    mul-float/2addr v9, v8

    .line 202
    float-to-int v8, v9

    .line 203
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    .line 204
    .line 205
    .line 206
    neg-int v8, v8

    .line 207
    goto :goto_1

    .line 208
    :cond_6
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    .line 209
    .line 210
    .line 211
    invoke-direct {p0, v7, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/view/View;F)V

    .line 212
    .line 213
    .line 214
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_7
    if-nez v0, :cond_10

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_8

    .line 224
    .line 225
    invoke-static {v7, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    if-eqz p0, :cond_10

    .line 230
    .line 231
    const-string p0, ":: offsetRowsIndividually getChildCount=0"

    .line 232
    .line 233
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    sub-int/2addr v0, v6

    .line 242
    :goto_4
    if-ltz v0, :cond_a

    .line 243
    .line 244
    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 257
    .line 258
    iget v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 259
    .line 260
    sub-int/2addr v8, v1

    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-gt v8, v1, :cond_9

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_a
    const/4 v0, -0x1

    .line 272
    :goto_5
    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 273
    .line 274
    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_b

    .line 279
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const/16 v8, 0x39

    .line 283
    .line 284
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    .line 286
    .line 287
    const-string v8, ":: offsetRowsIndividually danglingChildIndex: "

    .line 288
    .line 289
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    :cond_b
    invoke-virtual {p0, v5}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 311
    .line 312
    new-array v3, v3, [I

    .line 313
    .line 314
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->getLocationInWindow([I)V

    .line 315
    .line 316
    .line 317
    aget v3, v3, v6

    .line 318
    .line 319
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    add-int/2addr v3, v1

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    :goto_6
    if-ge v5, v1, :cond_10

    .line 329
    .line 330
    invoke-virtual {p0, v5}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 339
    .line 340
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 341
    .line 342
    if-gez v8, :cond_c

    .line 343
    .line 344
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 345
    .line 346
    sub-int v8, v3, v8

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_c
    move v8, v3

    .line 350
    :goto_7
    iget v9, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    .line 351
    .line 352
    if-gez v9, :cond_d

    .line 353
    .line 354
    iget v9, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    .line 355
    .line 356
    sub-int/2addr v8, v9

    .line 357
    :cond_d
    if-ge v5, v0, :cond_e

    .line 358
    .line 359
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_e
    if-le v5, v0, :cond_f

    .line 364
    .line 365
    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    .line 366
    .line 367
    .line 368
    invoke-direct {p0, v6, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/view/View;F)V

    .line 369
    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_f
    invoke-virtual {p0, v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    iget v10, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 377
    .line 378
    iget v11, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    .line 379
    .line 380
    invoke-virtual {p0, v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 381
    .line 382
    .line 383
    move-result v12

    .line 384
    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    .line 385
    .line 386
    add-int/2addr v7, v12

    .line 387
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    .line 388
    .line 389
    .line 390
    move-result v12

    .line 391
    sub-int/2addr v7, v12

    .line 392
    int-to-float v7, v7

    .line 393
    add-int/2addr v9, v10

    .line 394
    add-int/2addr v9, v11

    .line 395
    int-to-float v9, v9

    .line 396
    div-float/2addr v7, v9

    .line 397
    iget-object v9, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a:Landroid/view/animation/AccelerateInterpolator;

    .line 398
    .line 399
    sub-float v7, v4, v7

    .line 400
    .line 401
    invoke-virtual {v9, v7}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    .line 406
    .line 407
    .line 408
    int-to-float v8, v8

    .line 409
    mul-float/2addr v7, v8

    .line 410
    neg-float v7, v7

    .line 411
    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/view/View;F)V

    .line 412
    .line 413
    .line 414
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_10
    :goto_9
    return-void
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    return p4

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChildIndex()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string p0, "CarLayoutManager"

    const-string p1, "There is a focused child but no first fully visible child."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    move p1, v1

    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p3, v1, :cond_4

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result p3

    if-ge p1, p3, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    if-ne p3, v2, :cond_6

    :goto_1
    if-ltz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    const/16 p1, 0x82

    if-ne p3, p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getLastFocusedChildIndexIfVisible()I

    move-result p1

    if-eq p1, v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    :cond_7
    return p4
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a()V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->offsetRows()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$h;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->o:I

    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    iget v1, v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->q:I

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChild()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    move/from16 v16, v3

    .line 28
    .line 29
    move v3, v1

    .line 30
    move/from16 v1, v16

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v2

    .line 34
    move v1, v8

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput v2, v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->q:I

    .line 37
    .line 38
    iput v1, v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 39
    .line 40
    iput v2, v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 41
    .line 42
    iput v2, v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    .line 43
    .line 44
    move v3, v2

    .line 45
    :goto_0
    const-string v9, "CarLayoutManager"

    .line 46
    .line 47
    const/4 v10, 0x2

    .line 48
    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    iget v4, v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->q:I

    .line 55
    .line 56
    iget v5, v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    .line 57
    .line 58
    iget v11, v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    .line 59
    .line 60
    iget v12, v0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    .line 61
    .line 62
    const-string v13, ", anchorTop:"

    .line 63
    .line 64
    const-string v14, ", mPendingScrollPosition: "

    .line 65
    .line 66
    const-string v15, ":: onLayoutChildren anchorPosition:"

    .line 67
    .line 68
    invoke-static {v15, v1, v13, v3, v14}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, ", mAnchorPageBreakPosition:"

    .line 76
    .line 77
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, ", mUpperPageBreakPosition:"

    .line 84
    .line 85
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v4, ", mLowerPageBreakPosition:"

    .line 92
    .line 93
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/4 v11, 0x1

    .line 114
    sub-int/2addr v4, v11

    .line 115
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-ltz v12, :cond_5

    .line 120
    .line 121
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/RecyclerView$n;->c(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 130
    .line 131
    invoke-virtual {v0, v1, v8, v8}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingLeft()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    iget v13, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 139
    .line 140
    add-int/2addr v5, v13

    .line 141
    if-ne v3, v2, :cond_3

    .line 142
    .line 143
    iget v3, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 144
    .line 145
    :cond_3
    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    add-int v4, v5, v2

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    add-int/2addr v2, v3

    .line 156
    move/from16 v16, v5

    .line 157
    .line 158
    move v5, v2

    .line 159
    move/from16 v2, v16

    .line 160
    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->addView(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    move-object v2, v1

    .line 168
    :goto_1
    invoke-direct {v0, v7, v2, v8}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;I)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_4

    .line 173
    .line 174
    invoke-direct {v0, v6, v2, v8}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/view/View;I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    :goto_2
    invoke-direct {v0, v7, v1, v11}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;I)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_5

    .line 184
    .line 185
    invoke-direct {v0, v6, v1, v11}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/view/View;I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    goto :goto_2

    .line 190
    :cond_5
    invoke-direct {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->offsetRows()V

    .line 194
    .line 195
    .line 196
    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_6

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-le v1, v11, :cond_6

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0, v8}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-virtual {v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    sub-int/2addr v3, v11

    .line 225
    invoke-virtual {v0, v3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v0, v3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const/16 v4, 0x51

    .line 236
    .line 237
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    .line 239
    .line 240
    const-string v4, "Currently showing "

    .line 241
    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v1, " views "

    .line 249
    .line 250
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v1, " to "

    .line 257
    .line 258
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v0, " anchor "

    .line 265
    .line 266
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_6
    return-void
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    const-string p2, "CarLayoutManager"

    const/4 v0, 0x1

    if-nez p3, :cond_0

    const-string p0, "onRequestChildFocus with a null child!"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":: onRequestChildFocus child: %s, focused: %s"

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {v1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    iget v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->n:I

    if-eq p4, v1, :cond_6

    iput p4, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->n:I

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->c()I

    move-result p4

    invoke-virtual {p0, p3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, p3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p3

    :goto_0
    if-ltz p3, :cond_6

    invoke-virtual {p0, p3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Child is null at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-nez p3, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return v0

    :cond_4
    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p0, v4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    sub-int v5, v1, v5

    div-int/lit8 v6, p4, 0x2

    if-gt v5, v6, :cond_3

    sub-int v4, v2, v4

    if-le v4, p4, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 5

    const-string v0, "CarLayoutManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, ":: onScrollStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    move-result v3

    if-gt v2, v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->requestLayout()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->h:I

    :cond_3
    :goto_0
    if-eq p1, v1, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->f:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;

    :cond_4
    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->e:I

    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a()V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->q:I

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getLastFullyVisibleChildIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {p0, v4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v1

    if-ne v4, v5, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChild()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {p0, v5}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, v5}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v5, v7

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    if-ne v6, v4, :cond_2

    if-le p1, v5, :cond_2

    if-lez p1, :cond_2

    iput-boolean v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->i:Z

    move p1, v5

    goto :goto_1

    :cond_2
    if-gez p1, :cond_3

    if-nez v3, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    move-result v4

    if-le v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    move-result p1

    sub-int p1, v0, p1

    iput-boolean v1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->i:Z

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->i:Z

    :goto_1
    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->e:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->h:I

    :cond_4
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->offsetChildrenVertical(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setTop(I)V

    :cond_5
    if-lez p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    goto :goto_2

    :cond_6
    const v4, 0x7fffffff

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v5

    move v6, v2

    move v7, v6

    :goto_3
    if-ge v6, v5, :cond_7

    invoke-virtual {p0, v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v9

    invoke-virtual {p0, v8}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    sub-int v10, v0, v3

    if-ge v9, v10, :cond_7

    add-int/lit8 v9, v4, -0x1

    if-ge v8, v9, :cond_7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    sub-int/2addr v7, v1

    if-ltz v7, :cond_8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_5
    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    goto :goto_6

    :cond_a
    const v3, -0x7fffffff

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    move v5, v2

    move v6, v5

    :goto_7
    if-ltz v4, :cond_b

    invoke-virtual {p0, v4}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0, v7}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-le v8, v0, :cond_b

    add-int/lit8 v8, v3, -0x1

    if-le v7, v8, :cond_b

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v4, -0x1

    move v11, v6

    move v6, v4

    move v4, v11

    goto :goto_7

    :cond_b
    :goto_8
    sub-int/2addr v5, v1

    if-ltz v5, :cond_c

    invoke-virtual {p0, v6}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$n;)V

    goto :goto_8

    :cond_c
    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_9
    invoke-direct {p0, p3, v0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {p0, p2, v0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_9

    :cond_d
    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a()V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->offsetRows()V

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result p2

    if-le p2, v1, :cond_e

    const/4 p2, 0x2

    const-string p3, "CarLayoutManager"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Currently showing  %d views (%d to %d)"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return p1

    :cond_f
    return v2
.end method

.method public setOffsetRows(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->p:Landroid/util/LruCache;

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/LruCache;

    const/16 v0, 0x1e

    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->p:Landroid/util/LruCache;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->offsetRows()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->a(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->p:Landroid/util/LruCache;

    return-void
.end method

.method public setOnScrollListener(Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->g:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    return-void
.end method

.method public setRowOffsetMode(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->d:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->d:I

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->offsetRows()V

    return-void
.end method

.method public settleScrollForFling(Landroid/support/v7/widget/RecyclerView;I)Z
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->i:Z

    if-nez v0, :cond_b

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->h:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    if-gtz p2, :cond_3

    if-nez p2, :cond_2

    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->h:I

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    if-ltz p2, :cond_5

    if-nez p2, :cond_4

    iget v4, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->h:I

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v3

    :goto_3
    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    if-eq v0, v2, :cond_7

    iget p2, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->k:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->g:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;->onGestureDown()V

    :cond_6
    return v3

    :cond_7
    if-eqz v4, :cond_9

    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    if-eq v0, v2, :cond_9

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->g:Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView$OnScrollListener;->onGestureUp()V

    :cond_8
    return v3

    :cond_9
    iget v0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->h:I

    iget v2, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->l:I

    iget v4, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->m:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x9d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error setting scroll for fling! flingVelocity: \t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\tlastDragDistance: "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\tpageUpAtStartOfDrag: "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\tpageDownAtStartOfDrag: "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CarLayoutManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->f:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->getTargetPosition()I

    move-result p0

    :goto_4
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return v3

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getFirstFullyVisibleChildIndex()I

    move-result p2

    if-eq p2, v2, :cond_b

    invoke-virtual {p0, p2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    goto :goto_4

    :cond_b
    :goto_6
    return v1
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;I)V
    .locals 0

    new-instance p1, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;

    iget-object p2, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->b:Landroid/content/Context;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;-><init>(Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->f:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;

    invoke-virtual {p1, p3}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;->setTargetPosition(I)V

    iget-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->f:Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager$a;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$q;)V

    return-void
.end method
