.class public final Ly2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz2;


# direct methods
.method public synthetic constructor <init>(Lz2;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly2;->a:I

    iput-object p1, p0, Ly2;->b:Lz2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Ly2;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ly2;->b:Lz2;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lz2;->t:Lc9;

    .line 9
    .line 10
    iget-object v1, v0, Lc9;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lwf;

    .line 13
    .line 14
    iget-object v2, v1, Lwf;->m:Lig;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v1, v1, v3}, Landroidx/fragment/app/a;->b(Lwf;Ls8;Lvf;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroidx/activity/a;->e:Lqg;

    .line 21
    .line 22
    iget-object p0, p0, Lqg;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lf3;

    .line 25
    .line 26
    const-string v1, "android:support:fragments"

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lf3;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lwf;

    .line 41
    .line 42
    iget-object v0, v0, Lwf;->m:Lig;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->O(Landroid/os/Parcelable;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lz2;->k()Lj3;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lj3;->a()V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Landroidx/activity/a;->e:Lqg;

    .line 56
    .line 57
    iget-object p0, p0, Lqg;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Lf3;

    .line 60
    .line 61
    const-string v1, "androidx:appcompat"

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lf3;->c(Ljava/lang/String;)Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lj3;->d()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
