﻿#pragma checksum "..\..\..\..\Formulaires\FormulaireHotel.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5D32B3516CA78589528C3671F46DFF29B49D6486"
//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré par un outil.
//     Version du runtime :4.0.30319.42000
//
//     Les modifications apportées à ce fichier peuvent provoquer un comportement incorrect et seront perdues si
//     le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

using ECF;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace ECF {
    
    
    /// <summary>
    /// FormulaireHotel
    /// </summary>
    public partial class FormulaireHotel : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 35 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label labTitreFormulaire;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txbNomHotel;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txbCategorieHotel;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txbAdresse;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txbVille;
        
        #line default
        #line hidden
        
        
        #line 53 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_Annuler;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_Valider;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "5.0.11.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/ECF2;component/formulaires/formulairehotel.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "5.0.11.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.labTitreFormulaire = ((System.Windows.Controls.Label)(target));
            return;
            case 2:
            this.txbNomHotel = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.txbCategorieHotel = ((System.Windows.Controls.TextBox)(target));
            
            #line 39 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
            this.txbCategorieHotel.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.txbNumber_TextChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.txbAdresse = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.txbVille = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.btn_Annuler = ((System.Windows.Controls.Button)(target));
            
            #line 53 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
            this.btn_Annuler.Click += new System.Windows.RoutedEventHandler(this.Retour);
            
            #line default
            #line hidden
            return;
            case 7:
            this.btn_Valider = ((System.Windows.Controls.Button)(target));
            
            #line 54 "..\..\..\..\Formulaires\FormulaireHotel.xaml"
            this.btn_Valider.Click += new System.Windows.RoutedEventHandler(this.ActionHotel);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

