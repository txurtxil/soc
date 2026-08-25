.class Landroidx/car/app/CarContext$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac;


# instance fields
.field public final synthetic a:Landroidx/car/app/j;


# direct methods
.method public constructor <init>(Landroidx/car/app/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/car/app/CarContext$2;->a:Landroidx/car/app/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Lsk;)V
    .locals 2

    .line 1
    invoke-static {}, Ln40;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/car/app/CarContext$2;->a:Landroidx/car/app/j;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Landroidx/car/app/j;->a:Landroidx/car/app/ICarHost;

    .line 8
    .line 9
    iput-object v1, v0, Landroidx/car/app/j;->b:Landroidx/car/app/IAppHost;

    .line 10
    .line 11
    iput-object v1, v0, Landroidx/car/app/j;->c:Landroidx/car/app/navigation/INavigationHost;

    .line 12
    .line 13
    invoke-interface {p1}, Lsk;->f()Landroidx/lifecycle/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Landroidx/lifecycle/a;->b(Lrk;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
