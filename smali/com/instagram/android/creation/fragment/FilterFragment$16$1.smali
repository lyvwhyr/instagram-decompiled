.class Lcom/instagram/android/creation/fragment/FilterFragment$16$1;
.super Ljava/lang/Object;
.source "FilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/creation/fragment/FilterFragment$16;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/FilterFragment$16;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/FilterFragment$16$1;->this$1:Lcom/instagram/android/creation/fragment/FilterFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 501
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->tiltShiftFadeOutMaskHighlight()V

    .line 502
    return-void
.end method
