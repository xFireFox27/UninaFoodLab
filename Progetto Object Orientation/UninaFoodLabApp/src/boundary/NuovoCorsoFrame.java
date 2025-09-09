package boundary;

import java.awt.Dialog;
import java.awt.Image;

import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import net.miginfocom.swing.MigLayout;
import javax.swing.JTextField;
import javax.swing.KeyStroke;
import javax.swing.AbstractAction;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import control.Controller;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JFormattedTextField;

import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.awt.event.ActionEvent;
import java.awt.SystemColor;
import java.awt.Color;

public class NuovoCorsoFrame extends JDialog {

    private static final long serialVersionUID = 1L;
    private Controller theController;
    private JPanel contentPane;
    private JTextField titoloCorsoTF;
    private JTextField numLezioniTF;
    private JFormattedTextField dataInizioTF;
    private JLabel titoloCorsoLbl;
    private JLabel frequenzaCorsoLbl;
    private JLabel numLezioniLbl;
    private JLabel dataInizioLbl;
    private JLabel topicLbl;
    private JComboBox<String> topicCB;
    private JComboBox<String> frequenzaCB;
    private JButton annullaBtn;
    private JButton creaCorsoBtn;

    /**
     * Create the dialog.
     */
    public NuovoCorsoFrame(java.awt.Frame owner, Controller c) {
        super(owner, "Nuovo Corso", true);
        theController = c;
        setResizable(true);
        setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
        setSize(625, 560);
        setResizable(false);
        setLocationRelativeTo(owner);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
        CaricaIcona();
        
        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
	            KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), "cancelAction");
	        getRootPane().getActionMap().put("cancelAction", new AbstractAction() {
	            private static final long serialVersionUID = 1L;
	            @Override
	            public void actionPerformed(ActionEvent e) {
	                theController.tornaHomepageFromCreaCorso(NuovoCorsoFrame.this);
	            }
	        });

        setContentPane(contentPane);
        contentPane.setLayout(new MigLayout("", "[grow][150][200][150][grow]", "[grow][50][50][50][50][50][50][grow]"));
        
                titoloCorsoLbl = new JLabel("Titolo:");
                contentPane.add(titoloCorsoLbl, "cell 1 1,alignx right");

        titoloCorsoTF = new JTextField();
        contentPane.add(titoloCorsoTF, "cell 2 1,growx");
        titoloCorsoTF.setColumns(10);
        
                frequenzaCorsoLbl = new JLabel("Frequenza:");
                contentPane.add(frequenzaCorsoLbl, "cell 1 2,alignx trailing");
                
                frequenzaCB = new JComboBox<>();
                frequenzaCB.addItem("Ogni giorno");
                frequenzaCB.addItem("Ogni due giorni");
                frequenzaCB.addItem("Ogni tre giorni");
                frequenzaCB.addItem("Settimanale");
                contentPane.add(frequenzaCB, "cell 2 2,growx");
        
                numLezioniLbl = new JLabel("N° di lezioni:");
                contentPane.add(numLezioniLbl, "cell 1 3,alignx right");

        numLezioniTF = new JTextField();
        contentPane.add(numLezioniTF, "cell 2 3,growx");
        numLezioniTF.setColumns(10);
        
                dataInizioLbl = new JLabel("Data di inizio:");
                contentPane.add(dataInizioLbl, "cell 1 4,alignx right");

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        dateFormat.setLenient(false);
        dataInizioTF = new JFormattedTextField(dateFormat);
        dataInizioTF.setToolTipText("Formato: dd/MM/yyyy");
        contentPane.add(dataInizioTF, "cell 2 4,growx");
        dataInizioTF.setColumns(10);

        topicCB = new JComboBox<>();
        ArrayList<String> topic = theController.getTopicFromDB();
        for (String t : topic) {
			topicCB.addItem(t);
		}
        
                topicLbl = new JLabel("Topic:");
                contentPane.add(topicLbl, "cell 1 5,alignx right");
        contentPane.add(topicCB, "cell 2 5,growx");
                        
                                annullaBtn = new JButton("Annulla");
                                annullaBtn.setForeground(new Color(248, 248, 255));
                                annullaBtn.setBackground(Color.RED);
                                annullaBtn.addActionListener(new ActionListener() {
                                    public void actionPerformed(ActionEvent e) {
                                        theController.tornaHomepageFromCreaCorso(NuovoCorsoFrame.this);
                                    }
                                });
                                
                                        creaCorsoBtn = new JButton("Salva");
                                        creaCorsoBtn.setForeground(new Color(248, 248, 255));
                                        creaCorsoBtn.setBackground(new Color(98, 160, 233));
                                        creaCorsoBtn.addActionListener(new ActionListener() {
                                        	public void actionPerformed(ActionEvent e) {
                                        		
                                        		if (titoloCorsoTF.getText().trim().isEmpty() || 
                                        			numLezioniTF.getText().trim().isEmpty() || 
                                        			dataInizioTF.getText().trim().isEmpty() ||
                                        			topicCB.getSelectedItem() == null) {
                                        			JOptionPane.showMessageDialog(NuovoCorsoFrame.this, "Tutti i campi devono essere compilati.", "Errore", JOptionPane.ERROR_MESSAGE);
                                        			return;
                                        		}
                                        		
                                        		try {
                                                    dataInizioTF.commitEdit();
                                                    Date dataInizio = (Date) dataInizioTF.getValue();
                                                    
                                                    String anno = "";
                                                    String dataInizioSQL = "";
                                                    if (dataInizio != null) {
                                                        Calendar cal = Calendar.getInstance();
                                                        cal.setTime(dataInizio);
                                                        anno = String.valueOf(cal.get(Calendar.YEAR));
                                                        
                                                        SimpleDateFormat sqlSdf = new SimpleDateFormat("yyyy-MM-dd");
                                                        dataInizioSQL = sqlSdf.format(dataInizio);
                                                    }
                                                    theController.creaNuovoCorso(titoloCorsoTF.getText(), (String) frequenzaCB.getSelectedItem(), numLezioniTF.getText(), anno, dataInizioSQL , (String) topicCB.getSelectedItem(),  NuovoCorsoFrame.this);
                                                } catch (ParseException ex) {
                                                    JOptionPane.showMessageDialog(NuovoCorsoFrame.this, "Formato data non valido. Usare il formato dd/MM/yyyy.", "Errore di Formato", JOptionPane.ERROR_MESSAGE);
                                                }
                                        	}
                                        });
                                        contentPane.add(creaCorsoBtn, "flowx,cell 2 6,alignx center,aligny center");
                                contentPane.add(annullaBtn, "cell 2 6,alignx center,aligny center");
                                
        getRootPane().setDefaultButton(creaCorsoBtn);
                                        
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
