package boundary;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import control.Controller;
import entity.SessioneInPresenza;
import entity.Ricetta;
import net.miginfocom.swing.MigLayout;

public class RicetteFrame extends JFrame {
    private Controller theController;
    private SessioneInPresenza sessione;
    private JList<String> listRicetteDisponibili;
    private JList<String> listRicetteAssociate;
    private DefaultListModel<String> modelDisponibili;
    private DefaultListModel<String> modelAssociate;
    private List<Ricetta> tutteLeRicette;
    
    public RicetteFrame(Controller c, SessioneInPresenza sessione) {
        this.theController = c;
        this.sessione = sessione;
        
        setTitle("Gestione Ricette - Sessione " + sessione.getNumSessione());
        setSize(900, 600);
        setLocationRelativeTo(null);
        
        initComponents();
        caricaRicette();
    }
    
    private void initComponents() {
        setLayout(new MigLayout("", "[grow][100px][grow]", "[50px][grow][40px]"));
        
        JLabel titleLabel = new JLabel("Gestione Ricette - Sessione " + sessione.getNumSessione());
        titleLabel.setFont(titleLabel.getFont().deriveFont(18f));
        titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
        add(titleLabel, "cell 0 0 3 1,alignx center");
        
        // Panel per ricette disponibili
        JPanel panelDisponibili = new JPanel(new MigLayout("", "[grow]", "[][grow]"));
        panelDisponibili.setBorder(BorderFactory.createTitledBorder("Ricette Disponibili"));
        
        modelDisponibili = new DefaultListModel<>();
        listRicetteDisponibili = new JList<>(modelDisponibili);
        panelDisponibili.add(new JScrollPane(listRicetteDisponibili), "cell 0 1,grow");
        
        add(panelDisponibili, "cell 0 1,grow");
        
        // Panel per i pulsanti
        JPanel panelPulsanti = new JPanel(new MigLayout("", "[grow]", "[grow][][grow]"));
        
        JButton btnAggiungi = new JButton(">>>");
        btnAggiungi.addActionListener(e -> aggiungiRicetta());
        panelPulsanti.add(btnAggiungi, "cell 0 1,growx");
        
        JButton btnRimuovi = new JButton("<<<");
        btnRimuovi.addActionListener(e -> rimuoviRicetta());
        panelPulsanti.add(btnRimuovi, "cell 0 2,growx");
        
        add(panelPulsanti, "cell 1 1,grow");
        
        // Panel per ricette associate
        JPanel panelAssociate = new JPanel(new MigLayout("", "[grow]", "[][grow]"));
        panelAssociate.setBorder(BorderFactory.createTitledBorder("Ricette Associate"));
        
        modelAssociate = new DefaultListModel<>();
        listRicetteAssociate = new JList<>(modelAssociate);
        panelAssociate.add(new JScrollPane(listRicetteAssociate), "cell 0 1,grow");
        
        add(panelAssociate, "cell 2 1,grow");
        
        // Pulsante per tornare indietro
        JButton btnTorna = new JButton("Torna alle Sessioni");
        btnTorna.addActionListener(e -> theController.TornaSessioniFromRicette());
        add(btnTorna, "cell 0 2,alignx left");
        
        // Pulsante per salvare
        JButton btnSalva = new JButton("Salva Associazioni");
        btnSalva.addActionListener(e -> salvaAssociazioni());
        add(btnSalva, "cell 2 2,alignx right");
    }
    
    private void caricaRicette() {
        List<Ricetta> ricette = theController.getAllRicette();
        aggiornaListaRicette(ricette);
    }

    
    private void aggiornaListaRicette(List<Ricetta> ricette) {
        tutteLeRicette = ricette;
        modelDisponibili.clear();
        
        if (ricette != null && !ricette.isEmpty()) {
            for (Ricetta ricetta : ricette) {
                modelDisponibili.addElement(ricetta.getNome() + " - " + ricetta.getDescrizione());
            }
        } else {
            modelDisponibili.addElement("Nessuna ricetta disponibile per questo corso");
        }
    }

    
    private void aggiungiRicetta() {
        int selectedIndex = listRicetteDisponibili.getSelectedIndex();
        if (selectedIndex >= 0) {
            String ricettaSelezionata = modelDisponibili.getElementAt(selectedIndex);
            modelAssociate.addElement(ricettaSelezionata);
            modelDisponibili.removeElementAt(selectedIndex);
        }
    }
    
    private void rimuoviRicetta() {
        int selectedIndex = listRicetteAssociate.getSelectedIndex();
        if (selectedIndex >= 0) {
            String ricettaSelezionata = modelAssociate.getElementAt(selectedIndex);
            modelDisponibili.addElement(ricettaSelezionata);
            modelAssociate.removeElementAt(selectedIndex);
        }
    }
    
    private void salvaAssociazioni() {
        // Qui implementerai la logica per salvare le associazioni nel database
        JOptionPane.showMessageDialog(this, 
            "Associazioni salvate con successo!", 
            "Conferma", 
            JOptionPane.INFORMATION_MESSAGE);
    }
}
