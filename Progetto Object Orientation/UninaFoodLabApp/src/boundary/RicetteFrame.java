package boundary;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;
import java.util.List;
import java.util.ArrayList;
import net.miginfocom.swing.MigLayout;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.TitledBorder;
import javax.swing.border.BevelBorder;

import control.Controller;
import entity.SessioneInPresenza;
import entity.Ricetta;

public class RicetteFrame extends JDialog {
	
    private Controller theController;
    private SessioneInPresenza sessione;
    private JList<JCheckBox> listRicetteDisponibili;
    private DefaultListModel<JCheckBox> modelDisponibili;
    private List<Ricetta> tutteLeRicette;
    
    public RicetteFrame(Controller c, SessioneInPresenza sessione) {
    	setModal(true);
        this.theController = c;
        this.sessione = sessione;
        setTitle("Gestione Ricette - Sessione " + sessione.getNumSessione());
        setSize(600, 500);
        setLocationRelativeTo(null);
        setResizable(false);
        initComponents();
        caricaRicette();
        CaricaIcona();
    }
    
    private void initComponents() {
        getContentPane().setLayout(new MigLayout("", "[grow,fill]", "[50px][grow][40px]"));
        
        JLabel titleLabel = new JLabel("Gestione Ricette");
        titleLabel.setForeground(new Color(26, 95, 180));
        titleLabel.setFont(titleLabel.getFont().deriveFont(18f));
        titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
        getContentPane().add(titleLabel, "cell 0 0,alignx center");
        
        JPanel panelRicette = new JPanel(new MigLayout("", "[grow]", "[][grow]"));
        panelRicette.setBorder(BorderFactory.createTitledBorder("Seleziona Ricette per la Sessione"));
        
        TitledBorder border = (TitledBorder) panelRicette.getBorder();
        border.setTitleColor(new Color(98, 160, 233));
        modelDisponibili = new DefaultListModel<>();
        listRicetteDisponibili = new JList<>(modelDisponibili);
        listRicetteDisponibili.setForeground(new Color(26, 95, 180));
        listRicetteDisponibili.setVisibleRowCount(20);
        listRicetteDisponibili.setCellRenderer(new ListCellRenderer<JCheckBox>() {
            @Override
            public Component getListCellRendererComponent(JList<? extends JCheckBox> list,
                    JCheckBox value, int index, boolean isSelected, boolean cellHasFocus) {
                
                if (isSelected) {
                    value.setBackground(new Color(173, 216, 230));
                } else {
                    value.setBackground(Color.WHITE);
                }
                value.setForeground(new Color(26, 95, 180));
                value.setOpaque(true);
                
                return value;
            }
        });
        listRicetteDisponibili.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        listRicetteDisponibili.addMouseListener(new java.awt.event.MouseAdapter() {
            @Override
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                int index = listRicetteDisponibili.locationToIndex(evt.getPoint());
                if (index >= 0) {
                    JCheckBox checkbox = modelDisponibili.getElementAt(index);
                    checkbox.setSelected(!checkbox.isSelected());
                    listRicetteDisponibili.repaint();
                }
            }
        });
        
        JScrollPane scrollRicette = new JScrollPane(listRicetteDisponibili);
        scrollRicette.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);
        scrollRicette.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
        panelRicette.add(scrollRicette, "cell 0 1,grow");
        getContentPane().add(panelRicette, "cell 0 1,grow");
        
        JPanel panelPulsanti = new JPanel(new MigLayout("", "[grow][]", "[]"));
        
        JButton btnTorna = new JButton("Torna alle Sessioni");
        btnTorna.setForeground(new Color(248, 248, 255));
        btnTorna.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
        btnTorna.setBackground(new Color(26, 95, 180));
        btnTorna.setPreferredSize(new Dimension(135, 30));
        btnTorna.addActionListener(e -> theController.TornaSessioniFromRicette());
        panelPulsanti.add(btnTorna, "cell 0 0,alignx left");
        
        JButton btnSalva = new JButton("Salva Ricette");
        btnSalva.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
        btnSalva.setForeground(new Color(248, 248, 255));
        btnSalva.setBackground(new Color(98, 160, 233));
        btnSalva.setPreferredSize(new Dimension(135, 30));
        btnSalva.addActionListener(e -> salvaAssociazioni());
        panelPulsanti.add(btnSalva, "cell 1 0,alignx right");
        getContentPane().add(panelPulsanti, "cell 0 2,grow");
        getRootPane().setDefaultButton(btnSalva);
        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
            KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), "cancelAction");
        getRootPane().getActionMap().put("cancelAction", new AbstractAction() {
            private static final long serialVersionUID = 1L;
            @Override
            public void actionPerformed(ActionEvent e) {
                theController.TornaSessioniFromRicette();
            }
        });
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
                JCheckBox checkbox = new JCheckBox(ricetta.getNome() + " - " + ricetta.getDescrizione());
                checkbox.setForeground(new Color(26, 95, 180));
                checkbox.setOpaque(true);
                modelDisponibili.addElement(checkbox);
            }
        } else {
            JCheckBox noRicette = new JCheckBox("Nessuna ricetta disponibile per questo corso");
            noRicette.setEnabled(false);
            modelDisponibili.addElement(noRicette);
        }
    }
    
    private void salvaAssociazioni() {
        List<Ricetta> ricetteSelezionate = new ArrayList<>();
        
        for (int i = 0; i < modelDisponibili.getSize(); i++) {
            JCheckBox checkbox = modelDisponibili.getElementAt(i);
            if (checkbox.isSelected() && i < tutteLeRicette.size()) {
                ricetteSelezionate.add(tutteLeRicette.get(i));
            }
        }
        
        List<Ricetta> ricetteEsistenti = theController.getRicettePerSessione(sessione);
        
        if (ricetteEsistenti != null && !ricetteEsistenti.isEmpty()) {
            StringBuilder messaggioRicette = new StringBuilder("Le seguenti ricette sono già associate a questa sessione:\n\n");
            for (Ricetta ricetta : ricetteEsistenti) {
                messaggioRicette.append("• ").append(ricetta.getNome()).append("\n");
            }
            messaggioRicette.append("\nVuoi sovrascrivere le associazioni esistenti?");
            int scelta = JOptionPane.showConfirmDialog(this,
                messaggioRicette.toString(),
                "Ricette già presenti",
                JOptionPane.YES_NO_OPTION,
                JOptionPane.WARNING_MESSAGE);
            if (scelta != JOptionPane.YES_OPTION) {
                return;
            }
        }
        
        boolean successo = theController.salvaRicettePerSessione(sessione, ricetteSelezionate);
        
        if (successo) {
            JOptionPane.showMessageDialog(this,
                "Ricette associate correttamente alla sessione!",
                "Successo",
                JOptionPane.INFORMATION_MESSAGE);
        } else {
            JOptionPane.showMessageDialog(this,
                "Errore durante il salvataggio delle associazioni.",
                "Errore",
                JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void CaricaIcona() {
	    try {
	        java.net.URL iconUrl = getClass().getResource("/icona.png");
	        if (iconUrl != null) {
	            ImageIcon originalIcon = new ImageIcon(iconUrl);
	            Image scaledImage = originalIcon.getImage().getScaledInstance(32, 32, Image.SCALE_SMOOTH);
	            ImageIcon icon = new ImageIcon(scaledImage);
	            setIconImage(icon.getImage());
	            repaint();
	        } else {
	            System.err.println("File icona.png non trovato");
	        }
	    } catch (Exception e) {
	        System.err.println("Errore nel caricamento dell'icona: " + e.getMessage());
	        e.printStackTrace();
	    }
	}
    
}
