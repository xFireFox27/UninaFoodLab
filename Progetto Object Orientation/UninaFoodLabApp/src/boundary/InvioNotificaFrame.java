package boundary;

import java.awt.BorderLayout;
import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import net.miginfocom.swing.MigLayout;
import javax.swing.JLabel;
import java.awt.Color;
import javax.swing.JRadioButton;
import javax.swing.ButtonGroup;
import javax.swing.JComboBox;
import javax.swing.JTextField;
import javax.swing.JTextArea;
import javax.swing.DefaultListCellRenderer;
import java.awt.Component;
import javax.swing.JList;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import java.util.List;

import entity.Corso;
import control.Controller;


public class InvioNotificaFrame extends JDialog {

	private static final long serialVersionUID = 1L;
	private final JPanel contentPanel = new JPanel();
	private JTextField fieldOggetto;
	private ButtonGroup selezioneCorsiGroup = new ButtonGroup();
	private Controller theController;
	private JComboBox<Corso> cbSelezioneCorso;

	public InvioNotificaFrame(Controller c) {
		setModal(true);
		setAlwaysOnTop(true);
		theController = c;
		setVisible(false);
		setResizable(false);
		setSize(500, 400);
		setLocationRelativeTo(null);
		getContentPane().setLayout(new BorderLayout());
		contentPanel.setBorder(new EmptyBorder(5, 5, 5, 5));
		getContentPane().add(contentPanel, BorderLayout.CENTER);
		contentPanel.setLayout(new MigLayout("", "[80px][grow]", "[grow][][][][][][grow][][][]"));
		{
			JPanel panelSelezioneCorsi = new JPanel();
			contentPanel.add(panelSelezioneCorsi, "cell 0 0 2 3,grow");
			panelSelezioneCorsi.setLayout(new MigLayout("", "[80px][grow]", "[grow][]"));
			{
				JLabel lblInvio = new JLabel("Invio:");
				lblInvio.setForeground(new Color(25, 95, 180));
				panelSelezioneCorsi.add(lblInvio, "cell 0 0,alignx right");
			}
			{
				JPanel panelRButtons = new JPanel();
				panelSelezioneCorsi.add(panelRButtons, "cell 1 0,growx,aligny center");
				panelRButtons.setLayout(new MigLayout("", "[106px][140px]", "[23px]"));
				{
					JRadioButton rdbtnTuttiICorsi = new JRadioButton("Tutti i Corsi");
					rdbtnTuttiICorsi.setForeground(new Color(98, 160, 233));
					panelRButtons.add(rdbtnTuttiICorsi, "cell 0 0,alignx left,aligny top");
					selezioneCorsiGroup.add(rdbtnTuttiICorsi);
				}
				{
					JRadioButton rdbtnSelezioneCorso = new JRadioButton("Selezione Corso");
					rdbtnSelezioneCorso.setForeground(new Color(98, 160, 233));
					panelRButtons.add(rdbtnSelezioneCorso, "cell 1 0,alignx left,aligny top");
					selezioneCorsiGroup.add(rdbtnSelezioneCorso);
				}
			}
			{
				JLabel lblSelezionecorso = new JLabel("SelezioneCorso:");
				lblSelezionecorso.setForeground(new Color(25, 95, 180));
				panelSelezioneCorsi.add(lblSelezionecorso, "cell 0 1,alignx trailing");
			}
			{
				JComboBox<Corso> cbSelezioneCorso;
				List<Corso> corsi = theController.getCorsiChef();
				cbSelezioneCorso = theController.inizializzaComboBoxCorsi(corsi);
				cbSelezioneCorso.setForeground(new Color(98, 160, 233));
				
				cbSelezioneCorso.setRenderer(new DefaultListCellRenderer() {
				    @Override
				    public Component getListCellRendererComponent(JList<?> list, Object value, int index, boolean isSelected, boolean cellHasFocus) {
				        super.getListCellRendererComponent(list, value, index, isSelected, cellHasFocus);
				        if (value instanceof Corso) {
				            Corso corso = (Corso) value;
				            setText(corso.getTitolo() + " - " + corso.getAnnoFrequenza());
				        }
				        return this;
				    }
				});
				panelSelezioneCorsi.add(cbSelezioneCorso, "cell 1 1,growx");
			}
		}
		{
			JLabel lblOggetto = new JLabel("Oggetto:");
			lblOggetto.setForeground(new Color(25, 95, 180));
			contentPanel.add(lblOggetto, "cell 0 4,alignx right");
		}
		{
			fieldOggetto = new JTextField();
			contentPanel.add(fieldOggetto, "cell 1 4,growx");
			fieldOggetto.setColumns(10);
		}
		{
			JLabel lblTesto = new JLabel("Testo:");
			lblTesto.setForeground(new Color(25, 95, 180));
			contentPanel.add(lblTesto, "cell 0 6,alignx right");
		}
		{
			JTextArea textAreaMessaggio = new JTextArea();
			contentPanel.add(textAreaMessaggio, "cell 1 6 1 4,grow");
		}
		{
			JPanel buttonPane = new JPanel();
			buttonPane.setLayout(new FlowLayout(FlowLayout.RIGHT));
			getContentPane().add(buttonPane, BorderLayout.SOUTH);
			{
				JButton btnSalva = new JButton("Salva");
				btnSalva.setActionCommand("OK");
				buttonPane.add(btnSalva);
				getRootPane().setDefaultButton(btnSalva);
			}
			{
				JButton btnAnnulla = new JButton("Annulla");
				btnAnnulla.setActionCommand("Cancel");
				buttonPane.add(btnAnnulla);
				btnAnnulla.addActionListener(new ActionListener(){
					public void actionPerformed(ActionEvent e) {
						dispose();
					}
				});
			}
		}
	}

}
