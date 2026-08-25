package androidx.car.app.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
@e9
/* loaded from: classes.dex */
public final class TemplateWrapper {
    private int mCurrentTaskStep;
    private String mId;
    private boolean mIsRefresh;
    private e40 mTemplate;
    private List<TemplateInfo> mTemplateInfoForScreenStack;

    private TemplateWrapper() {
        this.mTemplateInfoForScreenStack = new ArrayList();
        this.mTemplate = null;
        this.mId = "";
    }

    public static TemplateWrapper copyOf(TemplateWrapper templateWrapper) {
        TemplateWrapper wrap = wrap(templateWrapper.getTemplate(), templateWrapper.getId());
        wrap.setRefresh(templateWrapper.isRefresh());
        wrap.setCurrentTaskStep(templateWrapper.getCurrentTaskStep());
        List<TemplateInfo> templateInfosForScreenStack = templateWrapper.getTemplateInfosForScreenStack();
        if (templateInfosForScreenStack != null) {
            wrap.setTemplateInfosForScreenStack(templateInfosForScreenStack);
        }
        return wrap;
    }

    private static String createRandomId() {
        return UUID.randomUUID().toString();
    }

    public static TemplateWrapper wrap(e40 e40Var, String str) {
        Objects.requireNonNull(e40Var);
        Objects.requireNonNull(str);
        return new TemplateWrapper(e40Var, str);
    }

    public int getCurrentTaskStep() {
        return this.mCurrentTaskStep;
    }

    public String getId() {
        String str = this.mId;
        Objects.requireNonNull(str);
        return str;
    }

    public e40 getTemplate() {
        e40 e40Var = this.mTemplate;
        Objects.requireNonNull(e40Var);
        return e40Var;
    }

    public List<TemplateInfo> getTemplateInfosForScreenStack() {
        List<TemplateInfo> list = this.mTemplateInfoForScreenStack;
        if (list != null) {
            return list;
        }
        return Collections.EMPTY_LIST;
    }

    public boolean isRefresh() {
        return this.mIsRefresh;
    }

    public void setCurrentTaskStep(int i) {
        this.mCurrentTaskStep = i;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public void setRefresh(boolean z) {
        this.mIsRefresh = z;
    }

    public void setTemplate(e40 e40Var) {
        this.mTemplate = e40Var;
    }

    public void setTemplateInfosForScreenStack(List<TemplateInfo> list) {
        this.mTemplateInfoForScreenStack = list;
    }

    public String toString() {
        return "[template: " + this.mTemplate + ", ID: " + this.mId + "]";
    }

    public static TemplateWrapper wrap(e40 e40Var) {
        return wrap(e40Var, createRandomId());
    }

    private TemplateWrapper(e40 e40Var, String str) {
        this.mTemplateInfoForScreenStack = new ArrayList();
        this.mTemplate = e40Var;
        this.mId = str;
    }
}
