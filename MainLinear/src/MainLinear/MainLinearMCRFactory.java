/*
 * MATLAB Compiler: 4.11 (R2009b)
 * Date: Sat May 28 21:26:03 2011
 * Arguments: "-B" "macro_default" "-W" "java:MainLinear,MainLinear" "-d" 
 * "/Users/mahmutbulut/Documents/MATLAB/MainLinear/MainLinear/src" "-T" "link:lib" "-v" 
 * "class{MainLinear:/Users/mahmutbulut/Documents/MATLAB/MainLinear/main_linear.m}" "-a" 
 * "/Users/mahmutbulut/Documents/MATLAB/MainLinear/adj.m" "-a" 
 * "/Users/mahmutbulut/Documents/MATLAB/MainLinear/diagon.m" "-a" 
 * "/Users/mahmutbulut/Documents/MATLAB/MainLinear/issquare.m" "-a" 
 * "/Users/mahmutbulut/Documents/MATLAB/MainLinear/nullity.m" "-a" 
 * "/Users/mahmutbulut/Documents/MATLAB/MainLinear/rowef.m" 
 */

package MainLinear;

import com.mathworks.toolbox.javabuilder.*;
import com.mathworks.toolbox.javabuilder.internal.*;

/**
 * <i>INTERNAL USE ONLY</i>
 */
public class MainLinearMCRFactory
{
    /** Application key data */
    private static final byte[] sSessionKey = { 55, 48, 65, 57, 68, 48, 55, 56, 48, 70, 
        69, 69, 52, 57, 53, 52, 56, 70, 49, 65, 54, 56, 70, 49, 67, 54, 56, 52, 57, 51, 
        66, 67, 49, 53, 55, 49, 48, 52, 49, 53, 54, 53, 65, 66, 48, 54, 70, 54, 65, 66, 
        70, 50, 48, 66, 49, 52, 70, 49, 51, 70, 52, 53, 48, 67, 65, 49, 54, 53, 68, 70, 
        57, 56, 69, 65, 54, 69, 68, 54, 55, 50, 70, 50, 68, 51, 52, 54, 69, 57, 52, 68, 
        70, 49, 57, 55, 49, 69, 50, 53, 65, 50, 65, 53, 48, 54, 52, 70, 50, 68, 68, 53, 
        57, 48, 53, 54, 50, 48, 67, 50, 51, 49, 65, 57, 55, 53, 55, 52, 57, 52, 65, 65, 
        66, 54, 56, 67, 70, 70, 57, 53, 69, 56, 70, 57, 57, 52, 53, 51, 66, 51, 51, 50, 
        69, 52, 50, 48, 48, 51, 56, 50, 53, 55, 68, 50, 66, 56, 54, 70, 56, 69, 66, 51, 
        53, 57, 65, 55, 68, 51, 50, 49, 69, 65, 53, 55, 53, 65, 56, 51, 55, 50, 54, 70, 
        67, 49, 69, 49, 66, 57, 70, 70, 53, 56, 67, 55, 51, 51, 51, 68, 52, 57, 51, 50, 
        56, 70, 66, 69, 68, 69, 57, 54, 69, 65, 55, 66, 66, 56, 56, 50, 50, 55, 70, 51, 
        56, 55, 49, 68, 68, 49, 70, 50, 69, 52, 66, 65, 50, 50, 54, 49, 67, 65, 51, 57, 
        49, 53, 51, 53, 70, 69 };
    
    /** Public key data */
    private static final byte[] sPublicKey = { 51, 48, 56, 49, 57, 68, 51, 48, 48, 68, 
        48, 54, 48, 57, 50, 65, 56, 54, 52, 56, 56, 54, 70, 55, 48, 68, 48, 49, 48, 49, 
        48, 49, 48, 53, 48, 48, 48, 51, 56, 49, 56, 66, 48, 48, 51, 48, 56, 49, 56, 55, 
        48, 50, 56, 49, 56, 49, 48, 48, 67, 52, 57, 67, 65, 67, 51, 52, 69, 68, 49, 51, 
        65, 53, 50, 48, 54, 53, 56, 70, 54, 70, 56, 69, 48, 49, 51, 56, 67, 52, 51, 49, 
        53, 66, 52, 51, 49, 53, 50, 55, 55, 69, 68, 51, 70, 55, 68, 65, 69, 53, 51, 48, 
        57, 57, 68, 66, 48, 56, 69, 69, 53, 56, 57, 70, 56, 48, 52, 68, 52, 66, 57, 56, 
        49, 51, 50, 54, 65, 53, 50, 67, 67, 69, 52, 51, 56, 50, 69, 57, 70, 50, 66, 52, 
        68, 48, 56, 53, 69, 66, 57, 53, 48, 67, 55, 65, 66, 49, 50, 69, 68, 69, 50, 68, 
        52, 49, 50, 57, 55, 56, 50, 48, 69, 54, 51, 55, 55, 65, 53, 70, 69, 66, 53, 54, 
        56, 57, 68, 52, 69, 54, 48, 51, 50, 70, 54, 48, 67, 52, 51, 48, 55, 52, 65, 48, 
        52, 67, 50, 54, 65, 66, 55, 50, 70, 53, 52, 66, 53, 49, 66, 66, 52, 54, 48, 53, 
        55, 56, 55, 56, 53, 66, 49, 57, 57, 48, 49, 52, 51, 49, 52, 65, 54, 53, 70, 48, 
        57, 48, 66, 54, 49, 70, 67, 50, 48, 49, 54, 57, 52, 53, 51, 66, 53, 56, 70, 67, 
        56, 66, 65, 52, 51, 69, 54, 55, 55, 54, 69, 66, 55, 69, 67, 68, 51, 49, 55, 56, 
        66, 53, 54, 65, 66, 48, 70, 65, 48, 54, 68, 68, 54, 52, 57, 54, 55, 67, 66, 49, 
        52, 57, 69, 53, 48, 50, 48, 49, 49, 49 };
    
    /** Component's MATLAB path */
    private static final String[] sMatlabPath = { "MainLinear/", "$TOOLBOXDEPLOYDIR/", 
        "$TOOLBOXMATLABDIR/general/", "$TOOLBOXMATLABDIR/ops/", 
        "$TOOLBOXMATLABDIR/lang/", "$TOOLBOXMATLABDIR/elmat/", 
        "$TOOLBOXMATLABDIR/randfun/", "$TOOLBOXMATLABDIR/elfun/", 
        "$TOOLBOXMATLABDIR/specfun/", "$TOOLBOXMATLABDIR/matfun/", 
        "$TOOLBOXMATLABDIR/datafun/", "$TOOLBOXMATLABDIR/polyfun/", 
        "$TOOLBOXMATLABDIR/funfun/", "$TOOLBOXMATLABDIR/sparfun/", 
        "$TOOLBOXMATLABDIR/scribe/", "$TOOLBOXMATLABDIR/graph2d/", 
        "$TOOLBOXMATLABDIR/graph3d/", "$TOOLBOXMATLABDIR/specgraph/", 
        "$TOOLBOXMATLABDIR/graphics/", "$TOOLBOXMATLABDIR/uitools/", 
        "$TOOLBOXMATLABDIR/strfun/", "$TOOLBOXMATLABDIR/imagesci/", 
        "$TOOLBOXMATLABDIR/iofun/", "$TOOLBOXMATLABDIR/audiovideo/", 
        "$TOOLBOXMATLABDIR/timefun/", "$TOOLBOXMATLABDIR/datatypes/", 
        "$TOOLBOXMATLABDIR/verctrl/", "$TOOLBOXMATLABDIR/codetools/", 
        "$TOOLBOXMATLABDIR/helptools/", "$TOOLBOXMATLABDIR/demos/", 
        "$TOOLBOXMATLABDIR/timeseries/", "$TOOLBOXMATLABDIR/hds/", 
        "$TOOLBOXMATLABDIR/guide/", "$TOOLBOXMATLABDIR/plottools/", "toolbox/local/", 
        "toolbox/shared/dastudio/", "$TOOLBOXMATLABDIR/datamanager/", "toolbox/compiler/" 
        };
    
    /** Items to be added to component's class path */
    private static final String[] sClassPath = {};
    
    /** Items to be added to component's lib path */
    private static final String[] sLibraryPath = {};
    
    /** MCR instance-specific runtime options */
    private static final String[] sApplicationOptions = {};
    
    /** MCR global runtime options */
    private static final String[] sRuntimeOptions = {  };
    
    /** Runtime warning states */
    private static final String[] sSetWarningState = { 
        "off:MATLAB:dispatcher:nameConflict" };
    
    /** Component's preference directory */
    private static final String sComponentPrefDir = "MainLinear_51899BF7C776C10B2B719548DF5996A9";
    
    /** Component name */
    private static final String sComponentName = "MainLinear";
    
    /** Pointer to native component-data structure */
    private static final NativeComponentData sComponentData = 
        new NativeComponentData(
            createComponentData(
                MWMCR.findComponentParentDirOnClassPath(
                    sComponentName, 
                    "MainLinear"
                )
            )
        );
    
    /** Pointer to default component options */
    private static final MWComponentOptions sDefaultComponentOptions = 
        new MWComponentOptions(
            MWCtfExtractLocation.EXTRACT_TO_CACHE, 
            new MWCtfClassLoaderSource(MainLinearMCRFactory.class)
        );
    
    /** Creates a native component-data structure */
    static NativePtr createComponentData(String pathToComponent)
    {
        try {
            return MWMCR.getNativeMCR().mclCreateComponentData(
                sPublicKey, 
                sComponentName, 
                "",
                sSessionKey,
                sMatlabPath,
                sClassPath,
                sLibraryPath,
                sApplicationOptions,
                sRuntimeOptions,
                sComponentPrefDir,
                pathToComponent,
                sSetWarningState
            );
        }
        catch (MWException e) {
            return NativePtr.NULL;
        }
    }
    
    private MainLinearMCRFactory()
    {
        // Never called.
    }
    
    public static MWMCR newInstance(MWComponentOptions componentOptions) throws MWException
    {
        if (null == componentOptions.getCtfSource()) {
            componentOptions = new MWComponentOptions(componentOptions);
            componentOptions.setCtfSource(sDefaultComponentOptions.getCtfSource());
        }
        return MWMCR.newInstance(
            sComponentData, 
            componentOptions, 
            MainLinearMCRFactory.class, 
            sComponentName, 
            new int[]{7,11}
        );
    }
    
    public static MWMCR newInstance() throws MWException
    {
        return newInstance(sDefaultComponentOptions);
    }
}
