.class final Lcom/google/android/apps/auto/sdk/service/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/auto/sdk/service/a/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/auto/sdk/service/a/c/d<",
        "Lra0;",
        "Lcom/google/android/apps/auto/sdk/service/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/service/a/d;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/service/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/a/e;->a:Lcom/google/android/apps/auto/sdk/service/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/apps/auto/sdk/service/a/c/a;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/apps/auto/sdk/service/a/f;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/a/e;->a:Lcom/google/android/apps/auto/sdk/service/a/d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/apps/auto/sdk/service/a/f;-><init>(Lcom/google/android/apps/auto/sdk/service/a/d;Lra0;)V

    return-object p1

    :cond_0
    invoke-static {}, Lc2;->l()V

    const/4 p0, 0x0

    return-object p0
.end method
