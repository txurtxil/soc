.class public final Lxr;
.super Lbk;
.source "SourceFile"

# interfaces
.implements Lch;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/activity/b;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/b;I)V
    .locals 0

    .line 1
    iput p2, p0, Lxr;->a:I

    iput-object p1, p0, Lxr;->b:Landroidx/activity/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lxr;->a:I

    .line 2
    .line 3
    sget-object v1, Lf60;->a:Lf60;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lxr;->b:Landroidx/activity/b;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Ld7;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/activity/b;->b:Ls6;

    .line 17
    .line 18
    iget p1, p0, Ls6;->c:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    move-object v0, p1

    .line 35
    check-cast v0, Lbg;

    .line 36
    .line 37
    iget-boolean v0, v0, Lbg;->a:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    move-object v2, p1

    .line 42
    :cond_1
    check-cast v2, Lbg;

    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_0
    check-cast p1, Ld7;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/activity/b;->b:Ls6;

    .line 51
    .line 52
    iget v0, p1, Ls6;->c:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v3, v0

    .line 69
    check-cast v3, Lbg;

    .line 70
    .line 71
    iget-boolean v3, v3, Lbg;->a:Z

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    move-object v2, v0

    .line 76
    :cond_3
    check-cast v2, Lbg;

    .line 77
    .line 78
    iput-object v2, p0, Landroidx/activity/b;->c:Lbg;

    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
