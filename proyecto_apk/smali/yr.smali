.class public final Lyr;
.super Lbk;
.source "SourceFile"

# interfaces
.implements Lrg;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lyr;->a:I

    iput-object p2, p0, Lyr;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lyr;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lf60;->a:Lf60;

    .line 5
    .line 6
    iget-object p0, p0, Lyr;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Landroidx/activity/a;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lbx;->a:Lcx;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v2, Lq9;

    .line 24
    .line 25
    new-instance v2, La80;

    .line 26
    .line 27
    const-class v3, Lrz;

    .line 28
    .line 29
    invoke-direct {v2, v3}, La80;-><init>(Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    new-array v4, v2, [La80;

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, [La80;

    .line 43
    .line 44
    array-length v4, v0

    .line 45
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, [La80;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/activity/a;->e()Lb80;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-interface {p0}, Lxh;->c()Lib;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v4, v4, Lb80;->a:Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    const-string v5, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lz70;

    .line 74
    .line 75
    invoke-virtual {v3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_0

    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_0
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 86
    .line 87
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lib;->a:Ljava/util/AbstractMap;

    .line 91
    .line 92
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-interface {v6, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    sget-object p0, Lhd;->d:Lhd;

    .line 98
    .line 99
    invoke-interface {v6, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :try_start_0
    array-length p0, v0

    .line 103
    :goto_0
    if-ge v2, p0, :cond_2

    .line 104
    .line 105
    aget-object v6, v0, v2

    .line 106
    .line 107
    iget-object v6, v6, La80;->a:Ljava/lang/Class;

    .line 108
    .line 109
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_1

    .line 114
    .line 115
    new-instance v1, Lrz;

    .line 116
    .line 117
    invoke-direct {v1}, Lrz;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    if-eqz v1, :cond_4

    .line 124
    .line 125
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lz70;

    .line 130
    .line 131
    if-eqz p0, :cond_3

    .line 132
    .line 133
    invoke-virtual {p0}, Lz70;->a()V

    .line 134
    .line 135
    .line 136
    :cond_3
    move-object v6, v1

    .line 137
    :goto_1
    check-cast v6, Lrz;

    .line 138
    .line 139
    return-object v6

    .line 140
    :cond_4
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "No initializer set for given class "

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    :catch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 157
    .line 158
    const-string v0, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    .line 159
    .line 160
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :pswitch_0
    check-cast p0, Landroidx/activity/b;

    .line 165
    .line 166
    invoke-virtual {p0}, Landroidx/activity/b;->b()V

    .line 167
    .line 168
    .line 169
    return-object v2

    .line 170
    :pswitch_1
    check-cast p0, Landroidx/activity/b;

    .line 171
    .line 172
    iget-object v0, p0, Landroidx/activity/b;->b:Ls6;

    .line 173
    .line 174
    iget v3, v0, Ls6;->c:I

    .line 175
    .line 176
    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :cond_5
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_6

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    move-object v4, v3

    .line 191
    check-cast v4, Lbg;

    .line 192
    .line 193
    iget-boolean v4, v4, Lbg;->a:Z

    .line 194
    .line 195
    if-eqz v4, :cond_5

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    move-object v3, v1

    .line 199
    :goto_2
    check-cast v3, Lbg;

    .line 200
    .line 201
    iput-object v1, p0, Landroidx/activity/b;->c:Lbg;

    .line 202
    .line 203
    return-object v2

    .line 204
    :pswitch_2
    check-cast p0, Landroidx/activity/b;

    .line 205
    .line 206
    invoke-virtual {p0}, Landroidx/activity/b;->b()V

    .line 207
    .line 208
    .line 209
    return-object v2

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
