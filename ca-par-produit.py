import plotly.express as px
import pandas as pd

données = pd.read_csv('https://docs.google.com/spreadsheets/d/e/2PACX-1vSC4KusfFzvOsr8WJRgozzsCxrELW4G4PopUkiDbvrrV2lg0S19-zeryp02MC9WYSVBuzGCUtn8ucZW/pub?output=csv')

données['chiffre_affaires'] = données['prix'] * données['qte']
ca_par_produit = données.groupby('produit', as_index=False)['chiffre_affaires'].sum()

figure = px.bar(
    ca_par_produit,
    x='produit',
    y='chiffre_affaires',
    title="Chiffre d'affaires par produit (€)",
    labels={'chiffre_affaires': "Chiffre d'affaires (€)", 'produit': 'Produit'},
    text_auto=True,
)

figure.write_html('ca-par-produit.html')

print('ca-par-produit.html généré avec succès !')
