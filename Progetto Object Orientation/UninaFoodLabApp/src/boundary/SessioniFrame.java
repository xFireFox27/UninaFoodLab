package boundary;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import java.util.stream.Collectors;
import control.Controller;
import entity.Corso;
import entity.Sessione;
import entity.SessioneInPresenza;
import entity.SessioneOnline;
import net.miginfocom.swing.MigLayout;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.TitledBorder;
import javax.swing.border.BevelBorder;

public class SessioniFrame extends JFrame {
    private Controller theController;
    private Corso corso;
    private JList<String> listSessioniPresenza;
    private JList<String> listSessioniOnline;
    private DefaultListModel<String> listModelPresenza;
    private DefaultListModel<String> listModelOnline;
    private List<SessioneInPresenza> sessioniPresenza;
    private List<SessioneOnline> sessioniOnline;
    
    public SessioniFrame(Controller c, Corso corso) {
        this.theController = c;
        this.corso = corso;
        
        setTitle("Gestione Sessioni - " + corso.getTitolo());
        setSize(1000, 700);
        setLocationRelativeTo(null);
        
        initComponents();
        caricaSessioni();
    }
    
    private void initComponents() {
        getContentPane().setLayout(new MigLayout("", "[grow,fill][grow,fill]", "[50px][grow][40px]"));
        
        JLabel titleLabel = new JLabel("Gestione Sessioni - " + corso.getTitolo());
        titleLabel.setForeground(new Color(26, 95, 180));
        titleLabel.setFont(titleLabel.getFont().deriveFont(20f));
        titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
        getContentPane().add(titleLabel, "cell 0 0 2 1,alignx center");
        
        // Pannello Sessioni in Presenza
        JPanel panelPresenza = new JPanel(new MigLayout("", "[grow]", "[30px][grow]"));
        TitledBorder borderPresenza = BorderFactory.createTitledBorder("Sessioni in Presenza");
        borderPresenza.setTitleColor(new Color(98, 160, 233));
        panelPresenza.setBorder(borderPresenza);
        
        listModelPresenza = new DefaultListModel<>();
        listSessioniPresenza = new JList<>(listModelPresenza);
        listSessioniPresenza.setForeground(new Color(26, 95, 180));
        listSessioniPresenza.setPreferredSize(new Dimension(450, 500));
        listSessioniPresenza.setVisibleRowCount(-1);
        listSessioniPresenza.addMouseListener(new MouseAdapter(){
        	public void mouseClicked(MouseEvent e) {
            if (e.getClickCount() == 2) {
                int selectedIndex = listSessioniPresenza.getSelectedIndex();
                if (selectedIndex >= 0 && sessioniPresenza != null && selectedIndex < sessioniPresenza.size()) {
                    SessioneInPresenza sessioneSelezionata = sessioniPresenza.get(selectedIndex);
                    theController.ApriGestioneRicette(sessioneSelezionata);
                }
            }
        	}
        });
        
        JScrollPane scrollPresenza = new JScrollPane(listSessioniPresenza);
        scrollPresenza.setPreferredSize(new Dimension(450, 500));
        panelPresenza.add(scrollPresenza, "cell 0 1,grow");
        getContentPane().add(panelPresenza, "cell 0 1,grow");
        
        // Pannello Sessioni Online  
        JPanel panelOnline = new JPanel(new MigLayout("", "[grow]", "[30px][grow]"));
        TitledBorder borderOnline = BorderFactory.createTitledBorder("Sessioni Online");
        borderOnline.setTitleColor(new Color(98, 160, 233));
        panelOnline.setBorder(borderOnline);
        
        listModelOnline = new DefaultListModel<>();
        listSessioniOnline = new JList<>(listModelOnline);
        listSessioniOnline.setForeground(new Color(26, 95, 180));
        listSessioniOnline.setPreferredSize(new Dimension(450, 500));
        listSessioniOnline.setVisibleRowCount(-1);
        listSessioniOnline.addListSelectionListener(e -> {
            if (!e.getValueIsAdjusting()) {
                int selectedIndex = listSessioniOnline.getSelectedIndex();
                if (selectedIndex >= 0 && sessioniOnline != null && selectedIndex < sessioniOnline.size()) {
                    SessioneOnline sessioneSelezionata = sessioniOnline.get(selectedIndex);
                    
                }
            }
        });
        
        JScrollPane scrollOnline = new JScrollPane(listSessioniOnline);
        scrollOnline.setPreferredSize(new Dimension(450, 500));
        panelOnline.add(scrollOnline, "cell 0 1,grow");
        getContentPane().add(panelOnline, "cell 1 1,grow");
        
        // Pulsante per tornare indietro
        JButton btnTorna = new JButton("Torna ai Corsi");
        btnTorna.setBackground(new Color(26, 95, 180));
        btnTorna.setForeground(new Color(248, 248, 255));
        btnTorna.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
        btnTorna.setMaximumSize(new Dimension(150, 30));
        btnTorna.addActionListener(e -> theController.TornaCorsiFromSessioni());
        getContentPane().add(btnTorna, "cell 0 2,alignx center");
        
        // Pulsante per inserire nuova sessione
        JButton btnNuovaSessione = new JButton("Nuova Sessione");
        btnNuovaSessione.setBackground(new Color(98, 160, 233));
        btnNuovaSessione.setForeground(new Color(248, 248, 255));
        btnNuovaSessione.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
        btnNuovaSessione.setMaximumSize(new Dimension(150, 30));
        btnNuovaSessione.addActionListener(e -> theController.ApriInserimentoSessione(corso));
        getContentPane().add(btnNuovaSessione, "cell 1 2,alignx center");
        
        // Si torna alla finestra precedente premendo ESC
        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW)
			.put(KeyStroke.getKeyStroke("ESCAPE"), "ESCAPE");
        getRootPane().getActionMap().put("ESCAPE", new AbstractAction() {
		@Override
		public void actionPerformed(ActionEvent e) {
			theController.TornaCorsiFromSessioni();
		}
		});
        
    }

    
    private void caricaSessioni() {
        sessioniPresenza = theController.getSessioniByCorso(corso);
        
        sessioniOnline = theController.getSessioniOnlineByCorso(corso);
        
        aggiornaListeSessioni();
    }
    
    public void aggiornaListeSessioni() {
        // Ricarica i dati dal database
        sessioniPresenza = theController.getSessioniByCorso(corso);
        sessioniOnline = theController.getSessioniOnlineByCorso(corso);
        
        // Aggiorna lista sessioni in presenza
        listModelPresenza.clear();
        if (sessioniPresenza != null && !sessioniPresenza.isEmpty()) {
            for (SessioneInPresenza sessione : sessioniPresenza) {
                String descrizione = String.format("Sessione %d - %s - %s %s", 
                    sessione.getNumSessione(),
                    sessione.getData().toString(),
                    sessione.getLuogo(),
                    sessione.getAula());
                listModelPresenza.addElement(descrizione);
            }
        } else {
            listModelPresenza.addElement("Nessuna sessione in presenza");
        }
        
        // Aggiorna lista sessioni online
        listModelOnline.clear();
        if (sessioniOnline != null && !sessioniOnline.isEmpty()) {
            for (SessioneOnline sessione : sessioniOnline) {
                String descrizione = String.format("Sessione %d - %s - Link: %s", 
                    sessione.getNumSessione(),
                    sessione.getData().toString(),
                    sessione.getLink());
                listModelOnline.addElement(descrizione);
            }
        } else {
            listModelOnline.addElement("Nessuna sessione online");
        }
    }

}
