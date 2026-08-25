.class final Lcom/google/android/apps/auto/sdk/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/car/input/CarEditable;


# instance fields
.field private final a:Lcom/google/android/apps/auto/sdk/CarUiController;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/CarUiController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/w;->a:Lcom/google/android/apps/auto/sdk/CarUiController;

    return-void
.end method


# virtual methods
.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/w;->a:Lcom/google/android/apps/auto/sdk/CarUiController;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/auto/sdk/CarUiController;->a(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public final setCarEditableListener(Lcom/google/android/gms/car/input/CarEditableListener;)V
    .locals 0

    return-void
.end method

.method public final setInputEnabled(Z)V
    .locals 0

    return-void
.end method
