.class public final Lh8;
.super Ljava/lang/Object;


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    filled-new-array {p1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lh8;->a:[I

    .line 9
    .line 10
    return-void
.end method

.method public static a(Landroid/widget/TextView;)Z
    .locals 1

    .line 1
    const-string v0, "action_bar_subtitle"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lh8;->c(Landroid/view/View;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-static {p0}, Lh8;->f(Landroid/widget/TextView;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public static b(Landroid/widget/TextView;)Z
    .locals 1

    .line 1
    const-string v0, "action_bar_title"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lh8;->c(Landroid/view/View;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-static {p0}, Lh8;->f(Landroid/widget/TextView;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public static c(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public static f(Landroid/widget/TextView;)Z
    .locals 1

    .line 1
    sget-object v0, Ls8;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "android.support.v7.widget.Toolbar"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    sput-object v0, Ls8;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    sput-object v0, Ls8;->c:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_0
    :goto_0
    sget-object v0, Ls8;->c:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    instance-of p0, p0, Landroid/support/v7/widget/Toolbar;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    return p0
.end method


# virtual methods
.method public final d(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7f0d0004

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lh8;->e(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final e(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v2, Ld60;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-object v1, Ld60;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lh8;->a:[I

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, -0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-nez p3, :cond_2

    .line 31
    .line 32
    :catch_0
    move-object v5, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    aget v6, v1, v4

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-interface {p3, v2, v5, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-lez v6, :cond_3

    .line 49
    .line 50
    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {p3, v2, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_7

    .line 64
    .line 65
    if-nez p3, :cond_5

    .line 66
    .line 67
    :cond_4
    :goto_1
    move-object v5, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_5
    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eqz v5, :cond_4

    .line 74
    .line 75
    :try_start_1
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-nez v7, :cond_6

    .line 84
    .line 85
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    .line 87
    .line 88
    move-object v5, v6

    .line 89
    goto :goto_2

    .line 90
    :catch_1
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_7
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_b

    .line 104
    .line 105
    if-nez p3, :cond_9

    .line 106
    .line 107
    :cond_8
    :goto_3
    move-object v5, v2

    .line 108
    goto :goto_5

    .line 109
    :cond_9
    sget-object v5, Ls8;->a:[I

    .line 110
    .line 111
    invoke-virtual {p2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    if-eqz p3, :cond_a

    .line 116
    .line 117
    :try_start_2
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 118
    .line 119
    .line 120
    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :catch_2
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_a
    move v5, v3

    .line 135
    :goto_4
    invoke-virtual {p2, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    if-eqz p3, :cond_8

    .line 140
    .line 141
    :try_start_3
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 145
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    .line 147
    .line 148
    move-object v5, v1

    .line 149
    goto :goto_5

    .line 150
    :catchall_2
    move-exception p0

    .line 151
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :cond_b
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    const/4 v1, 0x1

    .line 160
    if-eqz p3, :cond_12

    .line 161
    .line 162
    const/4 p3, 0x2

    .line 163
    new-array p3, p3, [I

    .line 164
    .line 165
    aput v3, p3, v4

    .line 166
    .line 167
    aput v3, p3, v1

    .line 168
    .line 169
    invoke-static {v0}, Lh8;->b(Landroid/widget/TextView;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    const v6, 0x10102ce

    .line 174
    .line 175
    .line 176
    if-eqz v5, :cond_c

    .line 177
    .line 178
    aput v6, p3, v4

    .line 179
    .line 180
    const v5, 0x10102f8

    .line 181
    .line 182
    .line 183
    aput v5, p3, v1

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_c
    invoke-static {v0}, Lh8;->a(Landroid/widget/TextView;)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_d

    .line 191
    .line 192
    aput v6, p3, v4

    .line 193
    .line 194
    const v5, 0x10102f9

    .line 195
    .line 196
    .line 197
    aput v5, p3, v1

    .line 198
    .line 199
    :cond_d
    :goto_6
    aget v5, p3, v4

    .line 200
    .line 201
    if-ne v5, v3, :cond_f

    .line 202
    .line 203
    invoke-static {}, Le8;->b()Le8;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    iget-object v5, v5, Le8;->a:Ljava/util/Map;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_e

    .line 218
    .line 219
    invoke-static {}, Le8;->b()Le8;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    iget-object v5, v5, Le8;->a:Ljava/util/Map;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    check-cast v5, Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    goto :goto_7

    .line 240
    :cond_e
    const v5, 0x1010034

    .line 241
    .line 242
    .line 243
    :goto_7
    aput v5, p3, v4

    .line 244
    .line 245
    :cond_f
    aget v5, p3, v1

    .line 246
    .line 247
    iget-object p0, p0, Lh8;->a:[I

    .line 248
    .line 249
    if-eq v5, v3, :cond_11

    .line 250
    .line 251
    aget p3, p3, v4

    .line 252
    .line 253
    if-eq p3, v3, :cond_10

    .line 254
    .line 255
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    new-instance v7, Landroid/util/TypedValue;

    .line 260
    .line 261
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6, p3, v7, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 265
    .line 266
    .line 267
    iget p3, v7, Landroid/util/TypedValue;->resourceId:I

    .line 268
    .line 269
    filled-new-array {v5}, [I

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v6, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 274
    .line 275
    .line 276
    move-result-object p3

    .line 277
    :try_start_4
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 278
    .line 279
    .line 280
    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 281
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    .line 283
    .line 284
    if-eq v5, v3, :cond_10

    .line 285
    .line 286
    invoke-virtual {p2, v5, p0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    if-eqz p0, :cond_10

    .line 291
    .line 292
    :try_start_5
    invoke-virtual {p0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 296
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    .line 298
    .line 299
    :goto_8
    move-object v5, p3

    .line 300
    goto :goto_a

    .line 301
    :catchall_3
    move-exception p1

    .line 302
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    .line 304
    .line 305
    throw p1

    .line 306
    :catch_3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    .line 308
    .line 309
    :cond_10
    :goto_9
    move-object v5, v2

    .line 310
    goto :goto_a

    .line 311
    :catchall_4
    move-exception p0

    .line 312
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 313
    .line 314
    .line 315
    throw p0

    .line 316
    :catch_4
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 317
    .line 318
    .line 319
    goto :goto_9

    .line 320
    :cond_11
    aget p3, p3, v4

    .line 321
    .line 322
    if-eq p3, v3, :cond_10

    .line 323
    .line 324
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    new-instance v5, Landroid/util/TypedValue;

    .line 329
    .line 330
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, p3, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 334
    .line 335
    .line 336
    iget p3, v5, Landroid/util/TypedValue;->resourceId:I

    .line 337
    .line 338
    invoke-virtual {v3, p3, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    :try_start_6
    invoke-virtual {p0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 346
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :catchall_5
    move-exception p1

    .line 351
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 352
    .line 353
    .line 354
    throw p1

    .line 355
    :catch_5
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_12
    :goto_a
    const-string p0, "action_bar_title"

    .line 360
    .line 361
    invoke-static {p1, p0}, Lh8;->c(Landroid/view/View;Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-nez p0, :cond_14

    .line 366
    .line 367
    const-string p0, "action_bar_subtitle"

    .line 368
    .line 369
    invoke-static {p1, p0}, Lh8;->c(Landroid/view/View;Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result p0

    .line 373
    if-eqz p0, :cond_13

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_13
    move v1, v4

    .line 377
    :cond_14
    :goto_b
    invoke-static {}, Le8;->b()Le8;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    if-eqz p2, :cond_18

    .line 382
    .line 383
    if-nez p0, :cond_15

    .line 384
    .line 385
    goto/16 :goto_10

    .line 386
    .line 387
    :cond_15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    if-nez p0, :cond_18

    .line 392
    .line 393
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    const-string p1, "Can\'t create asset from "

    .line 398
    .line 399
    sget-object p2, Ld60;->a:Ljava/util/HashMap;

    .line 400
    .line 401
    monitor-enter p2

    .line 402
    :try_start_7
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result p3

    .line 406
    if-nez p3, :cond_16

    .line 407
    .line 408
    invoke-static {p0, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    invoke-virtual {p2, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 413
    .line 414
    .line 415
    :try_start_8
    monitor-exit p2

    .line 416
    move-object v2, p0

    .line 417
    goto :goto_e

    .line 418
    :catchall_6
    move-exception p0

    .line 419
    goto :goto_f

    .line 420
    :catch_6
    move-exception p0

    .line 421
    goto :goto_d

    .line 422
    :cond_16
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    move-object v2, p0

    .line 427
    check-cast v2, Landroid/graphics/Typeface;

    .line 428
    .line 429
    :goto_c
    monitor-exit p2

    .line 430
    goto :goto_e

    .line 431
    :goto_d
    const-string p3, "Calligraphy"

    .line 432
    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string p1, ". Make sure you have passed in the correct path and file name."

    .line 442
    .line 443
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-static {p3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    .line 452
    .line 453
    sget-object p0, Ld60;->a:Ljava/util/HashMap;

    .line 454
    .line 455
    invoke-virtual {p0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 456
    .line 457
    .line 458
    goto :goto_c

    .line 459
    :goto_e
    if-nez v2, :cond_17

    .line 460
    .line 461
    goto :goto_10

    .line 462
    :cond_17
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    .line 463
    .line 464
    .line 465
    move-result p0

    .line 466
    or-int/lit16 p0, p0, 0x81

    .line 467
    .line 468
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 472
    .line 473
    .line 474
    if-eqz v1, :cond_18

    .line 475
    .line 476
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    invoke-static {p0, v2}, Ls8;->h(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Ljava/lang/CharSequence;

    .line 481
    .line 482
    .line 483
    move-result-object p0

    .line 484
    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 485
    .line 486
    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 487
    .line 488
    .line 489
    new-instance p0, Ln8;

    .line 490
    .line 491
    invoke-direct {p0, v4, v2}, Ln8;-><init>(ILjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 495
    .line 496
    .line 497
    goto :goto_10

    .line 498
    :goto_f
    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 499
    throw p0

    .line 500
    :cond_18
    :goto_10
    sget-object p0, Ls8;->c:Ljava/lang/Boolean;

    .line 501
    .line 502
    if-nez p0, :cond_19

    .line 503
    .line 504
    :try_start_a
    const-string p0, "android.support.v7.widget.Toolbar"

    .line 505
    .line 506
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 510
    .line 511
    sput-object p0, Ls8;->c:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_7

    .line 512
    .line 513
    goto :goto_11

    .line 514
    :catch_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 515
    .line 516
    sput-object p0, Ls8;->c:Ljava/lang/Boolean;

    .line 517
    .line 518
    :cond_19
    :goto_11
    sget-object p0, Ls8;->c:Ljava/lang/Boolean;

    .line 519
    .line 520
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 521
    .line 522
    .line 523
    invoke-static {}, Le8;->b()Le8;

    .line 524
    .line 525
    .line 526
    move-result-object p0

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    return-void
.end method
