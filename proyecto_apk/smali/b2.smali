.class public final synthetic Lb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lau;
.implements Lai;
.implements Lhx;
.implements Lix;
.implements Lmg;
.implements Lgh;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lb2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ld2;

    .line 4
    .line 5
    sget-object v0, Ld2;->c0:Ljava/util/List;

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {p2, v0}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    sget-object v0, Ld2;->c0:Ljava/util/List;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    move v2, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move v2, v1

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v4, p1, Landroidx/preference/Preference;->l:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v3, v4}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    const-string v4, "map_action_force_landscape"

    .line 67
    .line 68
    invoke-static {v3, v4}, Lqj;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    if-ltz v2, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 84
    .line 85
    const-string p1, "Count overflow has happened."

    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_4
    :goto_1
    const/4 p1, 0x4

    .line 92
    if-lt v2, p1, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0}, Lvf;->H()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    sget-object p1, Ll20;->z:[I

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const p2, 0x7f10005f

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p0, p1}, Ll20;->e(Landroid/view/View;Ljava/lang/CharSequence;)Ll20;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ll20;->f()V

    .line 116
    .line 117
    .line 118
    return v1

    .line 119
    :cond_5
    :goto_2
    const/4 p0, 0x1

    .line 120
    return p0
.end method

.method public b()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p0, p0, Lb2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/car/app/k;

    .line 4
    .line 5
    invoke-static {}, Ln40;->a()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ln40;->a()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmq;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v1, "CarApp"

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v4, "Requesting template from Screen "

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Lmq;->g()Landroidx/car/app/navigation/model/NavigationTemplate;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-boolean v4, v0, Lmq;->e:Z

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    iget-object v4, v0, Lmq;->d:Landroidx/car/app/model/TemplateWrapper;

    .line 57
    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    new-instance v5, Landroidx/car/app/model/TemplateInfo;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroidx/car/app/model/TemplateWrapper;->getTemplate()Le40;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v4}, Landroidx/car/app/model/TemplateWrapper;->getId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-direct {v5, v6, v4}, Landroidx/car/app/model/TemplateInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Landroidx/car/app/model/TemplateInfo;->getTemplateId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v3, v4}, Landroidx/car/app/model/TemplateWrapper;->wrap(Le40;Ljava/lang/String;)Landroidx/car/app/model/TemplateWrapper;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {v3}, Landroidx/car/app/model/TemplateWrapper;->wrap(Le40;)Landroidx/car/app/model/TemplateWrapper;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :goto_0
    const/4 v5, 0x0

    .line 91
    iput-boolean v5, v0, Lmq;->e:Z

    .line 92
    .line 93
    iput-object v4, v0, Lmq;->d:Landroidx/car/app/model/TemplateWrapper;

    .line 94
    .line 95
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v5, "Returning "

    .line 104
    .line 105
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, " from screen "

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_4

    .line 140
    .line 141
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lmq;

    .line 146
    .line 147
    iget-object v2, v1, Lmq;->d:Landroidx/car/app/model/TemplateWrapper;

    .line 148
    .line 149
    if-nez v2, :cond_3

    .line 150
    .line 151
    invoke-virtual {v1}, Lmq;->g()Landroidx/car/app/navigation/model/NavigationTemplate;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2}, Landroidx/car/app/model/TemplateWrapper;->wrap(Le40;)Landroidx/car/app/model/TemplateWrapper;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iput-object v2, v1, Lmq;->d:Landroidx/car/app/model/TemplateWrapper;

    .line 160
    .line 161
    :cond_3
    new-instance v2, Landroidx/car/app/model/TemplateInfo;

    .line 162
    .line 163
    iget-object v3, v1, Lmq;->d:Landroidx/car/app/model/TemplateWrapper;

    .line 164
    .line 165
    invoke-virtual {v3}, Landroidx/car/app/model/TemplateWrapper;->getTemplate()Le40;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    iget-object v1, v1, Lmq;->d:Landroidx/car/app/model/TemplateWrapper;

    .line 174
    .line 175
    invoke-virtual {v1}, Landroidx/car/app/model/TemplateWrapper;->getId()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v2, v3, v1}, Landroidx/car/app/model/TemplateInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {v4, v0}, Landroidx/car/app/model/TemplateWrapper;->setTemplateInfosForScreenStack(Ljava/util/List;)V

    .line 187
    .line 188
    .line 189
    return-object v4
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object p0, p0, Lb2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/CharSequence;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne v0, v2, :cond_4

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1, p0, p2, v1}, Li30;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-gez p1, :cond_1

    .line 44
    .line 45
    :cond_0
    :goto_0
    move-object p2, v3

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Lat;

    .line 53
    .line 54
    invoke-direct {p2, p1, p0}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_2
    const-string p0, "List has more than one element."

    .line 60
    .line 61
    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 66
    .line 67
    const-string p1, "List is empty."

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_4
    new-instance v0, Lnj;

    .line 74
    .line 75
    if-gez p2, :cond_5

    .line 76
    .line 77
    move p2, v1

    .line 78
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-direct {v0, p2, v4, v2}, Lnj;-><init>(III)V

    .line 83
    .line 84
    .line 85
    instance-of v2, p1, Ljava/lang/String;

    .line 86
    .line 87
    iget v0, v0, Lnj;->b:I

    .line 88
    .line 89
    if-eqz v2, :cond_a

    .line 90
    .line 91
    if-le p2, v0, :cond_6

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_8

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    move-object v5, v4

    .line 109
    check-cast v5, Ljava/lang/String;

    .line 110
    .line 111
    move-object v6, p1

    .line 112
    check-cast v6, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    invoke-virtual {v5, v1, v6, p2, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_8
    move-object v4, v3

    .line 126
    :goto_2
    check-cast v4, Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v4, :cond_9

    .line 129
    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    new-instance p2, Lat;

    .line 135
    .line 136
    invoke-direct {p2, p0, v4}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_9
    if-eq p2, v0, :cond_0

    .line 141
    .line 142
    add-int/lit8 p2, p2, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_a
    if-le p2, v0, :cond_b

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_b
    :goto_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_d

    .line 157
    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    move-object v5, v4

    .line 163
    check-cast v5, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    invoke-static {v5, p1, p2, v6, v1}, Li30;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_c

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_d
    move-object v4, v3

    .line 177
    :goto_4
    check-cast v4, Ljava/lang/String;

    .line 178
    .line 179
    if-eqz v4, :cond_e

    .line 180
    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    new-instance p2, Lat;

    .line 186
    .line 187
    invoke-direct {p2, p0, v4}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_e
    if-eq p2, v0, :cond_0

    .line 192
    .line 193
    add-int/lit8 p2, p2, 0x1

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :goto_5
    if-eqz p2, :cond_f

    .line 197
    .line 198
    iget-object p0, p2, Lat;->a:Ljava/lang/Object;

    .line 199
    .line 200
    iget-object p1, p2, Lat;->b:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p1, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    new-instance p2, Lat;

    .line 213
    .line 214
    invoke-direct {p2, p0, p1}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    return-object p2

    .line 218
    :cond_f
    return-object v3
.end method

.method public call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lb2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/car/app/j;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/car/app/j;->a:Landroidx/car/app/ICarHost;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string v0, "app"

    .line 11
    .line 12
    invoke-interface {p0, v0}, Landroidx/car/app/ICarHost;->getHost(Ljava/lang/String;)Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroidx/car/app/IAppHost$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/IAppHost;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lb2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lfk;

    .line 4
    .line 5
    const-string v0, "slot"

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ltz v0, :cond_6

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-ge v0, v1, :cond_6

    .line 16
    .line 17
    const-string v1, "package"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lfk;->c0:Ljava/util/List;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "model"

    .line 31
    .line 32
    if-eqz v1, :cond_5

    .line 33
    .line 34
    new-instance v4, Lck;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-lez v5, :cond_1

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v5, 0x0

    .line 45
    :goto_0
    invoke-direct {v4, p1, v5}, Lck;-><init>(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lfk;->b0:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Lfk;->c0:Ljava/util/List;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    new-instance v2, Lorg/json/JSONArray;

    .line 60
    .line 61
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lv9;->C(Ljava/lang/Iterable;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lck;

    .line 83
    .line 84
    new-instance v4, Lorg/json/JSONObject;

    .line 85
    .line 86
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v5, "pkg"

    .line 90
    .line 91
    iget-object v6, v3, Lck;->a:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "on"

    .line 98
    .line 99
    iget-boolean v3, v3, Lck;->b:Z

    .line 100
    .line 101
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string v1, "launch_shortcuts"

    .line 114
    .line 115
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lfk;->Q(I)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v2

    .line 134
    :cond_4
    const-string p0, "prefs"

    .line 135
    .line 136
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v2

    .line 140
    :cond_5
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v2

    .line 144
    :cond_6
    return-void
.end method

.method public e(Landroid/os/IInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lb2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/location/Location;

    .line 4
    .line 5
    check-cast p1, Landroidx/car/app/IAppHost;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroidx/car/app/IAppHost;->sendLocation(Landroid/location/Location;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(Lc9;ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lb2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lb4;

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x19

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    and-int/2addr p2, v3

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object p2, p1, Lc9;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Lhj;

    .line 19
    .line 20
    invoke-interface {p2}, Lhj;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    iget-object p2, p1, Lc9;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p2, Lhj;

    .line 26
    .line 27
    invoke-interface {p2}, Lhj;->b()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Lkd;->a(Ljava/lang/Object;)Landroid/view/inputmethod/InputContentInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-nez p3, :cond_0

    .line 36
    .line 37
    new-instance p3, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    move-object p3, v1

    .line 49
    :goto_0
    const-string v1, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 50
    .line 51
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string p1, "InputConnectionCompat"

    .line 57
    .line 58
    const-string p2, "Can\'t insert content from IME; requestPermission() failed"

    .line 59
    .line 60
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 65
    .line 66
    iget-object p1, p1, Lc9;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lhj;

    .line 69
    .line 70
    invoke-interface {p1}, Lhj;->a()Landroid/content/ClipDescription;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v4, Landroid/content/ClipData$Item;

    .line 75
    .line 76
    invoke-interface {p1}, Lhj;->c()Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, v1, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x1f

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    if-lt v0, v1, :cond_2

    .line 90
    .line 91
    new-instance v0, Lc9;

    .line 92
    .line 93
    invoke-direct {v0, p2, v4}, Lc9;-><init>(Landroid/content/ClipData;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    new-instance v0, Lta;

    .line 98
    .line 99
    invoke-direct {v0}, Lta;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p2, v0, Lta;->b:Landroid/content/ClipData;

    .line 103
    .line 104
    iput v4, v0, Lta;->c:I

    .line 105
    .line 106
    :goto_2
    invoke-interface {p1}, Lhj;->e()Landroid/net/Uri;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {v0, p1}, Lsa;->o(Landroid/net/Uri;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, p3}, Lsa;->setExtras(Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0}, Lsa;->build()Lva;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p0, p1}, Lu70;->f(Landroid/view/View;Lva;)Lva;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    if-nez p0, :cond_3

    .line 125
    .line 126
    return v3

    .line 127
    :cond_3
    return v2
.end method
