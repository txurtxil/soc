.class final Lcom/google/android/apps/auto/sdk/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$e$a;


# instance fields
.field private synthetic a:Lcom/google/android/apps/auto/sdk/ui/a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/ui/b;->a:Lcom/google/android/apps/auto/sdk/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/ui/b;->a:Lcom/google/android/apps/auto/sdk/ui/a;

    invoke-static {p0}, Lcom/google/android/apps/auto/sdk/ui/a;->a(Lcom/google/android/apps/auto/sdk/ui/a;)Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/ui/CarLayoutManager;->offsetRows()V

    return-void
.end method
