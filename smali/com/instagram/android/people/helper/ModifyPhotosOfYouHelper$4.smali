.class Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$4;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$4;->this$0:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    iput-object p2, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 166
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper$4;->val$dialog:Landroid/app/Dialog;

    sget v1, Lcom/facebook/g;->more_options_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    return-void
.end method
