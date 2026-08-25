.class public final Lyh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Landroidx/car/app/model/Action;

.field public c:Landroidx/car/app/model/CarText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lyh;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Landroidx/car/app/model/Header;
    .locals 1

    .line 1
    iget-object v0, p0, Lyh;->c:Landroidx/car/app/model/CarText;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/car/app/model/CarText;->isNullOrEmpty(Landroidx/car/app/model/CarText;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lyh;->b:Landroidx/car/app/model/Action;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "Either the title or start header action must be set"

    .line 15
    .line 16
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    new-instance v0, Landroidx/car/app/model/Header;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroidx/car/app/model/Header;-><init>(Lyh;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final b(Landroidx/car/app/model/Action;)V
    .locals 2

    .line 1
    sget-object v0, Ll1;->l:Ll1;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ll1;->a(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lyh;->b:Landroidx/car/app/model/Action;

    .line 14
    .line 15
    return-void
.end method
