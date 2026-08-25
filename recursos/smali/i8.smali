.class public final Li8;
.super Lj8;


# instance fields
.field public final c:Ll8;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Ll8;Lh8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lj8;-><init>(Landroid/view/LayoutInflater$Factory2;Lh8;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Li8;->c:Ll8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object v0, p0, Lj8;->b:Landroid/view/LayoutInflater$Factory2;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Le8;->b()Le8;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x2e

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-le v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Li8;->c:Ll8;

    .line 26
    .line 27
    iget-object v1, v0, Ll8;->c:Ljava/lang/reflect/Field;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const-class v1, Landroid/view/LayoutInflater;

    .line 33
    .line 34
    const-string v3, "mConstructorArgs"

    .line 35
    .line 36
    sget v4, Lgt;->k:I

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-object v1, v2

    .line 48
    :goto_0
    iput-object v1, v0, Ll8;->c:Ljava/lang/reflect/Field;

    .line 49
    .line 50
    :cond_0
    iget-object v1, v0, Ll8;->c:Ljava/lang/reflect/Field;

    .line 51
    .line 52
    sget v3, Lgt;->k:I

    .line 53
    .line 54
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-object v1, v2

    .line 60
    :goto_1
    check-cast v1, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    aget-object v4, v1, v3

    .line 64
    .line 65
    aput-object p3, v1, v3

    .line 66
    .line 67
    iget-object v5, v0, Ll8;->c:Ljava/lang/reflect/Field;

    .line 68
    .line 69
    :try_start_2
    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    .line 71
    .line 72
    :catch_2
    :try_start_3
    invoke-virtual {v0, p2, v2, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    aput-object v4, v1, v3

    .line 77
    .line 78
    :goto_2
    iget-object p2, v0, Ll8;->c:Ljava/lang/reflect/Field;

    .line 79
    .line 80
    :try_start_4
    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    aput-object v4, v1, v3

    .line 86
    .line 87
    iget-object p1, v0, Ll8;->c:Ljava/lang/reflect/Field;

    .line 88
    .line 89
    :try_start_5
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3

    .line 90
    .line 91
    .line 92
    :catch_3
    throw p0

    .line 93
    :catch_4
    aput-object v4, v1, v3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catch_5
    :cond_1
    :goto_3
    iget-object p0, p0, Lj8;->a:Lh8;

    .line 97
    .line 98
    invoke-virtual {p0, p1, p3, p4}, Lh8;->d(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    .line 100
    .line 101
    return-object p1
.end method
