package boundary;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import control.Controller;
import entity.Corso;
import entity.SessioneInPresenza;
import net.miginfocom.swing.MigLayout;

public class SessioniFrame extends JFrame {
    private Controller theController;
    private Corso corso;
    private JList<String> listSessioni;
    private DefaultListModel<String> listModel;
    private List<SessioneInPresenza> sessioni;
    
    public SessioniFrame(Controller c, Corso corso) {
        this.theController = c;
        this.corso = corso;
        
        setTitle("Sessioni Pratiche - " + corso.getTitolo());
        setSize(800, 600);
        setLocationRelativeTo(null);
        
        initComponents();
        caricaSessioni();
    }
    
    private void initComponents() {
        setLayout(new MigLayout("", "[grow]", "[50px][grow][40px]"));
        
        JLabel titleLabel = new JLabel("Sessioni Pratiche - " + corso.getTitolo());
        titleLabel.setFont(titleLabel.getFont().deriveFont(20f));
        add(titleLabel, "cell 0 0,alignx center");
        
        listModel = new DefaultListModel<>();
        listSessioni = new JList<>(listModel);
        listSessioni.addListSelectionListener(e -> {
            if (!e.getValueIsAdjusting()) {
                int selectedIndex = listSessioni.getSelectedIndex();
                if (selectedIndex >= 0 && sessioni != null && selectedIndex < sessioni.size()) {
                    SessioneInPresenza sessioneSelezionata = sessioni.get(selectedIndex);
                    theController.ApriGestioneRicette(sessioneSelezionata);
                }
            }
        });
        
        add(new JScrollPane(listSessioni), "cell 0 1,grow");
        
        JButton btnTorna = new JButton("Torna ai Corsi");
        btnTorna.addActionListener(e -> theController.TornaCorsiFromSessioni());
        add(btnTorna, "cell 0 2,alignx left");
    }
    
    private void caricaSessioni() {
        sessioni = theController.getSessioniByCorso(corso);
        aggiornaListaSessioni();
    }
    
    private void aggiornaListaSessioni() {
        listModel.clear();
        if (sessioni != null && !sessioni.isEmpty()) {
            for (SessioneInPresenza sessione : sessioni) {

                String descrizione = String.format("Sessione %d - %s - %s %s", 
                    sessione.getNumSessione(),
                    sessione.getData().toString(),
                    sessione.getLuogo(),
                    sessione.getAula());
                listModel.addElement(descrizione);
            }
        } else {
            listModel.addElement("Nessuna sessione trovata");
        }
    }

}
