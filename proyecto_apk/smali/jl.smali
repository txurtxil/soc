.class public Ljl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg20;


# static fields
.field public static final B:Ljava/lang/reflect/Method;

.field public static final C:Ljava/lang/reflect/Method;


# instance fields
.field public final A:Lh4;

.field public final a:Landroid/content/Context;

.field public b:Landroid/widget/ListAdapter;

.field public c:Ldd;

.field public final d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public final m:I

.field public n:Lkb;

.field public o:Landroid/view/View;

.field public q:Landroid/widget/AdapterView$OnItemClickListener;

.field public r:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final s:Lgl;

.field public final t:Lil;

.field public final u:Lhl;

.field public final v:Lgl;

.field public final w:Landroid/os/Handler;

.field public final x:Landroid/graphics/Rect;

.field public y:Landroid/graphics/Rect;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "ListPopupWindow"

    .line 2
    .line 3
    const-class v1, Landroid/widget/PopupWindow;

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x1c

    .line 8
    .line 9
    if-gt v2, v3, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    :try_start_0
    const-string v4, "setClipToScreenEnabled"

    .line 14
    .line 15
    new-array v5, v3, [Ljava/lang/Class;

    .line 16
    .line 17
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    aput-object v6, v5, v2

    .line 20
    .line 21
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    sput-object v4, Ljl;->B:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string v4, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 29
    .line 30
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    :try_start_1
    const-string v4, "setEpicenterBounds"

    .line 34
    .line 35
    new-array v3, v3, [Ljava/lang/Class;

    .line 36
    .line 37
    const-class v5, Landroid/graphics/Rect;

    .line 38
    .line 39
    aput-object v5, v3, v2

    .line 40
    .line 41
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Ljl;->C:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p4, -0x2

    .line 5
    iput p4, p0, Ljl;->d:I

    .line 6
    .line 7
    iput p4, p0, Ljl;->e:I

    .line 8
    .line 9
    const/16 p4, 0x3ea

    .line 10
    .line 11
    iput p4, p0, Ljl;->h:I

    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    iput p4, p0, Ljl;->l:I

    .line 15
    .line 16
    const v0, 0x7fffffff

    .line 17
    .line 18
    .line 19
    iput v0, p0, Ljl;->m:I

    .line 20
    .line 21
    new-instance v0, Lgl;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, p0, v1}, Lgl;-><init>(Ljl;I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Ljl;->s:Lgl;

    .line 28
    .line 29
    new-instance v0, Lil;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lil;-><init>(Ljl;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Ljl;->t:Lil;

    .line 35
    .line 36
    new-instance v0, Lhl;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lhl;-><init>(Ljl;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Ljl;->u:Lhl;

    .line 42
    .line 43
    new-instance v0, Lgl;

    .line 44
    .line 45
    invoke-direct {v0, p0, p4}, Lgl;-><init>(Ljl;I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Ljl;->v:Lgl;

    .line 49
    .line 50
    new-instance v0, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Ljl;->x:Landroid/graphics/Rect;

    .line 56
    .line 57
    iput-object p1, p0, Ljl;->a:Landroid/content/Context;

    .line 58
    .line 59
    new-instance v0, Landroid/os/Handler;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Ljl;->w:Landroid/os/Handler;

    .line 69
    .line 70
    sget-object v0, Lvv;->o:[I

    .line 71
    .line 72
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iput v2, p0, Ljl;->f:I

    .line 81
    .line 82
    invoke-virtual {v0, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput v2, p0, Ljl;->g:I

    .line 87
    .line 88
    if-eqz v2, :cond_0

    .line 89
    .line 90
    iput-boolean v1, p0, Ljl;->i:Z

    .line 91
    .line 92
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lh4;

    .line 96
    .line 97
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    .line 99
    .line 100
    sget-object v2, Lvv;->s:[I

    .line 101
    .line 102
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const/4 p3, 0x2

    .line 107
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    .line 113
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    invoke-static {v0, p3}, Lwt;->c(Landroid/widget/PopupWindow;Z)V

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    if-eqz p3, :cond_2

    .line 125
    .line 126
    invoke-virtual {p2, p4, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-eqz p3, :cond_2

    .line 131
    .line 132
    invoke-static {p1, p3}, Lgn;->p(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Ljl;->A:Lh4;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 150
    .line 151
    .line 152
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ldd;
    .locals 0

    .line 1
    new-instance p0, Ldd;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ldd;-><init>(Landroid/content/Context;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ljl;->A:Lh4;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Ljl;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public final d()V
    .locals 13

    .line 1
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 2
    .line 3
    iget-object v1, p0, Ljl;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Ljl;->A:Lh4;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Ljl;->z:Z

    .line 11
    .line 12
    xor-int/2addr v0, v2

    .line 13
    invoke-virtual {p0, v1, v0}, Ljl;->a(Landroid/content/Context;Z)Ldd;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Ljl;->c:Ldd;

    .line 18
    .line 19
    iget-object v4, p0, Ljl;->b:Landroid/widget/ListAdapter;

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 25
    .line 26
    iget-object v4, p0, Ljl;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 42
    .line 43
    new-instance v4, Led;

    .line 44
    .line 45
    invoke-direct {v4, v2, p0}, Led;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 52
    .line 53
    iget-object v4, p0, Ljl;->u:Lhl;

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Ljl;->r:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    iget-object v4, p0, Ljl;->c:Ldd;

    .line 63
    .line 64
    invoke-virtual {v4, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .line 79
    :goto_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v4, p0, Ljl;->x:Landroid/graphics/Rect;

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 89
    .line 90
    .line 91
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 94
    .line 95
    add-int/2addr v6, v0

    .line 96
    iget-boolean v7, p0, Ljl;->i:Z

    .line 97
    .line 98
    if-nez v7, :cond_3

    .line 99
    .line 100
    neg-int v0, v0

    .line 101
    iput v0, p0, Ljl;->g:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 105
    .line 106
    .line 107
    move v6, v5

    .line 108
    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/4 v7, 0x2

    .line 113
    if-ne v0, v7, :cond_4

    .line 114
    .line 115
    move v0, v2

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    move v0, v5

    .line 118
    :goto_2
    iget-object v8, p0, Ljl;->o:Landroid/view/View;

    .line 119
    .line 120
    iget v9, p0, Ljl;->g:I

    .line 121
    .line 122
    invoke-static {v3, v8, v9, v0}, Lel;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iget v8, p0, Ljl;->d:I

    .line 127
    .line 128
    const/4 v9, -0x2

    .line 129
    const/4 v10, -0x1

    .line 130
    if-ne v8, v10, :cond_5

    .line 131
    .line 132
    add-int/2addr v0, v6

    .line 133
    goto :goto_5

    .line 134
    :cond_5
    iget v11, p0, Ljl;->e:I

    .line 135
    .line 136
    if-eq v11, v9, :cond_7

    .line 137
    .line 138
    const/high16 v12, 0x40000000    # 2.0f

    .line 139
    .line 140
    if-eq v11, v10, :cond_6

    .line 141
    .line 142
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 156
    .line 157
    iget v11, v4, Landroid/graphics/Rect;->left:I

    .line 158
    .line 159
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 160
    .line 161
    add-int/2addr v11, v4

    .line 162
    sub-int/2addr v1, v11

    .line 163
    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 177
    .line 178
    iget v11, v4, Landroid/graphics/Rect;->left:I

    .line 179
    .line 180
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 181
    .line 182
    add-int/2addr v11, v4

    .line 183
    sub-int/2addr v1, v11

    .line 184
    const/high16 v4, -0x80000000

    .line 185
    .line 186
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    :goto_3
    iget-object v4, p0, Ljl;->c:Ldd;

    .line 191
    .line 192
    invoke-virtual {v4, v1, v0}, Ldd;->a(II)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-lez v0, :cond_8

    .line 197
    .line 198
    iget-object v1, p0, Ljl;->c:Ldd;

    .line 199
    .line 200
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    iget-object v4, p0, Ljl;->c:Ldd;

    .line 205
    .line 206
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    add-int/2addr v4, v1

    .line 211
    add-int/2addr v4, v6

    .line 212
    goto :goto_4

    .line 213
    :cond_8
    move v4, v5

    .line 214
    :goto_4
    add-int/2addr v0, v4

    .line 215
    :goto_5
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-ne v1, v7, :cond_9

    .line 220
    .line 221
    move v1, v2

    .line 222
    goto :goto_6

    .line 223
    :cond_9
    move v1, v5

    .line 224
    :goto_6
    iget v4, p0, Ljl;->h:I

    .line 225
    .line 226
    invoke-static {v3, v4}, Lwt;->d(Landroid/widget/PopupWindow;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-eqz v4, :cond_15

    .line 234
    .line 235
    iget-object v4, p0, Ljl;->o:Landroid/view/View;

    .line 236
    .line 237
    sget-object v6, Lu70;->a:Ljava/util/WeakHashMap;

    .line 238
    .line 239
    invoke-static {v4}, Lg70;->b(Landroid/view/View;)Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-nez v4, :cond_a

    .line 244
    .line 245
    goto/16 :goto_10

    .line 246
    .line 247
    :cond_a
    iget v4, p0, Ljl;->e:I

    .line 248
    .line 249
    if-ne v4, v10, :cond_b

    .line 250
    .line 251
    move v4, v10

    .line 252
    goto :goto_7

    .line 253
    :cond_b
    if-ne v4, v9, :cond_c

    .line 254
    .line 255
    iget-object v4, p0, Ljl;->o:Landroid/view/View;

    .line 256
    .line 257
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    :cond_c
    :goto_7
    if-ne v8, v10, :cond_11

    .line 262
    .line 263
    if-eqz v1, :cond_d

    .line 264
    .line 265
    move v8, v0

    .line 266
    goto :goto_8

    .line 267
    :cond_d
    move v8, v10

    .line 268
    :goto_8
    iget v0, p0, Ljl;->e:I

    .line 269
    .line 270
    if-eqz v1, :cond_f

    .line 271
    .line 272
    if-ne v0, v10, :cond_e

    .line 273
    .line 274
    move v0, v10

    .line 275
    goto :goto_9

    .line 276
    :cond_e
    move v0, v5

    .line 277
    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 281
    .line 282
    .line 283
    goto :goto_a

    .line 284
    :cond_f
    if-ne v0, v10, :cond_10

    .line 285
    .line 286
    move v5, v10

    .line 287
    :cond_10
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 291
    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_11
    if-ne v8, v9, :cond_12

    .line 295
    .line 296
    move v8, v0

    .line 297
    :cond_12
    :goto_a
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 298
    .line 299
    .line 300
    move v0, v4

    .line 301
    iget-object v4, p0, Ljl;->o:Landroid/view/View;

    .line 302
    .line 303
    iget v5, p0, Ljl;->f:I

    .line 304
    .line 305
    iget v6, p0, Ljl;->g:I

    .line 306
    .line 307
    if-gez v0, :cond_13

    .line 308
    .line 309
    move v7, v10

    .line 310
    goto :goto_b

    .line 311
    :cond_13
    move v7, v0

    .line 312
    :goto_b
    if-gez v8, :cond_14

    .line 313
    .line 314
    move v8, v10

    .line 315
    :cond_14
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_15
    iget v1, p0, Ljl;->e:I

    .line 320
    .line 321
    if-ne v1, v10, :cond_16

    .line 322
    .line 323
    move v1, v10

    .line 324
    goto :goto_c

    .line 325
    :cond_16
    if-ne v1, v9, :cond_17

    .line 326
    .line 327
    iget-object v1, p0, Ljl;->o:Landroid/view/View;

    .line 328
    .line 329
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    :cond_17
    :goto_c
    if-ne v8, v10, :cond_18

    .line 334
    .line 335
    move v8, v10

    .line 336
    goto :goto_d

    .line 337
    :cond_18
    if-ne v8, v9, :cond_19

    .line 338
    .line 339
    move v8, v0

    .line 340
    :cond_19
    :goto_d
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 344
    .line 345
    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 347
    .line 348
    const-string v1, "ListPopupWindow"

    .line 349
    .line 350
    const/16 v4, 0x1c

    .line 351
    .line 352
    if-gt v0, v4, :cond_1a

    .line 353
    .line 354
    sget-object v0, Ljl;->B:Ljava/lang/reflect/Method;

    .line 355
    .line 356
    if-eqz v0, :cond_1b

    .line 357
    .line 358
    :try_start_0
    new-array v6, v2, [Ljava/lang/Object;

    .line 359
    .line 360
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 361
    .line 362
    aput-object v7, v6, v5

    .line 363
    .line 364
    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .line 366
    .line 367
    goto :goto_e

    .line 368
    :catch_0
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 369
    .line 370
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    goto :goto_e

    .line 374
    :cond_1a
    invoke-static {v3, v2}, Lfl;->b(Landroid/widget/PopupWindow;Z)V

    .line 375
    .line 376
    .line 377
    :cond_1b
    :goto_e
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 378
    .line 379
    .line 380
    iget-object v0, p0, Ljl;->t:Lil;

    .line 381
    .line 382
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 383
    .line 384
    .line 385
    iget-boolean v0, p0, Ljl;->k:Z

    .line 386
    .line 387
    if-eqz v0, :cond_1c

    .line 388
    .line 389
    iget-boolean v0, p0, Ljl;->j:Z

    .line 390
    .line 391
    invoke-static {v3, v0}, Lwt;->c(Landroid/widget/PopupWindow;Z)V

    .line 392
    .line 393
    .line 394
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 395
    .line 396
    if-gt v0, v4, :cond_1d

    .line 397
    .line 398
    sget-object v0, Ljl;->C:Ljava/lang/reflect/Method;

    .line 399
    .line 400
    if-eqz v0, :cond_1e

    .line 401
    .line 402
    :try_start_1
    iget-object v4, p0, Ljl;->y:Landroid/graphics/Rect;

    .line 403
    .line 404
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    .line 410
    .line 411
    goto :goto_f

    .line 412
    :catch_1
    move-exception v0

    .line 413
    const-string v4, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 414
    .line 415
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .line 417
    .line 418
    goto :goto_f

    .line 419
    :cond_1d
    iget-object v0, p0, Ljl;->y:Landroid/graphics/Rect;

    .line 420
    .line 421
    invoke-static {v3, v0}, Lfl;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    .line 422
    .line 423
    .line 424
    :cond_1e
    :goto_f
    iget-object v0, p0, Ljl;->o:Landroid/view/View;

    .line 425
    .line 426
    iget v1, p0, Ljl;->f:I

    .line 427
    .line 428
    iget v4, p0, Ljl;->g:I

    .line 429
    .line 430
    iget v5, p0, Ljl;->l:I

    .line 431
    .line 432
    invoke-static {v3, v0, v1, v4, v5}, Lvt;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 433
    .line 434
    .line 435
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 436
    .line 437
    invoke-virtual {v0, v10}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 438
    .line 439
    .line 440
    iget-boolean v0, p0, Ljl;->z:Z

    .line 441
    .line 442
    if-eqz v0, :cond_1f

    .line 443
    .line 444
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 445
    .line 446
    invoke-virtual {v0}, Ldd;->isInTouchMode()Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_20

    .line 451
    .line 452
    :cond_1f
    iget-object v0, p0, Ljl;->c:Ldd;

    .line 453
    .line 454
    if-eqz v0, :cond_20

    .line 455
    .line 456
    invoke-virtual {v0, v2}, Ldd;->setListSelectionHidden(Z)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 460
    .line 461
    .line 462
    :cond_20
    iget-boolean v0, p0, Ljl;->z:Z

    .line 463
    .line 464
    if-nez v0, :cond_21

    .line 465
    .line 466
    iget-object v0, p0, Ljl;->w:Landroid/os/Handler;

    .line 467
    .line 468
    iget-object p0, p0, Ljl;->v:Lgl;

    .line 469
    .line 470
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    .line 472
    .line 473
    :cond_21
    :goto_10
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljl;->A:Lh4;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Ljl;->c:Ldd;

    .line 11
    .line 12
    iget-object v0, p0, Ljl;->w:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object p0, p0, Ljl;->s:Lgl;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Ljl;->A:Lh4;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final h()Ldd;
    .locals 0

    .line 1
    iget-object p0, p0, Ljl;->c:Ldd;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ljl;->A:Lh4;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(I)V
    .locals 0

    .line 1
    iput p1, p0, Ljl;->g:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Ljl;->i:Z

    .line 5
    .line 6
    return-void
.end method

.method public final m(I)V
    .locals 0

    .line 1
    iput p1, p0, Ljl;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final o()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljl;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget p0, p0, Ljl;->g:I

    .line 8
    .line 9
    return p0
.end method

.method public q(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljl;->n:Lkb;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lkb;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p0}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ljl;->n:Lkb;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Ljl;->b:Landroid/widget/ListAdapter;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    iput-object p1, p0, Ljl;->b:Landroid/widget/ListAdapter;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Ljl;->n:Lkb;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object p1, p0, Ljl;->c:Ldd;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    iget-object p0, p0, Ljl;->b:Landroid/widget/ListAdapter;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljl;->A:Lh4;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Ljl;->x:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    .line 13
    .line 14
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    add-int/2addr v0, p1

    .line 20
    iput v0, p0, Ljl;->e:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput p1, p0, Ljl;->e:I

    .line 24
    .line 25
    return-void
.end method
