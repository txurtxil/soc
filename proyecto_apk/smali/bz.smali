.class public final synthetic Lbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch;


# instance fields
.field public final synthetic a:Ldz;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;


# direct methods
.method public synthetic constructor <init>(Ldz;Ljava/util/List;ZLidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz;->a:Ldz;

    iput-object p2, p0, Lbz;->b:Ljava/util/List;

    iput-boolean p3, p0, Lbz;->c:Z

    iput-object p4, p0, Lbz;->d:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lbz;->a:Ldz;

    .line 8
    .line 9
    invoke-virtual {v0}, Lvf;->o()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lbz;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    sub-int/2addr v2, v3

    .line 25
    if-gtz v2, :cond_1

    .line 26
    .line 27
    sget-object v1, Lje;->a:Lje;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    if-ne v2, v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v2, v3

    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lqj;->o(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 53
    .line 54
    const-string p1, "List is empty."

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    instance-of v2, v1, Ljava/util/RandomAccess;

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    :goto_0
    if-ge v3, v2, :cond_5

    .line 74
    .line 75
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object v1, v4

    .line 104
    :goto_2
    if-nez p1, :cond_7

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iget-boolean v2, p0, Lbz;->c:Z

    .line 111
    .line 112
    if-nez p1, :cond_6

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Ldz;->S(Ljava/util/List;Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    if-nez v2, :cond_7

    .line 119
    .line 120
    iget-object p0, p0, Lbz;->d:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 121
    .line 122
    invoke-virtual {v0, p0}, Ldz;->R(Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const p1, 0x7f1000f3

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1, p0}, Lvf;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-object p1, v0, Lvf;->F:Landroid/view/View;

    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    invoke-static {p1, p0}, Ll20;->e(Landroid/view/View;Ljava/lang/CharSequence;)Ll20;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Ll20;->f()V

    .line 149
    .line 150
    .line 151
    :cond_7
    invoke-virtual {v0}, Ldz;->T()V

    .line 152
    .line 153
    .line 154
    :goto_3
    sget-object p0, Lf60;->a:Lf60;

    .line 155
    .line 156
    return-object p0
.end method
