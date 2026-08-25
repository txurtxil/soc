.class public final Lhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgg;


# instance fields
.field public final a:I

.field public final synthetic b:Landroidx/fragment/app/a;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhg;->b:Landroidx/fragment/app/a;

    .line 5
    .line 6
    iput p2, p0, Lhg;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lhg;->b:Landroidx/fragment/app/a;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/a;->r:Lvf;

    .line 4
    .line 5
    iget p0, p0, Lhg;->a:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-gez p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lvf;->g()Landroidx/fragment/app/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/a;->K()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, p1, p2, p0, v1}, Landroidx/fragment/app/a;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method
