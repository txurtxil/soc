.class public final Landroidx/car/app/navigation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm;


# instance fields
.field public final a:Landroidx/car/app/navigation/INavigationManager$Stub;


# direct methods
.method public constructor <init>(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/car/app/navigation/NavigationManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0, p3}, Landroidx/car/app/navigation/NavigationManager$1;-><init>(Landroidx/car/app/navigation/b;Lnk;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/car/app/navigation/b;->a:Landroidx/car/app/navigation/INavigationManager$Stub;

    .line 10
    .line 11
    new-instance p1, Landroidx/car/app/navigation/NavigationManager$2;

    .line 12
    .line 13
    invoke-direct {p1, p0, p3}, Landroidx/car/app/navigation/NavigationManager$2;-><init>(Landroidx/car/app/navigation/b;Landroidx/lifecycle/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
