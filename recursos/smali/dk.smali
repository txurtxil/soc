.class public final synthetic Ldk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch;


# instance fields
.field public final synthetic a:Lfk;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ILfk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldk;->a:Lfk;

    iput p1, p0, Ldk;->b:I

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
    iget-object v0, p0, Ldk;->a:Lfk;

    .line 8
    .line 9
    iget-object v1, v0, Lfk;->c0:Ljava/util/List;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "model"

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    iget p0, p0, Ldk;->b:I

    .line 17
    .line 18
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lck;

    .line 23
    .line 24
    iget-object v4, v4, Lck;->a:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v5, Lck;

    .line 27
    .line 28
    invoke-direct {v5, v4, p1}, Lck;-><init>(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, p0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p0, v0, Lfk;->b0:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    iget-object p1, v0, Lfk;->c0:Ljava/util/List;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    new-instance v0, Lorg/json/JSONArray;

    .line 43
    .line 44
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lv9;->C(Ljava/lang/Iterable;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lck;

    .line 66
    .line 67
    new-instance v2, Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "pkg"

    .line 73
    .line 74
    iget-object v4, v1, Lck;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "on"

    .line 81
    .line 82
    iget-boolean v1, v1, Lck;->b:Z

    .line 83
    .line 84
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string p1, "launch_shortcuts"

    .line 97
    .line 98
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    .line 108
    .line 109
    sget-object p0, Lf60;->a:Lf60;

    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_1
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v2

    .line 116
    :cond_2
    const-string p0, "prefs"

    .line 117
    .line 118
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v2

    .line 122
    :cond_3
    invoke-static {v3}, Lqj;->v(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v2
.end method
