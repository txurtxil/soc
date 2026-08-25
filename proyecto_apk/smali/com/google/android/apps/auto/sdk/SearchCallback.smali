.class public abstract Lcom/google/android/apps/auto/sdk/SearchCallback;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSearchItemSelected(Lcom/google/android/apps/auto/sdk/SearchItem;)V
.end method

.method public onSearchStart()V
    .locals 0

    return-void
.end method

.method public onSearchStop()V
    .locals 0

    return-void
.end method

.method public abstract onSearchSubmitted(Ljava/lang/String;)Z
.end method

.method public abstract onSearchTextChanged(Ljava/lang/String;)V
.end method
