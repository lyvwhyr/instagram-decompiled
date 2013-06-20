.class Lcom/instagram/android/creation/widget/FilterPicker$1;
.super Ljava/lang/Object;
.source "FilterPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/widget/FilterPicker;

.field final synthetic val$newScrollPosition:I


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/widget/FilterPicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/instagram/android/creation/widget/FilterPicker$1;->this$0:Lcom/instagram/android/creation/widget/FilterPicker;

    iput p2, p0, Lcom/instagram/android/creation/widget/FilterPicker$1;->val$newScrollPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/creation/widget/FilterPicker$1;->this$0:Lcom/instagram/android/creation/widget/FilterPicker;

    iget v1, p0, Lcom/instagram/android/creation/widget/FilterPicker$1;->val$newScrollPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/creation/widget/FilterPicker;->scrollTo(II)V

    .line 61
    return-void
.end method
