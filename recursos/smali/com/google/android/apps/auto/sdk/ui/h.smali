.class final Lcom/google/android/apps/auto/sdk/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/ui/PagedListView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/h;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/h;->a:Lcom/google/android/apps/auto/sdk/ui/PagedListView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/auto/sdk/ui/PagedListView;->updatePaginationButtons(Z)V

    return-void
.end method
