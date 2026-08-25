.class final Lcom/google/android/apps/auto/sdk/SearchController$a;
.super Lcom/google/android/apps/auto/sdk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/auto/sdk/SearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/apps/auto/sdk/SearchCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/p;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/auto/sdk/SearchController;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/apps/auto/sdk/SearchController$a;-><init>()V

    return-void
.end method

.method private final a(Lcom/google/android/apps/auto/sdk/SearchCallback;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/SearchController$a;->a:Lcom/google/android/apps/auto/sdk/SearchCallback;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/auto/sdk/SearchController$a;Lcom/google/android/apps/auto/sdk/SearchCallback;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/apps/auto/sdk/SearchController$a;->a(Lcom/google/android/apps/auto/sdk/SearchCallback;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController$a;->a:Lcom/google/android/apps/auto/sdk/SearchCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/SearchCallback;->onSearchStart()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/apps/auto/sdk/SearchItem;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController$a;->a:Lcom/google/android/apps/auto/sdk/SearchCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/SearchCallback;->onSearchItemSelected(Lcom/google/android/apps/auto/sdk/SearchItem;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController$a;->a:Lcom/google/android/apps/auto/sdk/SearchCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/SearchCallback;->onSearchTextChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController$a;->a:Lcom/google/android/apps/auto/sdk/SearchCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/auto/sdk/SearchCallback;->onSearchStop()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/SearchController$a;->a:Lcom/google/android/apps/auto/sdk/SearchCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/SearchCallback;->onSearchSubmitted(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
