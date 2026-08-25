.class public final Lo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget p0, p0, Lo6;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    check-cast p2, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    sub-int/2addr p0, p1

    .line 20
    return p0

    .line 21
    :pswitch_0
    check-cast p1, Lph;

    .line 22
    .line 23
    check-cast p2, Lph;

    .line 24
    .line 25
    iget-object p0, p1, Lph;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    move v2, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v0

    .line 33
    :goto_0
    iget-object v3, p2, Lph;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    move v3, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v3, v0

    .line 40
    :goto_1
    if-eq v2, v3, :cond_2

    .line 41
    .line 42
    if-nez p0, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-boolean p0, p1, Lph;->a:Z

    .line 46
    .line 47
    iget-boolean v2, p2, Lph;->a:Z

    .line 48
    .line 49
    if-eq p0, v2, :cond_5

    .line 50
    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    :cond_3
    const/4 v0, -0x1

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    :goto_2
    move v0, v1

    .line 56
    goto :goto_4

    .line 57
    :cond_5
    iget p0, p2, Lph;->b:I

    .line 58
    .line 59
    iget v1, p1, Lph;->b:I

    .line 60
    .line 61
    sub-int/2addr p0, v1

    .line 62
    if-eqz p0, :cond_6

    .line 63
    .line 64
    :goto_3
    move v0, p0

    .line 65
    goto :goto_4

    .line 66
    :cond_6
    iget p0, p1, Lph;->c:I

    .line 67
    .line 68
    iget p1, p2, Lph;->c:I

    .line 69
    .line 70
    sub-int/2addr p0, p1

    .line 71
    if-eqz p0, :cond_7

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_7
    :goto_4
    return v0

    .line 75
    :pswitch_1
    check-cast p1, Ln6;

    .line 76
    .line 77
    iget-object p0, p1, Ln6;->b:Ljava/lang/String;

    .line 78
    .line 79
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    check-cast p2, Ln6;

    .line 89
    .line 90
    iget-object p2, p2, Ln6;->b:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    if-ne p0, p1, :cond_8

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_8
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    :goto_5
    return v0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
