.class Lcom/instagram/android/maps/ui/IgMapsView$1$1;
.super Ljava/lang/Object;
.source "IgMapsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/ui/IgMapsView$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/ui/IgMapsView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/instagram/android/maps/ui/IgMapsView$1$1;->this$1:Lcom/instagram/android/maps/ui/IgMapsView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgMapsView$1$1;->this$1:Lcom/instagram/android/maps/ui/IgMapsView$1;

    iget-object v0, v0, Lcom/instagram/android/maps/ui/IgMapsView$1;->this$0:Lcom/instagram/android/maps/ui/IgMapsView;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgMapsView;->invalidate()V

    .line 166
    return-void
.end method
