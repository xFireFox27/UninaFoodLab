package boundary;

import java.awt.Dialog;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import net.miginfocom.swing.MigLayout;
import javax.swing.JTextField;
import javax.swing.JButton;
import control.Controller;
import javax.swing.JLabel;
import javax.swing.JComboBox;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.awt.event.ActionEvent;

public class NuovoCorsoDialog extends JDialog {

    private static final long serialVersionUID = 1L;
    private Controller theController;
    private JPanel contentPane;
    private JTextField titoloCorsoTF;
    private JTextField frequenzaCorsoTF;
    private JTextField numLezioniTF;
    private JTextField annoTF;
    private JTextField dataInizioTF;
    private JLabel titoloCorsoLbl;
    private JLabel frequenzaCorsoLbl;
    private JLabel numLezioniLbl;
    private JLabel annoLbl;
    private JLabel dataInizioLbl;
    private JLabel topicLbl;
    private JComboBox topicCB;
    private JButton homepageBtn;
    private JButton creaCorsoBtn;

    /**
     * Create the dialog.
     */
    public NuovoCorsoDialog(java.awt.Frame owner, Controller c) {
        super(owner, "Nuovo Corso", true);
        theController = c;
        setResizable(true);
        setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
        setSize(750, 500);
        setLocationRelativeTo(owner);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

        setContentPane(contentPane);
        contentPane.setLayout(new MigLayout("", "[grow][150][150][200][150][150][grow]", "[grow][50][50][50][50][50][50][50][grow]"));

        titoloCorsoTF = new JTextField();
        contentPane.add(titoloCorsoTF, "cell 3 1,growx");
        titoloCorsoTF.setColumns(10);

        titoloCorsoLbl = new JLabel("Titolo");
        contentPane.add(titoloCorsoLbl, "cell 4 1");

        frequenzaCorsoTF = new JTextField();
        contentPane.add(frequenzaCorsoTF, "cell 3 2,growx");
        frequenzaCorsoTF.setColumns(10);

        frequenzaCorsoLbl = new JLabel("Frequenza");
        contentPane.add(frequenzaCorsoLbl, "cell 4 2");

        numLezioniTF = new JTextField();
        contentPane.add(numLezioniTF, "cell 3 3,growx");
        numLezioniTF.setColumns(10);

        numLezioniLbl = new JLabel("N° di lezioni");
        contentPane.add(numLezioniLbl, "cell 4 3");

        annoTF = new JTextField();
        contentPane.add(annoTF, "cell 3 4,growx");
        annoTF.setColumns(10);

        annoLbl = new JLabel("Anno");
        contentPane.add(annoLbl, "cell 4 4");

        dataInizioTF = new JTextField();
        contentPane.add(dataInizioTF, "cell 3 5,growx");
        dataInizioTF.setColumns(10);

        dataInizioLbl = new JLabel("Data di inizio");
        contentPane.add(dataInizioLbl, "cell 4 5");

        topicCB = new JComboBox();
        ArrayList<String> topic = theController.getTopicFromDB();
        for (String t : topic) {
			topicCB.addItem(t);
		}
        contentPane.add(topicCB, "cell 3 6,growx");

        topicLbl = new JLabel("Topic");
        contentPane.add(topicLbl, "cell 4 6");

        creaCorsoBtn = new JButton("Crea corso");
        creaCorsoBtn.addActionListener(new ActionListener() {
        	public void actionPerformed(ActionEvent e) {
        		theController.creaNuovoCorso(titoloCorsoTF.getText(), frequenzaCorsoTF.getText(), Integer.parseInt(numLezioniTF.getText()), Integer.parseInt(annoTF.getText()), dataInizioTF.getText() , (String) topicCB.getSelectedItem(),  NuovoCorsoDialog.this);
        	}
        });
        contentPane.add(creaCorsoBtn, "cell 3 7,alignx center,aligny center");

        homepageBtn = new JButton("Torna alla Homepage");
        homepageBtn.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                theController.tornaHomepageFromCreaCorso(NuovoCorsoDialog.this);
            }
        });
        contentPane.add(homepageBtn, "cell 1 8,alignx center");
    }
    
}
