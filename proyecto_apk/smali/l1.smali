.class public final Ll1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Ll1;

.field public static final m:Ll1;

.field public static final n:Ll1;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Lf9;

.field public final i:Ljava/util/HashSet;

.field public final j:Ljava/util/HashSet;

.field public final k:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lk1;

    .line 2
    .line 3
    invoke-direct {v0}, Lk1;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iput v1, v0, Lk1;->d:I

    .line 12
    .line 13
    iput-boolean v1, v0, Lk1;->g:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    iput-boolean v3, v0, Lk1;->i:Z

    .line 17
    .line 18
    new-instance v3, Ll1;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ll1;-><init>(Lk1;)V

    .line 21
    .line 22
    .line 23
    sput-object v3, Ll1;->l:Ll1;

    .line 24
    .line 25
    new-instance v0, Lk1;

    .line 26
    .line 27
    invoke-direct {v0}, Lk1;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    iput v4, v0, Lk1;->d:I

    .line 32
    .line 33
    iput-boolean v1, v0, Lk1;->g:Z

    .line 34
    .line 35
    iput-boolean v1, v0, Lk1;->i:Z

    .line 36
    .line 37
    invoke-virtual {v0}, Lk1;->a()V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lk1;

    .line 41
    .line 42
    invoke-direct {v0}, Lk1;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v5, Lf9;->b:Lf9;

    .line 46
    .line 47
    iput-object v5, v0, Lk1;->k:Lf9;

    .line 48
    .line 49
    iput v4, v0, Lk1;->d:I

    .line 50
    .line 51
    new-instance v5, Ll1;

    .line 52
    .line 53
    invoke-direct {v5, v0}, Ll1;-><init>(Lk1;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lk1;

    .line 57
    .line 58
    invoke-direct {v0, v5}, Lk1;-><init>(Ll1;)V

    .line 59
    .line 60
    .line 61
    sget-object v6, Lf9;->d:Lf9;

    .line 62
    .line 63
    iput-object v6, v0, Lk1;->k:Lf9;

    .line 64
    .line 65
    iput v4, v0, Lk1;->f:I

    .line 66
    .line 67
    iput-boolean v1, v0, Lk1;->i:Z

    .line 68
    .line 69
    invoke-virtual {v0}, Lk1;->a()V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lk1;

    .line 73
    .line 74
    invoke-direct {v0, v5}, Lk1;-><init>(Ll1;)V

    .line 75
    .line 76
    .line 77
    iput-object v6, v0, Lk1;->k:Lf9;

    .line 78
    .line 79
    iput v4, v0, Lk1;->f:I

    .line 80
    .line 81
    iput v1, v0, Lk1;->e:I

    .line 82
    .line 83
    iput-boolean v1, v0, Lk1;->i:Z

    .line 84
    .line 85
    invoke-virtual {v0}, Lk1;->a()V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lk1;

    .line 89
    .line 90
    invoke-direct {v0, v5}, Lk1;-><init>(Ll1;)V

    .line 91
    .line 92
    .line 93
    iput v1, v0, Lk1;->f:I

    .line 94
    .line 95
    sget-object v6, Lf9;->e:Lf9;

    .line 96
    .line 97
    iput-object v6, v0, Lk1;->k:Lf9;

    .line 98
    .line 99
    iput-boolean v1, v0, Lk1;->i:Z

    .line 100
    .line 101
    iput-boolean v1, v0, Lk1;->j:Z

    .line 102
    .line 103
    invoke-virtual {v0}, Lk1;->a()V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lk1;

    .line 107
    .line 108
    invoke-direct {v0, v5}, Lk1;-><init>(Ll1;)V

    .line 109
    .line 110
    .line 111
    const/4 v6, 0x4

    .line 112
    iput v6, v0, Lk1;->d:I

    .line 113
    .line 114
    iput v6, v0, Lk1;->f:I

    .line 115
    .line 116
    iput v1, v0, Lk1;->e:I

    .line 117
    .line 118
    sget-object v7, Lf9;->f:Lf9;

    .line 119
    .line 120
    iput-object v7, v0, Lk1;->k:Lf9;

    .line 121
    .line 122
    iput-boolean v1, v0, Lk1;->i:Z

    .line 123
    .line 124
    iput-boolean v1, v0, Lk1;->j:Z

    .line 125
    .line 126
    new-instance v7, Ll1;

    .line 127
    .line 128
    invoke-direct {v7, v0}, Ll1;-><init>(Lk1;)V

    .line 129
    .line 130
    .line 131
    sput-object v7, Ll1;->m:Ll1;

    .line 132
    .line 133
    new-instance v0, Lk1;

    .line 134
    .line 135
    invoke-direct {v0, v5}, Lk1;-><init>(Ll1;)V

    .line 136
    .line 137
    .line 138
    iput v6, v0, Lk1;->d:I

    .line 139
    .line 140
    iput v1, v0, Lk1;->e:I

    .line 141
    .line 142
    iput-boolean v1, v0, Lk1;->i:Z

    .line 143
    .line 144
    iput-boolean v1, v0, Lk1;->j:Z

    .line 145
    .line 146
    new-instance v5, Ll1;

    .line 147
    .line 148
    invoke-direct {v5, v0}, Ll1;-><init>(Lk1;)V

    .line 149
    .line 150
    .line 151
    sput-object v5, Ll1;->n:Ll1;

    .line 152
    .line 153
    new-instance v0, Lk1;

    .line 154
    .line 155
    invoke-direct {v0}, Lk1;-><init>()V

    .line 156
    .line 157
    .line 158
    iput v4, v0, Lk1;->d:I

    .line 159
    .line 160
    iput v4, v0, Lk1;->f:I

    .line 161
    .line 162
    iput v1, v0, Lk1;->e:I

    .line 163
    .line 164
    iget-object v5, v0, Lk1;->c:Ljava/util/HashSet;

    .line 165
    .line 166
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iput-boolean v1, v0, Lk1;->i:Z

    .line 170
    .line 171
    invoke-virtual {v0}, Lk1;->a()V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lk1;

    .line 175
    .line 176
    invoke-direct {v0}, Lk1;-><init>()V

    .line 177
    .line 178
    .line 179
    iput v1, v0, Lk1;->d:I

    .line 180
    .line 181
    iput v1, v0, Lk1;->f:I

    .line 182
    .line 183
    iget-object v5, v0, Lk1;->c:Ljava/util/HashSet;

    .line 184
    .line 185
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    iput-boolean v1, v0, Lk1;->g:Z

    .line 189
    .line 190
    iput-boolean v1, v0, Lk1;->i:Z

    .line 191
    .line 192
    invoke-virtual {v0}, Lk1;->a()V

    .line 193
    .line 194
    .line 195
    new-instance v0, Lk1;

    .line 196
    .line 197
    invoke-direct {v0}, Lk1;-><init>()V

    .line 198
    .line 199
    .line 200
    iput v4, v0, Lk1;->d:I

    .line 201
    .line 202
    iget-object v4, v0, Lk1;->c:Ljava/util/HashSet;

    .line 203
    .line 204
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    const v2, 0x10005

    .line 208
    .line 209
    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    iput-boolean v1, v0, Lk1;->g:Z

    .line 218
    .line 219
    iput-boolean v1, v0, Lk1;->h:Z

    .line 220
    .line 221
    iput-boolean v1, v0, Lk1;->i:Z

    .line 222
    .line 223
    invoke-virtual {v0}, Lk1;->a()V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lk1;

    .line 227
    .line 228
    invoke-direct {v0, v3}, Lk1;-><init>(Ll1;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lk1;->a:Ljava/util/HashSet;

    .line 232
    .line 233
    const v2, 0x10002

    .line 234
    .line 235
    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Lk1;->a()V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method public constructor <init>(Lk1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lk1;->d:I

    .line 5
    .line 6
    iput v0, p0, Ll1;->a:I

    .line 7
    .line 8
    iget v1, p1, Lk1;->e:I

    .line 9
    .line 10
    iput v1, p0, Ll1;->b:I

    .line 11
    .line 12
    iget v1, p1, Lk1;->f:I

    .line 13
    .line 14
    iput v1, p0, Ll1;->c:I

    .line 15
    .line 16
    iget-object v1, p1, Lk1;->k:Lf9;

    .line 17
    .line 18
    iput-object v1, p0, Ll1;->h:Lf9;

    .line 19
    .line 20
    iget-boolean v1, p1, Lk1;->g:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Ll1;->d:Z

    .line 23
    .line 24
    iget-boolean v1, p1, Lk1;->h:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Ll1;->e:Z

    .line 27
    .line 28
    iget-boolean v1, p1, Lk1;->i:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Ll1;->f:Z

    .line 31
    .line 32
    iget-boolean v1, p1, Lk1;->j:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Ll1;->g:Z

    .line 35
    .line 36
    new-instance v1, Ljava/util/HashSet;

    .line 37
    .line 38
    iget-object v2, p1, Lk1;->a:Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Ll1;->i:Ljava/util/HashSet;

    .line 44
    .line 45
    new-instance v2, Ljava/util/HashSet;

    .line 46
    .line 47
    iget-object v3, p1, Lk1;->c:Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Ll1;->k:Ljava/util/HashSet;

    .line 53
    .line 54
    new-instance v3, Ljava/util/HashSet;

    .line 55
    .line 56
    iget-object p1, p1, Lk1;->b:Ljava/util/HashSet;

    .line 57
    .line 58
    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v3, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v4, 0x0

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_1

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const-string p0, "Both disallowed and allowed action type set cannot be defined."

    .line 85
    .line 86
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v4

    .line 90
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Ll1;->j:Ljava/util/HashSet;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-gt p0, v0, :cond_2

    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    const-string p0, "Required action types exceeded max allowed actions"

    .line 105
    .line 106
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v4

    .line 110
    :cond_3
    const-string p0, "Disallowed action types cannot also be in the required set"

    .line 111
    .line 112
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v4
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ll1;->i:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    move-object v0, v1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget v1, p0, Ll1;->a:I

    .line 23
    .line 24
    iget v2, p0, Ll1;->b:I

    .line 25
    .line 26
    iget v3, p0, Ll1;->c:I

    .line 27
    .line 28
    move v5, v1

    .line 29
    move v6, v2

    .line 30
    move v4, v3

    .line 31
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_13

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Landroidx/car/app/model/Action;

    .line 42
    .line 43
    iget-object v8, p0, Ll1;->j:Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-nez v9, :cond_3

    .line 50
    .line 51
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getType()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-nez v8, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getType()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p1}, Landroidx/car/app/model/Action;->typeToString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, " is disallowed"

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_3
    :goto_2
    iget-object v8, p0, Ll1;->k:Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_5

    .line 104
    .line 105
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getType()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_4

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getType()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-static {p1}, Landroidx/car/app/model/Action;->typeToString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p1, " is not allowed"

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :cond_5
    :goto_3
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getType()I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getTitle()Landroidx/car/app/model/CarText;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    const-string v9, "Action list exceeded max number of "

    .line 167
    .line 168
    if-eqz v8, :cond_7

    .line 169
    .line 170
    invoke-virtual {v8}, Landroidx/car/app/model/CarText;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_7

    .line 175
    .line 176
    add-int/lit8 v4, v4, -0x1

    .line 177
    .line 178
    if-ltz v4, :cond_6

    .line 179
    .line 180
    iget-object v10, p0, Ll1;->h:Lf9;

    .line 181
    .line 182
    invoke-virtual {v10, v8}, Lf9;->b(Landroidx/car/app/model/CarText;)V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    const-string p0, " actions with custom titles"

    .line 187
    .line 188
    invoke-static {v9, v3, p0}, Lc2;->h(Ljava/lang/String;ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_7
    :goto_4
    add-int/lit8 v5, v5, -0x1

    .line 193
    .line 194
    if-ltz v5, :cond_12

    .line 195
    .line 196
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getFlags()I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    and-int/lit8 v8, v8, 0x1

    .line 201
    .line 202
    if-eqz v8, :cond_9

    .line 203
    .line 204
    add-int/lit8 v6, v6, -0x1

    .line 205
    .line 206
    if-ltz v6, :cond_8

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_8
    const-string p0, " primary actions"

    .line 210
    .line 211
    invoke-static {v9, v2, p0}, Lc2;->h(Ljava/lang/String;ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_9
    :goto_5
    iget-boolean v8, p0, Ll1;->d:Z

    .line 216
    .line 217
    if-eqz v8, :cond_b

    .line 218
    .line 219
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getIcon()Landroidx/car/app/model/CarIcon;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    if-nez v8, :cond_b

    .line 224
    .line 225
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->isStandard()Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_a

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_a
    const-string p0, "Non-standard actions without an icon are disallowed"

    .line 233
    .line 234
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_b
    :goto_6
    iget-boolean v8, p0, Ll1;->e:Z

    .line 239
    .line 240
    if-eqz v8, :cond_e

    .line 241
    .line 242
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getBackgroundColor()Landroidx/car/app/model/CarColor;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    if-eqz v9, :cond_c

    .line 247
    .line 248
    sget-object v9, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    .line 249
    .line 250
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getBackgroundColor()Landroidx/car/app/model/CarColor;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    invoke-virtual {v9, v10}, Landroidx/car/app/model/CarColor;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-eqz v9, :cond_e

    .line 259
    .line 260
    :cond_c
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->isStandard()Z

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    if-eqz v9, :cond_d

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_d
    const-string p0, "Non-standard actions without a background color are disallowed"

    .line 268
    .line 269
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_e
    :goto_7
    if-nez v8, :cond_10

    .line 274
    .line 275
    sget-object v8, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    .line 276
    .line 277
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getBackgroundColor()Landroidx/car/app/model/CarColor;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    invoke-virtual {v8, v9}, Landroidx/car/app/model/CarColor;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-nez v8, :cond_10

    .line 286
    .line 287
    iget-boolean v8, p0, Ll1;->g:Z

    .line 288
    .line 289
    if-eqz v8, :cond_10

    .line 290
    .line 291
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getFlags()I

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    and-int/lit8 v8, v8, 0x1

    .line 296
    .line 297
    if-eqz v8, :cond_f

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_f
    const-string p0, "Background color can only be set for primary actions"

    .line 301
    .line 302
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_10
    :goto_8
    iget-boolean v8, p0, Ll1;->f:Z

    .line 307
    .line 308
    if-nez v8, :cond_1

    .line 309
    .line 310
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->getOnClickDelegate()Lfs;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    if-eqz v8, :cond_1

    .line 315
    .line 316
    invoke-virtual {v7}, Landroidx/car/app/model/Action;->isStandard()Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    if-eqz v7, :cond_11

    .line 321
    .line 322
    goto/16 :goto_1

    .line 323
    .line 324
    :cond_11
    const-string p0, "Setting a click listener for a custom action is disallowed"

    .line 325
    .line 326
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_12
    const-string p0, " actions"

    .line 331
    .line 332
    invoke-static {v9, v1, p0}, Lc2;->h(Ljava/lang/String;ILjava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_13
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result p0

    .line 340
    if-nez p0, :cond_15

    .line 341
    .line 342
    new-instance p0, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_14

    .line 356
    .line 357
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    invoke-static {v0}, Landroidx/car/app/model/Action;->typeToString(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v0, ","

    .line 375
    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    goto :goto_9

    .line 380
    :cond_14
    const-string p1, "Missing required action types: "

    .line 381
    .line 382
    invoke-static {p0, p1}, Lc2;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    :cond_15
    return-void
.end method
