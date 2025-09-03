package boundary;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;

import control.Controller;
import entity.Corso;
import net.miginfocom.swing.MigLayout;

public class CorsiFrame extends JFrame {
    
	private static final long serialVersionUID = 1L;
    private JPanel contentPane;
    private Controller theController;
    private JList<String> listCorsi;
    private DefaultListModel<String> listModel;
    private JComboBox<String> comboTopic;
    private List<Corso> tuttiICorsi;

    public CorsiFrame(Controller c) {
        theController = c;
        setVisible(false);
        setResizable(true);
        setTitle("I Miei Corsi");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(800, 500);
        setLocationRelativeTo(null);
        setMinimumSize(new Dimension(600, 400));
        
        contentPane = new JPanel();
        contentPane.setBackground(new Color(255, 255, 255));
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
        setContentPane(contentPane);
        contentPane.setLayout(new MigLayout("", "[grow]", "[50px][grow][40px]"));

        JLabel titleLabel = new JLabel("I Miei Corsi");
        titleLabel.setForeground(new Color(26, 95, 180));
        titleLabel.setHorizontalAlignment(SwingConstants.CENTER);
        titleLabel.setFont(titleLabel.getFont().deriveFont(24f));
        contentPane.add(titleLabel, "cell 0 0,alignx center");
        
        JPanel filterPanel = new JPanel(new MigLayout("", "[80px][grow][100px]", "[]"));
        filterPanel.setBackground(new Color(255, 255, 255));
        
        JLabel lblFiltro = new JLabel("Filtra per:");
        lblFiltro.setForeground(new Color(26, 95, 180));
        lblFiltro.setBackground(new Color(26, 95, 180));
        filterPanel.add(lblFiltro, "cell 0 0,alignx left,aligny center");
        
        comboTopic = new JComboBox<>();
        comboTopic.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                filtraCorsi();
            }
        });
        filterPanel.add(comboTopic, "cell 1 0,growx");
        
        JButton btnReset = new JButton("Reset");
        btnReset.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
        btnReset.setForeground(new Color(248, 248, 255));
        btnReset.setBackground(new Color(98, 160, 233));
        btnReset.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                comboTopic.setSelectedIndex(0);
                filtraCorsi();
            }
        });
        filterPanel.add(btnReset, "cell 2 0,alignx right");
        
        contentPane.add(filterPanel, "cell 0 1,growx");


        listModel = new DefaultListModel<>();
        listCorsi = new JList<>(listModel);
        listCorsi.setBackground(new Color(240, 240, 240));
        
        JScrollPane scrollPane = new JScrollPane(listCorsi);
        contentPane.add(scrollPane, "cell 0 1,grow");

        JButton btnTorna = new JButton("Torna alla Homepage");
        btnTorna.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
        btnTorna.setOpaque(true);
        btnTorna.setBackground(new Color(98, 160, 234));
        btnTorna.setForeground(new Color(255, 255, 255));
        btnTorna.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                theController.TornaHomepageFromCorsi();
            }
        });
        contentPane.add(btnTorna, "cell 0 2,alignx left");
        
        caricaCorsi();
    }
    
    private void caricaCorsi() {
    	tuttiICorsi = theController.getCorsiChef();
        caricaTopics();
        aggiornaListaCorsi(tuttiICorsi);
	}
    
    private void caricaTopics() {
        comboTopic.removeAllItems();
        comboTopic.addItem("Tutti i topics");
        
        if (tuttiICorsi != null && !tuttiICorsi.isEmpty()) {
            tuttiICorsi.stream()
                .map(corso -> corso.getIdTopic().getNome())
                .distinct()
                .sorted()
                .forEach(topic -> comboTopic.addItem(topic));
        }
    }
    
    private void filtraCorsi() {
        String topicSelezionato = (String) comboTopic.getSelectedItem();
        
        if (topicSelezionato == null || topicSelezionato.equals("Tutti i topics")) {
            aggiornaListaCorsi(tuttiICorsi);
        } else {
            List<Corso> corsiFiltrati = tuttiICorsi.stream()
                .filter(corso -> corso.getIdTopic().getNome().equals(topicSelezionato))
                .collect(Collectors.toList());
            aggiornaListaCorsi(corsiFiltrati);
        }
    }
    
    private void aggiornaListaCorsi(List<Corso> corsi) {
        listModel.clear();
        
        if (corsi == null || corsi.isEmpty()) {
            listModel.addElement("Nessun corso trovato");
        } else {
            for (Corso corso : corsi) {
                String corsoInfo = String.format("%s - %s (%d lezioni) - %s", 
                    corso.getTitolo(), 
                    corso.getFrequenza(),
                    corso.getNumLezioni(),
                    corso.getIdTopic().getNome());
                listModel.addElement(corsoInfo);
            }
        }
    }
    
    
    public void showErrorMessage(String message) {
		JOptionPane.showMessageDialog(this, message, "Errore", JOptionPane.ERROR_MESSAGE);
	}
}
