package boundary;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import net.miginfocom.swing.MigLayout;

import control.Controller;
import javax.swing.JLabel;
import java.awt.Font;
import java.awt.Image;
import java.awt.Color;
import javax.swing.SwingConstants;
import javax.swing.JScrollPane;
import java.awt.Component;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;
import entity.Notifica;
import java.util.List;

import javax.swing.AbstractAction;
import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JTextArea;
import javax.swing.KeyStroke;
import javax.swing.event.ListSelectionListener;
import javax.swing.event.ListSelectionEvent;
import java.awt.Dimension;
import java.util.Collections;

public class NotificheFrame extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private Controller theController;
	private JList<String> listaDelleNotifiche;
	List<Notifica> notifiche;

	
	public NotificheFrame(Controller c) {
		setTitle("Notifiche");
		theController = c;
		setVisible(false);
		setResizable(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(900, 600);
		setMinimumSize(getSize());
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(255, 255, 255));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		CaricaIcona();

		setContentPane(contentPane);
		contentPane.setLayout(new MigLayout("", "[300px:n:1100px,grow][50px][465px:n:1300px,grow]", "[50px][50px][grow][grow][40px]"));
		
		JLabel lblTitolo = new JLabel("Notifiche");
		lblTitolo.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitolo.setForeground(new Color(26, 95, 180));
		lblTitolo.setFont(lblTitolo.getFont().deriveFont(24f));
		contentPane.add(lblTitolo, "cell 0 0 3 1,alignx center,aligny center");
		
		JScrollPane scrollPaneTesto = new JScrollPane();
		contentPane.add(scrollPaneTesto, "cell 2 1 1 3,grow");
		
		JTextArea txtTestoNotifiche = new JTextArea();
		txtTestoNotifiche.setLineWrap(true);
		txtTestoNotifiche.setWrapStyleWord(true);
		txtTestoNotifiche.setEditable(false);
		scrollPaneTesto.setViewportView(txtTestoNotifiche);
		txtTestoNotifiche.setText("Il testo della notifica selezionata apparirà qui");
		txtTestoNotifiche.setBackground(new Color(246, 245, 244));
		
		JButton btnTornaAllaHome = new JButton("Torna alla Homepage");
		btnTornaAllaHome.setOpaque(true);
		btnTornaAllaHome.setForeground(Color.WHITE);
		btnTornaAllaHome.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnTornaAllaHome.setBackground(new Color(25, 95, 180));
		btnTornaAllaHome.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				theController.TornaHomepageFromNotifiche();
			}
		});
		
		JScrollPane scrollNotifiche = new JScrollPane();
		contentPane.add(scrollNotifiche, "cell 0 1 1 3,grow");
		
		notifiche = theController.getNotificheChef();
		Collections.reverse(notifiche);// Serve ad invertire l'ordine di rappresentazione delle notifiche (la più recente in cima)
		
		DefaultListModel<String> listModel = new DefaultListModel<>();
		listModel = theController.inizializzaListaNotifiche(notifiche, listModel);
		
		listaDelleNotifiche = new JList<>(listModel);
		scrollNotifiche.setViewportView(listaDelleNotifiche);
		listaDelleNotifiche.setBackground(new Color(246, 245, 244));
		listaDelleNotifiche.setModel(listModel);
		listaDelleNotifiche.addListSelectionListener(new ListSelectionListener() {
			public void valueChanged(ListSelectionEvent e) {
				txtTestoNotifiche.setText(theController.mostraTestoNotifica(notifiche, listaDelleNotifiche.getSelectedIndex()));
				
			}
		});

		contentPane.add(btnTornaAllaHome, "cell 0 4,growy");
		
		JButton btnInviaNotifica = new JButton("Invia Notifica");
		btnInviaNotifica.setOpaque(true);
		btnInviaNotifica.setBorder(new SoftBevelBorder(BevelBorder.LOWERED, null, null, null, null));
		btnInviaNotifica.setBackground(new Color(98, 160, 234));
		btnInviaNotifica.setForeground(new Color(255, 255, 255));
		contentPane.add(btnInviaNotifica, "cell 2 4,alignx right,growy");
		btnInviaNotifica.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				theController.ApriInvioNotifica();
			}
		});
		
		// Chiudi la finestra premendo ESC
		getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(KeyStroke.getKeyStroke("ESCAPE"), "goBack");
		getRootPane().getActionMap().put("goBack", new AbstractAction() {
		    @Override
		    public void actionPerformed(ActionEvent e) {
		        theController.TornaHomepageFromNotifiche();
		    }
	    });
		
	}
	
	// Metodo per mostrare un messaggio d'errore
	public void showErrorMessage(String message) {
		JOptionPane.showMessageDialog(this, message, "Errore di connessione", JOptionPane.ERROR_MESSAGE);
	}
	
	//Metodo per aggiornare la lista delle notifiche
	public void refreshListaNotifiche(List<Notifica> notifiche, DefaultListModel<String> listModel) {
	    this.notifiche = notifiche; 
	    Collections.reverse(this.notifiche); // Per mantenere l'ordine con la notifica più recente in cima
	    listModel = theController.inizializzaListaNotifiche(notifiche, listModel);
	    listaDelleNotifiche.setModel(listModel);
	    listaDelleNotifiche.clearSelection(); 
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
