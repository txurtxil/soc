.class public final Lx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luz;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf3;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lx2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lx2;->b:Ljava/lang/Object;

    .line 13
    .line 14
    const-string v0, "androidx.savedstate.Restarter"

    .line 15
    .line 16
    invoke-virtual {p1, v0, p0}, Lf3;->e(Ljava/lang/String;Luz;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Lz2;I)V
    .locals 0

    .line 20
    iput p2, p0, Lx2;->a:I

    iput-object p1, p0, Lx2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget v0, p0, Lx2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lx2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    check-cast p0, Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "classes_to_restore"

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    move-object v1, p0

    .line 32
    check-cast v1, Lz2;

    .line 33
    .line 34
    iget-object v2, v1, Lz2;->t:Lc9;

    .line 35
    .line 36
    :cond_0
    iget-object p0, v2, Lc9;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lwf;

    .line 39
    .line 40
    iget-object p0, p0, Lwf;->m:Lig;

    .line 41
    .line 42
    invoke-static {p0}, Lz2;->n(Landroidx/fragment/app/a;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    iget-object p0, v1, Lz2;->u:Landroidx/lifecycle/a;

    .line 49
    .line 50
    sget-object v1, Llk;->ON_STOP:Llk;

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, v2, Lc9;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Lwf;

    .line 58
    .line 59
    iget-object p0, p0, Lwf;->m:Lig;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/a;->P()Ljg;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    const-string v1, "android:support:fragments"

    .line 68
    .line 69
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-object v0

    .line 73
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .line 77
    .line 78
    check-cast p0, Lz2;

    .line 79
    .line 80
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
