.class public final Lh5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lp40;

.field public c:Lp40;

.field public d:Lp40;

.field public e:Lp40;

.field public f:Lp40;

.field public g:Lp40;

.field public h:Lp40;

.field public final i:Lr5;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lh5;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lh5;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Lh5;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Lr5;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lr5;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lh5;->i:Lr5;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Lz3;I)Lp40;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lz3;->a:Lrx;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Lrx;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lp40;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Lp40;->d:Z

    .line 18
    .line 19
    iput-object p0, p1, Lp40;->a:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public static h(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-ge v0, v1, :cond_d

    .line 6
    .line 7
    if-eqz p1, :cond_d

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0, p1}, Lld;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {p0, p1}, Lld;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget p2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 29
    .line 30
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 31
    .line 32
    if-le p2, v0, :cond_2

    .line 33
    .line 34
    move v1, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v1, p2

    .line 37
    :goto_0
    if-le p2, v0, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move p2, v0

    .line 41
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    if-ltz v1, :cond_c

    .line 48
    .line 49
    if-le p2, v0, :cond_4

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_4
    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 54
    .line 55
    and-int/lit16 v4, v4, 0xfff

    .line 56
    .line 57
    const/16 v5, 0x81

    .line 58
    .line 59
    if-eq v4, v5, :cond_b

    .line 60
    .line 61
    const/16 v5, 0xe1

    .line 62
    .line 63
    if-eq v4, v5, :cond_b

    .line 64
    .line 65
    const/16 v5, 0x12

    .line 66
    .line 67
    if-ne v4, v5, :cond_5

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_5
    const/16 v3, 0x800

    .line 72
    .line 73
    if-gt v0, v3, :cond_6

    .line 74
    .line 75
    invoke-static {p0, p1, v1, p2}, Lk60;->H(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_6
    sub-int v0, p2, v1

    .line 80
    .line 81
    const/16 v3, 0x400

    .line 82
    .line 83
    if-le v0, v3, :cond_7

    .line 84
    .line 85
    move v3, v2

    .line 86
    goto :goto_2

    .line 87
    :cond_7
    move v3, v0

    .line 88
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    sub-int/2addr v4, p2

    .line 93
    rsub-int v5, v3, 0x800

    .line 94
    .line 95
    const-wide v6, 0x3fe999999999999aL    # 0.8

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    int-to-double v8, v5

    .line 101
    mul-double/2addr v8, v6

    .line 102
    double-to-int v6, v8

    .line 103
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    sub-int v6, v5, v6

    .line 108
    .line 109
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    sub-int/2addr v5, v4

    .line 114
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    sub-int/2addr v1, v5

    .line 119
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_8

    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    add-int/lit8 v5, v5, -0x1

    .line 132
    .line 133
    :cond_8
    add-int v6, p2, v4

    .line 134
    .line 135
    const/4 v7, 0x1

    .line 136
    sub-int/2addr v6, v7

    .line 137
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_9

    .line 146
    .line 147
    add-int/lit8 v4, v4, -0x1

    .line 148
    .line 149
    :cond_9
    add-int v6, v5, v3

    .line 150
    .line 151
    add-int v8, v6, v4

    .line 152
    .line 153
    if-eq v3, v0, :cond_a

    .line 154
    .line 155
    add-int v0, v1, v5

    .line 156
    .line 157
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    add-int/2addr v4, p2

    .line 162
    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const/4 p2, 0x2

    .line 167
    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 168
    .line 169
    aput-object v0, p2, v2

    .line 170
    .line 171
    aput-object p1, p2, v7

    .line 172
    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    goto :goto_3

    .line 178
    :cond_a
    add-int/2addr v8, v1

    .line 179
    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_3
    invoke-static {p0, p1, v5, v6}, Lk60;->H(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_b
    :goto_4
    invoke-static {p0, v3, v2, v2}, Lk60;->H(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_c
    :goto_5
    invoke-static {p0, v3, v2, v2}, Lk60;->H(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 192
    .line 193
    .line 194
    :cond_d
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lp40;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lh5;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1, p2, p0}, Lz3;->d(Landroid/graphics/drawable/Drawable;Lp40;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lh5;->b:Lp40;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lh5;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lh5;->c:Lp40;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lh5;->d:Lp40;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lh5;->e:Lp40;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Lh5;->b:Lp40;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Lh5;->a(Landroid/graphics/drawable/Drawable;Lp40;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Lh5;->c:Lp40;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Lh5;->a(Landroid/graphics/drawable/Drawable;Lp40;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Lh5;->d:Lp40;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Lh5;->a(Landroid/graphics/drawable/Drawable;Lp40;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Lh5;->e:Lp40;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Lh5;->a(Landroid/graphics/drawable/Drawable;Lp40;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lh5;->f:Lp40;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lh5;->g:Lp40;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    :goto_0
    invoke-static {v3}, Ld5;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 70
    .line 71
    iget-object v3, p0, Lh5;->f:Lp40;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3}, Lh5;->a(Landroid/graphics/drawable/Drawable;Lp40;)V

    .line 74
    .line 75
    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Lh5;->g:Lp40;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Lh5;->a(Landroid/graphics/drawable/Drawable;Lp40;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lh5;->h:Lp40;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lp40;->a:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lh5;->h:Lp40;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lp40;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    iget-object v1, v0, Lh5;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v7

    .line 13
    invoke-static {}, Lz3;->a()Lz3;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    sget-object v2, Lvv;->h:[I

    .line 18
    .line 19
    invoke-static {v7, v3, v2, v5}, Lv5;->C(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lv5;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    move-object v3, v2

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v4, v9, Lv5;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Landroid/content/res/TypedArray;

    .line 31
    .line 32
    move v6, v5

    .line 33
    move-object v5, v4

    .line 34
    move-object/from16 v4, p1

    .line 35
    .line 36
    invoke-static/range {v1 .. v6}, Lu70;->g(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 37
    .line 38
    .line 39
    move-object v3, v4

    .line 40
    move v5, v6

    .line 41
    move-object v6, v1

    .line 42
    iget-object v1, v9, Lv5;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Landroid/content/res/TypedArray;

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, -0x1

    .line 48
    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v12, 0x3

    .line 53
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v7, v8, v4}, Lh5;->c(Landroid/content/Context;Lz3;I)Lp40;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iput-object v4, v0, Lh5;->b:Lp40;

    .line 68
    .line 69
    :cond_0
    const/4 v13, 0x1

    .line 70
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-static {v7, v8, v4}, Lh5;->c(Landroid/content/Context;Lz3;I)Lp40;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iput-object v4, v0, Lh5;->c:Lp40;

    .line 85
    .line 86
    :cond_1
    const/4 v14, 0x4

    .line 87
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-virtual {v1, v14, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-static {v7, v8, v4}, Lh5;->c(Landroid/content/Context;Lz3;I)Lp40;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iput-object v4, v0, Lh5;->d:Lp40;

    .line 102
    .line 103
    :cond_2
    const/4 v15, 0x2

    .line 104
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    invoke-virtual {v1, v15, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-static {v7, v8, v4}, Lh5;->c(Landroid/content/Context;Lz3;I)Lp40;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    iput-object v4, v0, Lh5;->e:Lp40;

    .line 119
    .line 120
    :cond_3
    const/4 v4, 0x5

    .line 121
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 122
    .line 123
    .line 124
    move-result v16

    .line 125
    if-eqz v16, :cond_4

    .line 126
    .line 127
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    invoke-static {v7, v8, v12}, Lh5;->c(Landroid/content/Context;Lz3;I)Lp40;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    iput-object v12, v0, Lh5;->f:Lp40;

    .line 136
    .line 137
    :cond_4
    const/4 v12, 0x6

    .line 138
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 139
    .line 140
    .line 141
    move-result v17

    .line 142
    if-eqz v17, :cond_5

    .line 143
    .line 144
    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-static {v7, v8, v1}, Lh5;->c(Landroid/content/Context;Lz3;I)Lp40;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, v0, Lh5;->g:Lp40;

    .line 153
    .line 154
    :cond_5
    invoke-virtual {v9}, Lv5;->E()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 162
    .line 163
    const/16 v9, 0x1a

    .line 164
    .line 165
    sget-object v4, Lvv;->x:[I

    .line 166
    .line 167
    const/16 v12, 0xe

    .line 168
    .line 169
    const/16 v13, 0xd

    .line 170
    .line 171
    const/16 v15, 0xf

    .line 172
    .line 173
    if-eq v2, v11, :cond_9

    .line 174
    .line 175
    new-instance v14, Lv5;

    .line 176
    .line 177
    invoke-virtual {v7, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-direct {v14, v7, v2}, Lv5;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 182
    .line 183
    .line 184
    if-nez v1, :cond_6

    .line 185
    .line 186
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 187
    .line 188
    .line 189
    move-result v20

    .line 190
    if-eqz v20, :cond_6

    .line 191
    .line 192
    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 193
    .line 194
    .line 195
    move-result v20

    .line 196
    move/from16 v21, v20

    .line 197
    .line 198
    const/16 v20, 0x1

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_6
    move/from16 v20, v10

    .line 202
    .line 203
    move/from16 v21, v20

    .line 204
    .line 205
    :goto_0
    invoke-virtual {v0, v7, v14}, Lh5;->n(Landroid/content/Context;Lv5;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 209
    .line 210
    .line 211
    move-result v22

    .line 212
    if-eqz v22, :cond_7

    .line 213
    .line 214
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v22

    .line 218
    goto :goto_1

    .line 219
    :cond_7
    const/16 v22, 0x0

    .line 220
    .line 221
    :goto_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 222
    .line 223
    if-lt v11, v9, :cond_8

    .line 224
    .line 225
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-eqz v11, :cond_8

    .line 230
    .line 231
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    goto :goto_2

    .line 236
    :cond_8
    const/4 v2, 0x0

    .line 237
    :goto_2
    invoke-virtual {v14}, Lv5;->E()V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_9
    move/from16 v20, v10

    .line 242
    .line 243
    move/from16 v21, v20

    .line 244
    .line 245
    const/4 v2, 0x0

    .line 246
    const/16 v22, 0x0

    .line 247
    .line 248
    :goto_3
    new-instance v11, Lv5;

    .line 249
    .line 250
    invoke-virtual {v7, v3, v4, v5, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-direct {v11, v7, v4}, Lv5;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 255
    .line 256
    .line 257
    if-nez v1, :cond_a

    .line 258
    .line 259
    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    if-eqz v14, :cond_a

    .line 264
    .line 265
    invoke-virtual {v4, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 266
    .line 267
    .line 268
    move-result v21

    .line 269
    const/16 v20, 0x1

    .line 270
    .line 271
    :cond_a
    move/from16 v12, v21

    .line 272
    .line 273
    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    if-eqz v14, :cond_b

    .line 278
    .line 279
    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v22

    .line 283
    :cond_b
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 284
    .line 285
    if-lt v14, v9, :cond_c

    .line 286
    .line 287
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-eqz v9, :cond_c

    .line 292
    .line 293
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    :cond_c
    const/16 v9, 0x1c

    .line 298
    .line 299
    if-lt v14, v9, :cond_d

    .line 300
    .line 301
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-eqz v9, :cond_d

    .line 306
    .line 307
    const/4 v9, -0x1

    .line 308
    invoke-virtual {v4, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-nez v4, :cond_d

    .line 313
    .line 314
    const/4 v4, 0x0

    .line 315
    invoke-virtual {v6, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 316
    .line 317
    .line 318
    :cond_d
    invoke-virtual {v0, v7, v11}, Lh5;->n(Landroid/content/Context;Lv5;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v11}, Lv5;->E()V

    .line 322
    .line 323
    .line 324
    if-nez v1, :cond_e

    .line 325
    .line 326
    if-eqz v20, :cond_e

    .line 327
    .line 328
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 329
    .line 330
    .line 331
    :cond_e
    iget-object v1, v0, Lh5;->l:Landroid/graphics/Typeface;

    .line 332
    .line 333
    if-eqz v1, :cond_10

    .line 334
    .line 335
    iget v4, v0, Lh5;->k:I

    .line 336
    .line 337
    const/4 v9, -0x1

    .line 338
    if-ne v4, v9, :cond_f

    .line 339
    .line 340
    iget v4, v0, Lh5;->j:I

    .line 341
    .line 342
    invoke-virtual {v6, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 343
    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_f
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 347
    .line 348
    .line 349
    :cond_10
    :goto_4
    if-eqz v2, :cond_11

    .line 350
    .line 351
    invoke-static {v6, v2}, Lf5;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    :cond_11
    if-eqz v22, :cond_12

    .line 355
    .line 356
    invoke-static/range {v22 .. v22}, Le5;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-static {v6, v1}, Le5;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 361
    .line 362
    .line 363
    :cond_12
    iget-object v9, v0, Lh5;->i:Lr5;

    .line 364
    .line 365
    iget-object v11, v9, Lr5;->j:Landroid/content/Context;

    .line 366
    .line 367
    sget-object v2, Lvv;->i:[I

    .line 368
    .line 369
    invoke-virtual {v11, v3, v2, v5, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    iget-object v0, v9, Lr5;->i:Landroid/widget/TextView;

    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    const/4 v12, 0x5

    .line 380
    invoke-static/range {v0 .. v5}, Lu70;->g(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_13

    .line 388
    .line 389
    invoke-virtual {v4, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    iput v0, v9, Lr5;->a:I

    .line 394
    .line 395
    :cond_13
    const/4 v0, 0x4

    .line 396
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    const/high16 v5, -0x40800000    # -1.0f

    .line 401
    .line 402
    if-eqz v1, :cond_14

    .line 403
    .line 404
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    :goto_5
    const/4 v1, 0x2

    .line 409
    goto :goto_6

    .line 410
    :cond_14
    move v0, v5

    .line 411
    goto :goto_5

    .line 412
    :goto_6
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 413
    .line 414
    .line 415
    move-result v12

    .line 416
    if-eqz v12, :cond_15

    .line 417
    .line 418
    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 419
    .line 420
    .line 421
    move-result v12

    .line 422
    :goto_7
    const/4 v1, 0x1

    .line 423
    goto :goto_8

    .line 424
    :cond_15
    move v12, v5

    .line 425
    goto :goto_7

    .line 426
    :goto_8
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 427
    .line 428
    .line 429
    move-result v14

    .line 430
    if-eqz v14, :cond_16

    .line 431
    .line 432
    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 433
    .line 434
    .line 435
    move-result v14

    .line 436
    :goto_9
    const/4 v1, 0x3

    .line 437
    goto :goto_a

    .line 438
    :cond_16
    move v14, v5

    .line 439
    goto :goto_9

    .line 440
    :goto_a
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 441
    .line 442
    .line 443
    move-result v16

    .line 444
    move/from16 p0, v5

    .line 445
    .line 446
    if-eqz v16, :cond_19

    .line 447
    .line 448
    invoke-virtual {v4, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    if-lez v5, :cond_19

    .line 453
    .line 454
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    new-array v15, v5, [I

    .line 467
    .line 468
    if-lez v5, :cond_18

    .line 469
    .line 470
    move v13, v10

    .line 471
    :goto_b
    if-ge v13, v5, :cond_17

    .line 472
    .line 473
    const/4 v10, -0x1

    .line 474
    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 475
    .line 476
    .line 477
    move-result v21

    .line 478
    aput v21, v15, v13

    .line 479
    .line 480
    add-int/lit8 v13, v13, 0x1

    .line 481
    .line 482
    const/4 v10, 0x0

    .line 483
    goto :goto_b

    .line 484
    :cond_17
    invoke-static {v15}, Lr5;->b([I)[I

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    iput-object v5, v9, Lr5;->f:[I

    .line 489
    .line 490
    invoke-virtual {v9}, Lr5;->i()Z

    .line 491
    .line 492
    .line 493
    :cond_18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 494
    .line 495
    .line 496
    :cond_19
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v9}, Lr5;->j()Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    const/high16 v4, 0x3f800000    # 1.0f

    .line 504
    .line 505
    if-eqz v1, :cond_1e

    .line 506
    .line 507
    iget v1, v9, Lr5;->a:I

    .line 508
    .line 509
    const/4 v5, 0x1

    .line 510
    if-ne v1, v5, :cond_1f

    .line 511
    .line 512
    iget-boolean v1, v9, Lr5;->g:Z

    .line 513
    .line 514
    if-nez v1, :cond_1d

    .line 515
    .line 516
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    cmpl-float v5, v12, p0

    .line 525
    .line 526
    if-nez v5, :cond_1a

    .line 527
    .line 528
    const/high16 v5, 0x41400000    # 12.0f

    .line 529
    .line 530
    const/4 v10, 0x2

    .line 531
    invoke-static {v10, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 532
    .line 533
    .line 534
    move-result v12

    .line 535
    goto :goto_c

    .line 536
    :cond_1a
    const/4 v10, 0x2

    .line 537
    :goto_c
    cmpl-float v5, v14, p0

    .line 538
    .line 539
    if-nez v5, :cond_1b

    .line 540
    .line 541
    const/high16 v5, 0x42e00000    # 112.0f

    .line 542
    .line 543
    invoke-static {v10, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 544
    .line 545
    .line 546
    move-result v14

    .line 547
    :cond_1b
    cmpl-float v1, v0, p0

    .line 548
    .line 549
    if-nez v1, :cond_1c

    .line 550
    .line 551
    move v0, v4

    .line 552
    :cond_1c
    invoke-virtual {v9, v12, v14, v0}, Lr5;->k(FFF)V

    .line 553
    .line 554
    .line 555
    :cond_1d
    invoke-virtual {v9}, Lr5;->h()Z

    .line 556
    .line 557
    .line 558
    goto :goto_d

    .line 559
    :cond_1e
    const/4 v0, 0x0

    .line 560
    iput v0, v9, Lr5;->a:I

    .line 561
    .line 562
    :cond_1f
    :goto_d
    sget-boolean v0, Ll80;->b:Z

    .line 563
    .line 564
    if-eqz v0, :cond_21

    .line 565
    .line 566
    iget v0, v9, Lr5;->a:I

    .line 567
    .line 568
    if-eqz v0, :cond_21

    .line 569
    .line 570
    iget-object v0, v9, Lr5;->f:[I

    .line 571
    .line 572
    array-length v1, v0

    .line 573
    if-lez v1, :cond_21

    .line 574
    .line 575
    invoke-static {v6}, Lf5;->a(Landroid/widget/TextView;)I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    int-to-float v1, v1

    .line 580
    cmpl-float v1, v1, p0

    .line 581
    .line 582
    if-eqz v1, :cond_20

    .line 583
    .line 584
    iget v0, v9, Lr5;->d:F

    .line 585
    .line 586
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    iget v1, v9, Lr5;->e:F

    .line 591
    .line 592
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    iget v5, v9, Lr5;->c:F

    .line 597
    .line 598
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    const/4 v9, 0x0

    .line 603
    invoke-static {v6, v0, v1, v5, v9}, Lf5;->b(Landroid/widget/TextView;IIII)V

    .line 604
    .line 605
    .line 606
    goto :goto_e

    .line 607
    :cond_20
    const/4 v9, 0x0

    .line 608
    invoke-static {v6, v0, v9}, Lf5;->c(Landroid/widget/TextView;[II)V

    .line 609
    .line 610
    .line 611
    :cond_21
    :goto_e
    invoke-virtual {v7, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    const/16 v1, 0x8

    .line 616
    .line 617
    const/4 v9, -0x1

    .line 618
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    if-eq v1, v9, :cond_22

    .line 623
    .line 624
    invoke-virtual {v8, v7, v1}, Lz3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    :goto_f
    const/16 v2, 0xd

    .line 629
    .line 630
    goto :goto_10

    .line 631
    :cond_22
    const/4 v1, 0x0

    .line 632
    goto :goto_f

    .line 633
    :goto_10
    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    if-eq v2, v9, :cond_23

    .line 638
    .line 639
    invoke-virtual {v8, v7, v2}, Lz3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    goto :goto_11

    .line 644
    :cond_23
    const/4 v2, 0x0

    .line 645
    :goto_11
    const/16 v3, 0x9

    .line 646
    .line 647
    invoke-virtual {v0, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    if-eq v3, v9, :cond_24

    .line 652
    .line 653
    invoke-virtual {v8, v7, v3}, Lz3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    :goto_12
    const/4 v5, 0x6

    .line 658
    goto :goto_13

    .line 659
    :cond_24
    const/4 v3, 0x0

    .line 660
    goto :goto_12

    .line 661
    :goto_13
    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 662
    .line 663
    .line 664
    move-result v5

    .line 665
    if-eq v5, v9, :cond_25

    .line 666
    .line 667
    invoke-virtual {v8, v7, v5}, Lz3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    goto :goto_14

    .line 672
    :cond_25
    const/4 v5, 0x0

    .line 673
    :goto_14
    const/16 v10, 0xa

    .line 674
    .line 675
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 676
    .line 677
    .line 678
    move-result v10

    .line 679
    if-eq v10, v9, :cond_26

    .line 680
    .line 681
    invoke-virtual {v8, v7, v10}, Lz3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 682
    .line 683
    .line 684
    move-result-object v10

    .line 685
    goto :goto_15

    .line 686
    :cond_26
    const/4 v10, 0x0

    .line 687
    :goto_15
    const/4 v11, 0x7

    .line 688
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 689
    .line 690
    .line 691
    move-result v11

    .line 692
    if-eq v11, v9, :cond_27

    .line 693
    .line 694
    invoke-virtual {v8, v7, v11}, Lz3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 695
    .line 696
    .line 697
    move-result-object v8

    .line 698
    goto :goto_16

    .line 699
    :cond_27
    const/4 v8, 0x0

    .line 700
    :goto_16
    if-nez v10, :cond_32

    .line 701
    .line 702
    if-eqz v8, :cond_28

    .line 703
    .line 704
    goto :goto_1f

    .line 705
    :cond_28
    if-nez v1, :cond_29

    .line 706
    .line 707
    if-nez v2, :cond_29

    .line 708
    .line 709
    if-nez v3, :cond_29

    .line 710
    .line 711
    if-eqz v5, :cond_37

    .line 712
    .line 713
    :cond_29
    invoke-static {v6}, Ld5;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 714
    .line 715
    .line 716
    move-result-object v8

    .line 717
    const/16 v20, 0x0

    .line 718
    .line 719
    aget-object v9, v8, v20

    .line 720
    .line 721
    if-nez v9, :cond_2f

    .line 722
    .line 723
    const/16 v19, 0x2

    .line 724
    .line 725
    aget-object v10, v8, v19

    .line 726
    .line 727
    if-eqz v10, :cond_2a

    .line 728
    .line 729
    goto :goto_1b

    .line 730
    :cond_2a
    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 731
    .line 732
    .line 733
    move-result-object v8

    .line 734
    if-eqz v1, :cond_2b

    .line 735
    .line 736
    goto :goto_17

    .line 737
    :cond_2b
    aget-object v1, v8, v20

    .line 738
    .line 739
    :goto_17
    if-eqz v2, :cond_2c

    .line 740
    .line 741
    goto :goto_18

    .line 742
    :cond_2c
    const/16 v18, 0x1

    .line 743
    .line 744
    aget-object v2, v8, v18

    .line 745
    .line 746
    :goto_18
    if-eqz v3, :cond_2d

    .line 747
    .line 748
    goto :goto_19

    .line 749
    :cond_2d
    const/16 v19, 0x2

    .line 750
    .line 751
    aget-object v3, v8, v19

    .line 752
    .line 753
    :goto_19
    if-eqz v5, :cond_2e

    .line 754
    .line 755
    goto :goto_1a

    .line 756
    :cond_2e
    const/16 v16, 0x3

    .line 757
    .line 758
    aget-object v5, v8, v16

    .line 759
    .line 760
    :goto_1a
    invoke-virtual {v6, v1, v2, v3, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 761
    .line 762
    .line 763
    goto :goto_24

    .line 764
    :cond_2f
    :goto_1b
    if-eqz v2, :cond_30

    .line 765
    .line 766
    :goto_1c
    const/16 v19, 0x2

    .line 767
    .line 768
    goto :goto_1d

    .line 769
    :cond_30
    const/16 v18, 0x1

    .line 770
    .line 771
    aget-object v2, v8, v18

    .line 772
    .line 773
    goto :goto_1c

    .line 774
    :goto_1d
    aget-object v1, v8, v19

    .line 775
    .line 776
    if-eqz v5, :cond_31

    .line 777
    .line 778
    goto :goto_1e

    .line 779
    :cond_31
    const/16 v16, 0x3

    .line 780
    .line 781
    aget-object v5, v8, v16

    .line 782
    .line 783
    :goto_1e
    invoke-static {v6, v9, v2, v1, v5}, Ld5;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 784
    .line 785
    .line 786
    goto :goto_24

    .line 787
    :cond_32
    :goto_1f
    invoke-static {v6}, Ld5;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    if-eqz v10, :cond_33

    .line 792
    .line 793
    goto :goto_20

    .line 794
    :cond_33
    const/16 v20, 0x0

    .line 795
    .line 796
    aget-object v10, v1, v20

    .line 797
    .line 798
    :goto_20
    if-eqz v2, :cond_34

    .line 799
    .line 800
    goto :goto_21

    .line 801
    :cond_34
    const/16 v18, 0x1

    .line 802
    .line 803
    aget-object v2, v1, v18

    .line 804
    .line 805
    :goto_21
    if-eqz v8, :cond_35

    .line 806
    .line 807
    goto :goto_22

    .line 808
    :cond_35
    const/16 v19, 0x2

    .line 809
    .line 810
    aget-object v8, v1, v19

    .line 811
    .line 812
    :goto_22
    if-eqz v5, :cond_36

    .line 813
    .line 814
    goto :goto_23

    .line 815
    :cond_36
    const/16 v16, 0x3

    .line 816
    .line 817
    aget-object v5, v1, v16

    .line 818
    .line 819
    :goto_23
    invoke-static {v6, v10, v2, v8, v5}, Ld5;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 820
    .line 821
    .line 822
    :cond_37
    :goto_24
    const/16 v1, 0xb

    .line 823
    .line 824
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 825
    .line 826
    .line 827
    move-result v2

    .line 828
    if-eqz v2, :cond_39

    .line 829
    .line 830
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 831
    .line 832
    .line 833
    move-result v2

    .line 834
    if-eqz v2, :cond_38

    .line 835
    .line 836
    const/4 v9, 0x0

    .line 837
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 838
    .line 839
    .line 840
    move-result v2

    .line 841
    if-eqz v2, :cond_38

    .line 842
    .line 843
    invoke-static {v7, v2}, Lgn;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    if-eqz v2, :cond_38

    .line 848
    .line 849
    goto :goto_25

    .line 850
    :cond_38
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    :goto_25
    invoke-static {v6, v2}, Lh40;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 855
    .line 856
    .line 857
    :cond_39
    const/16 v1, 0xc

    .line 858
    .line 859
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 860
    .line 861
    .line 862
    move-result v2

    .line 863
    const/4 v9, -0x1

    .line 864
    if-eqz v2, :cond_3a

    .line 865
    .line 866
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    const/4 v2, 0x0

    .line 871
    invoke-static {v1, v2}, Lxc;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    invoke-static {v6, v1}, Lh40;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 876
    .line 877
    .line 878
    :cond_3a
    const/16 v1, 0xf

    .line 879
    .line 880
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    const/16 v2, 0x12

    .line 885
    .line 886
    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 887
    .line 888
    .line 889
    move-result v2

    .line 890
    const/16 v3, 0x13

    .line 891
    .line 892
    invoke-virtual {v0, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 893
    .line 894
    .line 895
    move-result v3

    .line 896
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 897
    .line 898
    .line 899
    if-eq v1, v9, :cond_3b

    .line 900
    .line 901
    invoke-static {v6, v1}, Ls8;->A(Landroid/widget/TextView;I)V

    .line 902
    .line 903
    .line 904
    :cond_3b
    if-eq v2, v9, :cond_3c

    .line 905
    .line 906
    invoke-static {v6, v2}, Ls8;->B(Landroid/widget/TextView;I)V

    .line 907
    .line 908
    .line 909
    :cond_3c
    if-eq v3, v9, :cond_3e

    .line 910
    .line 911
    if-ltz v3, :cond_3d

    .line 912
    .line 913
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    const/4 v2, 0x0

    .line 918
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 919
    .line 920
    .line 921
    move-result v0

    .line 922
    if-eq v3, v0, :cond_3e

    .line 923
    .line 924
    sub-int/2addr v3, v0

    .line 925
    int-to-float v0, v3

    .line 926
    invoke-virtual {v6, v0, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 927
    .line 928
    .line 929
    return-void

    .line 930
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 931
    .line 932
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 933
    .line 934
    .line 935
    throw v0

    .line 936
    :cond_3e
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 5

    .line 1
    new-instance v0, Lv5;

    .line 2
    .line 3
    sget-object v1, Lvv;->x:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, p1, p2}, Lv5;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0xe

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    iget-object v4, p0, Lh5;->a:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0, p1, v0}, Lh5;->n(Landroid/content/Context;Lv5;)V

    .line 48
    .line 49
    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v1, 0x1a

    .line 53
    .line 54
    if-lt p1, v1, :cond_2

    .line 55
    .line 56
    const/16 p1, 0xd

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-static {v4, p1}, Lf5;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {v0}, Lv5;->E()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget p0, p0, Lh5;->j:I

    .line 81
    .line 82
    invoke-virtual {v4, p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method public final i(IIII)V
    .locals 1

    .line 1
    iget-object p0, p0, Lh5;->i:Lr5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lr5;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lr5;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lr5;->k(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lr5;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lr5;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final j([II)V
    .locals 5

    .line 1
    iget-object p0, p0, Lh5;->i:Lr5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lr5;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-lez v0, :cond_3

    .line 12
    .line 13
    new-array v2, v0, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v3, p0, Lr5;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_0
    if-ge v1, v0, :cond_1

    .line 33
    .line 34
    aget v4, p1, v1

    .line 35
    .line 36
    int-to-float v4, v4

    .line 37
    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    aput v4, v2, v1

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v2}, Lr5;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lr5;->f:[I

    .line 55
    .line 56
    invoke-virtual {p0}, Lr5;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "None of the preset sizes is valid: "

    .line 72
    .line 73
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_3
    iput-boolean v1, p0, Lr5;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {p0}, Lr5;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Lr5;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final k(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lh5;->i:Lr5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lr5;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lr5;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v0, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/high16 v2, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1, v1}, Lr5;->k(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lr5;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lr5;->a()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const-string p0, "Unknown auto-size text type: "

    .line 53
    .line 54
    invoke-static {p1, p0}, Lt20;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lr5;->a:I

    .line 64
    .line 65
    const/high16 v0, -0x40800000    # -1.0f

    .line 66
    .line 67
    iput v0, p0, Lr5;->d:F

    .line 68
    .line 69
    iput v0, p0, Lr5;->e:F

    .line 70
    .line 71
    iput v0, p0, Lr5;->c:F

    .line 72
    .line 73
    new-array v0, p1, [I

    .line 74
    .line 75
    iput-object v0, p0, Lr5;->f:[I

    .line 76
    .line 77
    iput-boolean p1, p0, Lr5;->b:Z

    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh5;->h:Lp40;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lp40;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lh5;->h:Lp40;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lh5;->h:Lp40;

    .line 13
    .line 14
    iput-object p1, v0, Lp40;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lp40;->d:Z

    .line 22
    .line 23
    iput-object v0, p0, Lh5;->b:Lp40;

    .line 24
    .line 25
    iput-object v0, p0, Lh5;->c:Lp40;

    .line 26
    .line 27
    iput-object v0, p0, Lh5;->d:Lp40;

    .line 28
    .line 29
    iput-object v0, p0, Lh5;->e:Lp40;

    .line 30
    .line 31
    iput-object v0, p0, Lh5;->f:Lp40;

    .line 32
    .line 33
    iput-object v0, p0, Lh5;->g:Lp40;

    .line 34
    .line 35
    return-void
.end method

.method public final m(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh5;->h:Lp40;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lp40;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lh5;->h:Lp40;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lh5;->h:Lp40;

    .line 13
    .line 14
    iput-object p1, v0, Lp40;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Lp40;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Lh5;->b:Lp40;

    .line 24
    .line 25
    iput-object v0, p0, Lh5;->c:Lp40;

    .line 26
    .line 27
    iput-object v0, p0, Lh5;->d:Lp40;

    .line 28
    .line 29
    iput-object v0, p0, Lh5;->e:Lp40;

    .line 30
    .line 31
    iput-object v0, p0, Lh5;->f:Lp40;

    .line 32
    .line 33
    iput-object v0, p0, Lh5;->g:Lp40;

    .line 34
    .line 35
    return-void
.end method

.method public final n(Landroid/content/Context;Lv5;)V
    .locals 11

    .line 1
    iget v0, p0, Lh5;->j:I

    .line 2
    .line 3
    iget-object v1, p2, Lv5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/res/TypedArray;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lh5;->j:I

    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    const/16 v4, 0x1c

    .line 18
    .line 19
    if-lt v0, v4, :cond_0

    .line 20
    .line 21
    const/16 v5, 0xb

    .line 22
    .line 23
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput v5, p0, Lh5;->k:I

    .line 28
    .line 29
    if-eq v5, v3, :cond_0

    .line 30
    .line 31
    iget v5, p0, Lh5;->j:I

    .line 32
    .line 33
    and-int/2addr v5, v2

    .line 34
    iput v5, p0, Lh5;->j:I

    .line 35
    .line 36
    :cond_0
    const/16 v5, 0xa

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x1

    .line 43
    const/16 v8, 0xc

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    if-nez v6, :cond_5

    .line 47
    .line 48
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_e

    .line 60
    .line 61
    iput-boolean v9, p0, Lh5;->m:Z

    .line 62
    .line 63
    invoke-virtual {v1, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v7, :cond_4

    .line 68
    .line 69
    if-eq p1, v2, :cond_3

    .line 70
    .line 71
    const/4 p2, 0x3

    .line 72
    if-eq p1, p2, :cond_2

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 77
    .line 78
    iput-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 82
    .line 83
    iput-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 87
    .line 88
    iput-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    :goto_0
    const/4 v6, 0x0

    .line 92
    iput-object v6, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 93
    .line 94
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    move v5, v8

    .line 101
    :cond_6
    iget v6, p0, Lh5;->k:I

    .line 102
    .line 103
    iget v8, p0, Lh5;->j:I

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_b

    .line 110
    .line 111
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 112
    .line 113
    iget-object v10, p0, Lh5;->a:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v10, Lb5;

    .line 119
    .line 120
    invoke-direct {v10, p0, v6, v8, p1}, Lb5;-><init>(Lh5;IILjava/lang/ref/WeakReference;)V

    .line 121
    .line 122
    .line 123
    :try_start_0
    iget p1, p0, Lh5;->j:I

    .line 124
    .line 125
    invoke-virtual {p2, v5, p1, v10}, Lv5;->t(IILb5;)Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_9

    .line 130
    .line 131
    if-lt v0, v4, :cond_8

    .line 132
    .line 133
    iget p2, p0, Lh5;->k:I

    .line 134
    .line 135
    if-eq p2, v3, :cond_8

    .line 136
    .line 137
    invoke-static {p1, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget p2, p0, Lh5;->k:I

    .line 142
    .line 143
    iget v0, p0, Lh5;->j:I

    .line 144
    .line 145
    and-int/2addr v0, v2

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    move v0, v7

    .line 149
    goto :goto_1

    .line 150
    :cond_7
    move v0, v9

    .line 151
    :goto_1
    invoke-static {p1, p2, v0}, Lg5;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_8
    iput-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 159
    .line 160
    :cond_9
    :goto_2
    iget-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 161
    .line 162
    if-nez p1, :cond_a

    .line 163
    .line 164
    move p1, v7

    .line 165
    goto :goto_3

    .line 166
    :cond_a
    move p1, v9

    .line 167
    :goto_3
    iput-boolean p1, p0, Lh5;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    :catch_0
    :cond_b
    iget-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 170
    .line 171
    if-nez p1, :cond_e

    .line 172
    .line 173
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_e

    .line 178
    .line 179
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .line 181
    if-lt p2, v4, :cond_d

    .line 182
    .line 183
    iget p2, p0, Lh5;->k:I

    .line 184
    .line 185
    if-eq p2, v3, :cond_d

    .line 186
    .line 187
    invoke-static {p1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget p2, p0, Lh5;->k:I

    .line 192
    .line 193
    iget v0, p0, Lh5;->j:I

    .line 194
    .line 195
    and-int/2addr v0, v2

    .line 196
    if-eqz v0, :cond_c

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_c
    move v7, v9

    .line 200
    :goto_4
    invoke-static {p1, p2, v7}, Lg5;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iput-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_d
    iget p2, p0, Lh5;->j:I

    .line 208
    .line 209
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iput-object p1, p0, Lh5;->l:Landroid/graphics/Typeface;

    .line 214
    .line 215
    :cond_e
    :goto_5
    return-void
.end method
