package boundary;

import java.awt.BorderLayout;
import java.awt.Image;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import net.miginfocom.swing.MigLayout;
import javax.swing.JLabel;
import java.awt.Color;
import javax.swing.JRadioButton;
import javax.swing.AbstractAction;
import javax.swing.ButtonGroup;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JTextField;
import javax.swing.KeyStroke;
import javax.swing.JTextArea;
import javax.swing.DefaultListCellRenderer;
import javax.swing.ImageIcon;
import java.awt.Component;
import javax.swing.JList;
import javax.swing.JOptionPane;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.ActionEvent;
import java.util.List;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;
import javax.swing.JScrollPane;

import entity.Corso;
import control.Controller;

public class InvioNotificaFrame extends JDialog {

	private static final long serialVersionUID = 1L;
	private final JPanel contentPanel = new JPanel();
	private JTextField fieldOggetto;
	private ButtonGroup selezioneCorsiGroup = new ButtonGroup();
	private Controller theController;
	private JComboBox<Corso> cbSelezioneCorso;
	private JTextArea textAreaMessaggio = new JTextArea();

	public InvioNotificaFrame(Controller c) {
		theController = c;
		setTitle("Nuova notifica");
		setModal(true);
		setAlwaysOnTop(true);
		setVisible(false);
		setResizable(false);
		setSize(600, 500);
		setLocationRelativeTo(null);
		CaricaIcona();
		getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(
            KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), "cancelAction");
        getRootPane().getActionMap().put("cancelAction", new AbstractAction() {
            private static final long serialVersionUID = 1L;
            @Override
            public void actionPerformed(ActionEvent e) {
                dispose();
            }
        });
		getContentPane().setLayout(new BorderLayout());
		contentPanel.setBorder(new EmptyBorder(5, 5, 5, 5));
		getContentPane().add(contentPanel, BorderLayout.CENTER);
		contentPanel.setLayout(new MigLayout("", "[80px][grow]", "[grow][][][][][][grow][][][]")); {
			JPanel panelSelezioneCorsi = new JPanel();
			contentPanel.add(panelSelezioneCorsi, "cell 0 0 2 3,grow");
			panelSelezioneCorsi.setLayout(new MigLayout("", "[80px][grow]", "[grow][]")); {
				JLabel lblInvio = new JLabel("Invio:");
				lblInvio.setForeground(new Color(25, 95, 180));
				panelSelezioneCorsi.add(lblInvio, "cell 0 0,alignx right");
			} {
				JLabel lblSelezionecorso = new JLabel("Selezione Corso:");
				lblSelezionecorso.setForeground(new Color(25, 95, 180));
				panelSelezioneCorsi.add(lblSelezionecorso, "cell 0 1,alignx trailing");
			} {
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
				cbSelezioneCorso.setEnabled(false);
			} {
				JPanel panelRButtons = new JPanel();
				panelSelezioneCorsi.add(panelRButtons, "cell 1 0,growx,aligny center");
				panelRButtons.setLayout(new MigLayout("", "[106px][140px]", "[23px]")); {
					JRadioButton rdbtnTuttiICorsi = new JRadioButton("Tutti i Corsi");
					rdbtnTuttiICorsi.setForeground(new Color(98, 160, 233));
					panelRButtons.add(rdbtnTuttiICorsi, "cell 0 0,alignx left,aligny top");
					selezioneCorsiGroup.add(rdbtnTuttiICorsi);
					rdbtnTuttiICorsi.setSelected(true);
					rdbtnTuttiICorsi.addActionListener(new ActionListener() {
						public void actionPerformed(ActionEvent e) {
							cbSelezioneCorso.setEnabled(false);
						}
					});
				} {
					JRadioButton rdbtnSelezioneCorso = new JRadioButton("Selezione Corso");
					rdbtnSelezioneCorso.setForeground(new Color(98, 160, 233));
					panelRButtons.add(rdbtnSelezioneCorso, "cell 1 0,alignx left,aligny top");
					selezioneCorsiGroup.add(rdbtnSelezioneCorso);
					rdbtnSelezioneCorso.addActionListener(new ActionListener(){
						public void actionPerformed(ActionEvent e) {
							cbSelezioneCorso.setEnabled(true);
						}
					});
				}
			}
		} {
			JLabel lblOggetto = new JLabel("Oggetto:");
			lblOggetto.setForeground(new Color(25, 95, 180));
			contentPanel.add(lblOggetto, "cell 0 3,alignx right");
		} {
			fieldOggetto = new JTextField();
			contentPanel.add(fieldOggetto, "cell 1 3,growx");
			fieldOggetto.setColumns(10);
		} {
			JLabel lblTesto = new JLabel("Testo:");
			lblTesto.setForeground(new Color(25, 95, 180));
			contentPanel.add(lblTesto, "cell 0 5,alignx right");
		} {
			JScrollPane scrollPane = new JScrollPane();
			contentPanel.add(scrollPane, "cell 1 5 1 5,grow"); {
			   scrollPane.setViewportView(textAreaMessaggio);
			   textAreaMessaggio.setLineWrap(true);
			   textAreaMessaggio.setWrapStyleWord(true);
			}
		} {
			JPanel buttonPane = new JPanel();
			getContentPane().add(buttonPane, BorderLayout.SOUTH);
			buttonPane.setLayout(new MigLayout("", "[][][][][][][][][][][][grow][grow]", "[30px]")); {
				JButton btnInvia = new JButton("Invia");
				btnInvia.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
				btnInvia.setBackground(new Color(98, 160, 233));
				btnInvia.setForeground(new Color(255, 255, 255));
				btnInvia.setActionCommand("OK");
				buttonPane.add(btnInvia, "cell 11 0,grow");
				getRootPane().setDefaultButton(btnInvia);
				btnInvia.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent e) {
						inviaNotifica();
					}
				});
			} {
				JButton btnAnnulla = new JButton("Annulla");
				btnAnnulla.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
				btnAnnulla.setForeground(new Color(255, 255, 255));
				btnAnnulla.setBackground(new Color(220, 19, 60));
				btnAnnulla.setActionCommand("Cancel");
				buttonPane.add(btnAnnulla, "cell 12 0,grow");
				btnAnnulla.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent e) {
						dispose();
					}
				});
			}
		}
	}
	
	private void inviaNotifica() {
		String oggetto = fieldOggetto.getText();
		String testo = textAreaMessaggio.getText();
		if(oggetto.isEmpty() || testo.isEmpty()) {
			showErrorMessage("Compilare tutti i campi.");
		} else {
			// L'action command di un JRadioButton è il suo testo di default
			if("Tutti i Corsi".equals(selezioneCorsiGroup.getSelection().getActionCommand())) {
				theController.inviaNotificaTuttiCorsi(oggetto, testo);
			}
			else {
				Corso corsoSelezionato = (Corso) cbSelezioneCorso.getSelectedItem();
				if(corsoSelezionato == null) {
					showErrorMessage("Selezionare un corso");
				} else {
					theController.inviaNotificaUnCorso(oggetto, testo, corsoSelezionato);
				}
			}
		}
	}
	
	public void showErrorMessage(String message) {
		JOptionPane.showMessageDialog(this, message, "Errore in Invio", JOptionPane.ERROR_MESSAGE);
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
