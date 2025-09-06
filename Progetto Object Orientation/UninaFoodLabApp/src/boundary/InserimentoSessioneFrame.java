package boundary;

import javax.swing.*;
import javax.swing.border.EmptyBorder;
import javax.swing.border.TitledBorder;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

import control.Controller;
import entity.Corso;
import net.miginfocom.swing.MigLayout;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;
import javax.swing.border.MatteBorder;
import javax.swing.border.EtchedBorder;
import javax.swing.border.CompoundBorder;

public class InserimentoSessioneFrame extends JDialog {

    private static final long serialVersionUID = 1L;
    private final JPanel contentPanel = new JPanel();
    private Controller theController;
    private Corso corso;
    
    private JRadioButton rbInPresenza;
    private JRadioButton rbOnline;
    private ButtonGroup tipoSessioneGroup;
    
    private JTextField txtData;
    private JTextField txtDurata;
    private JTextField txtNumSessione;
    
    // Campi per sessione in presenza
    private JComboBox<String> cmbLuogo;
    private JTextField txtAula;
    private JPanel panelPresenza;
    
    // Campo per sessione online
    private JTextField txtLink;
    private JPanel panelOnline;

    public InserimentoSessioneFrame(Controller controller, Corso corso) {
        this.theController = controller;
        this.corso = corso;
        
        setTitle("Inserimento Nuova Sessione - " + corso.getTitolo());
        setModal(true);
        setResizable(false);
        setBounds(100, 100, 500, 400);
        setLocationRelativeTo(null);
        
        initComponents();
        CaricaIcona();
    }

    private void initComponents() {
    	
    	getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
	            KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), "cancelAction");
	        getRootPane().getActionMap().put("cancelAction", new AbstractAction() {
	            private static final long serialVersionUID = 1L;
	            @Override
	            public void actionPerformed(ActionEvent e) {
	                dispose();
	                theController.TornaSessioniFromInserimento();
	            }
	        });
    	
        getContentPane().setLayout(new BorderLayout());
        contentPanel.setBorder(new EmptyBorder(10, 10, 10, 10));
        getContentPane().add(contentPanel, BorderLayout.CENTER);
        contentPanel.setLayout(new MigLayout("", "[80px][grow]", "[][][][20px][][][20px][][]"));

        // Tipo di sessione
        JLabel lblTipo = new JLabel("Tipo Sessione:");
        lblTipo.setForeground(new Color(26, 95, 180));
        lblTipo.setBackground(new Color(26, 95, 180));
        lblTipo.setFont(lblTipo.getFont().deriveFont(Font.BOLD));
        contentPanel.add(lblTipo, "cell 0 0");

        JPanel panelTipo = new JPanel(new FlowLayout(FlowLayout.LEFT, 0, 0));
        rbInPresenza = new JRadioButton("In Presenza");
        rbInPresenza.setForeground(new Color(98, 160, 233));
        rbOnline = new JRadioButton("Online");
        rbOnline.setForeground(new Color(98, 160, 233));
        tipoSessioneGroup = new ButtonGroup();
        tipoSessioneGroup.add(rbInPresenza);
        tipoSessioneGroup.add(rbOnline);
        
        rbInPresenza.addActionListener(e -> togglePanels(true));
        rbOnline.addActionListener(e -> togglePanels(false));
        rbInPresenza.setSelected(true);
        
        panelTipo.add(rbInPresenza);
        panelTipo.add(Box.createHorizontalStrut(20));
        panelTipo.add(rbOnline);
        contentPanel.add(panelTipo, "cell 1 0");

        // Campi comuni
        JLabel lblNumSessione = new JLabel("Numero:");
        lblNumSessione.setForeground(new Color(26, 95, 180));
        contentPanel.add(lblNumSessione, "cell 0 1,alignx trailing");
        txtNumSessione = new JTextField();
        contentPanel.add(txtNumSessione, "cell 1 1,growx");

        JLabel lblData = new JLabel("Data/Ora:");
        lblData.setForeground(new Color(26, 95, 180));
        contentPanel.add(lblData, "cell 0 2,alignx trailing");
        txtData = new JTextField();
        txtData.setToolTipText("Formato: dd/MM/yyyy HH:mm");
        contentPanel.add(txtData, "cell 1 2,growx");

        JLabel lblDurata = new JLabel("Durata (min):");
        lblDurata.setForeground(new Color(26, 95, 180));
        contentPanel.add(lblDurata, "cell 0 3,alignx trailing");
        txtDurata = new JTextField();
        contentPanel.add(txtDurata, "cell 1 3,growx");

        // Pannello per sessione in presenza
        panelPresenza = new JPanel(new MigLayout("", "[80px][grow]", "[][]"));
        TitledBorder borderPresenza = BorderFactory.createTitledBorder("Dettagli Sessione in Presenza");
        borderPresenza.setTitleColor(new Color(26, 95, 180));
        panelPresenza.setBorder(borderPresenza);

        JLabel lblLuogo = new JLabel("Luogo:");
        lblLuogo.setForeground(new Color(26, 95, 180));
        panelPresenza.add(lblLuogo, "cell 0 0,alignx trailing");
        
        String[] luoghi = {"MonteSantangelo", "ViaClaudio", "PiazzaleTecchio", "PortaDiMassa", "ViaMarina"};
        cmbLuogo = new JComboBox<>(luoghi);
        cmbLuogo.setForeground(new Color(98, 160, 233));
        panelPresenza.add(cmbLuogo, "cell 1 0,growx");

        JLabel lblAula = new JLabel("Aula:");
        lblAula.setForeground(new Color(26, 95, 180));
        panelPresenza.add(lblAula, "cell 0 1,alignx trailing");
        txtAula = new JTextField();
        panelPresenza.add(txtAula, "cell 1 1,growx");

        contentPanel.add(panelPresenza, "cell 0 4 2 1,grow");

        // Pannello per sessione online
        panelOnline = new JPanel(new MigLayout("", "[80px][grow]", "[]"));
        TitledBorder borderOnline = BorderFactory.createTitledBorder("Dettagli Sessione Online");
        borderOnline.setTitleColor(new Color(26, 95, 180));
        panelOnline.setBorder(borderOnline);

        JLabel lblLink = new JLabel("Link:");
        lblLink.setForeground(new Color(26, 95, 180));
        panelOnline.add(lblLink, "cell 0 0,alignx trailing");
        txtLink = new JTextField();
        panelOnline.add(txtLink, "cell 1 0,growx");

        contentPanel.add(panelOnline, "cell 0 5 2 1,grow");

        // Pannello pulsanti
        JPanel buttonPane = new JPanel();
        buttonPane.setLayout(new FlowLayout(FlowLayout.RIGHT));
        getContentPane().add(buttonPane, BorderLayout.SOUTH);

        JButton btnSalva = new JButton("Salva");
        btnSalva.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
        btnSalva.setBackground(new Color(98, 160, 233));
        btnSalva.setForeground(Color.WHITE);
        btnSalva.setPreferredSize(new Dimension(80, 25));
        btnSalva.addActionListener(e -> salvaSessione());
        buttonPane.add(btnSalva);
        getRootPane().setDefaultButton(btnSalva);

        JButton btnAnnulla = new JButton("Annulla");
        btnAnnulla.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
        btnAnnulla.setForeground(new Color(248, 248, 255));
        btnAnnulla.setBackground(new Color(220, 20, 60));
        btnAnnulla.setPreferredSize(new Dimension(80, 25));
        btnAnnulla.addActionListener(e -> {
            dispose();
            theController.TornaSessioniFromInserimento();
        });
        buttonPane.add(btnAnnulla);

        // Inizializza i pannelli
        togglePanels(true);
    }

    private void togglePanels(boolean inPresenza) {
        panelPresenza.setVisible(inPresenza);
        panelOnline.setVisible(!inPresenza);
        revalidate();
        repaint();
    }

    private void salvaSessione() {
        try {
            // Validazione campi comuni
            if (txtNumSessione.getText().trim().isEmpty() ||
                txtData.getText().trim().isEmpty() ||
                txtDurata.getText().trim().isEmpty()) {
                JOptionPane.showMessageDialog(this, "Compilare tutti i campi obbligatori.", "Errore", JOptionPane.ERROR_MESSAGE);
                return;
            }

            int numSessione = Integer.parseInt(txtNumSessione.getText().trim());
            int durata = Integer.parseInt(txtDurata.getText().trim());
            
            // Parse della data
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
            LocalDateTime dateTime = LocalDateTime.parse(txtData.getText().trim(), formatter);
            Timestamp timestamp = Timestamp.valueOf(dateTime);

            if (rbInPresenza.isSelected()) {
                // Validazione campi sessione in presenza
                if (cmbLuogo.getSelectedItem() == null || txtAula.getText().trim().isEmpty()) {
                    JOptionPane.showMessageDialog(this, "Selezionare il luogo e inserire l'aula per la sessione in presenza.", "Errore", JOptionPane.ERROR_MESSAGE);
                    return;
                }
                
                String luogo = (String) cmbLuogo.getSelectedItem();
                String aula = txtAula.getText().trim();
                
                theController.inserisciSessioneInPresenza(timestamp, durata, numSessione, corso, luogo, aula);
            } else {
                // Validazione campo sessione online
                if (txtLink.getText().trim().isEmpty()) {
                    JOptionPane.showMessageDialog(this, "Inserire il link per la sessione online.", "Errore", JOptionPane.ERROR_MESSAGE);
                    return;
                }
                
                String link = txtLink.getText().trim();
                
                theController.inserisciSessioneOnline(timestamp, durata, numSessione, corso, link);
            }

            JOptionPane.showMessageDialog(this, "Sessione inserita con successo.", "Successo", JOptionPane.INFORMATION_MESSAGE);
            theController.TornaSessioniFromInserimento();
            

        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(this, "Numero sessione e durata devono essere valori numerici.", "Errore", JOptionPane.ERROR_MESSAGE);
        } catch (DateTimeParseException e) {
            JOptionPane.showMessageDialog(this, "Formato data non valido. Usare il formato: dd/MM/yyyy HH:mm.", "Errore", JOptionPane.ERROR_MESSAGE);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "Errore durante l'inserimento: " + e.getMessage(), "Errore", JOptionPane.ERROR_MESSAGE);
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
