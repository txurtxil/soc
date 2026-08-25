.class public final Lq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/car/app/model/CarText;

.field public b:Landroidx/car/app/model/CarIcon;

.field public c:Lfs;

.field public final d:Landroidx/car/app/model/CarColor;

.field public final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/car/app/model/CarColor;->DEFAULT:Landroidx/car/app/model/CarColor;

    .line 5
    .line 6
    iput-object v0, p0, Lq0;->d:Landroidx/car/app/model/CarColor;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lq0;->e:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Landroidx/car/app/model/Action;
    .locals 3

    .line 1
    iget v0, p0, Lq0;->e:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/car/app/model/Action;->isStandardActionType(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lq0;->b:Landroidx/car/app/model/CarIcon;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lq0;->a:Landroidx/car/app/model/CarText;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/car/app/model/CarText;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p0, "An action must have either an icon or a title"

    .line 30
    .line 31
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_1
    :goto_0
    const v1, 0x10002

    .line 36
    .line 37
    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const v1, 0x10003

    .line 41
    .line 42
    .line 43
    if-ne v0, v1, :cond_3

    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lq0;->c:Lfs;

    .line 46
    .line 47
    if-nez v1, :cond_a

    .line 48
    .line 49
    iget-object v1, p0, Lq0;->b:Landroidx/car/app/model/CarIcon;

    .line 50
    .line 51
    if-nez v1, :cond_9

    .line 52
    .line 53
    iget-object v1, p0, Lq0;->a:Landroidx/car/app/model/CarText;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Landroidx/car/app/model/CarText;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_9

    .line 66
    .line 67
    :cond_3
    const v1, 0x10004

    .line 68
    .line 69
    .line 70
    if-ne v0, v1, :cond_5

    .line 71
    .line 72
    iget-object v1, p0, Lq0;->c:Lfs;

    .line 73
    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    const-string p0, "An on-click listener can\'t be set on the pan mode action"

    .line 78
    .line 79
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :cond_5
    :goto_1
    const v1, 0x10005

    .line 84
    .line 85
    .line 86
    if-ne v0, v1, :cond_8

    .line 87
    .line 88
    iget-object v0, p0, Lq0;->c:Lfs;

    .line 89
    .line 90
    if-nez v0, :cond_7

    .line 91
    .line 92
    iget-object v0, p0, Lq0;->a:Landroidx/car/app/model/CarText;

    .line 93
    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/car/app/model/CarText;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const-string p0, "A title can\'t be set on the standard compose action"

    .line 108
    .line 109
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :cond_7
    const-string p0, "An on-click listener can\'t be set on the compose action"

    .line 114
    .line 115
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v2

    .line 119
    :cond_8
    :goto_2
    new-instance v0, Landroidx/car/app/model/Action;

    .line 120
    .line 121
    invoke-direct {v0, p0}, Landroidx/car/app/model/Action;-><init>(Lq0;)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_9
    const-string p0, "An icon or title can\'t be set on the standard back or app-icon action"

    .line 126
    .line 127
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object v2

    .line 131
    :cond_a
    const-string p0, "An on-click listener can\'t be set on an action of type "

    .line 132
    .line 133
    invoke-static {v0, p0}, Lt20;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v2
.end method
