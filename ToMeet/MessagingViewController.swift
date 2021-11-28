//
//  MessagingViewController.swift
//  ToMeet
//
//  Created by Allysa Yap on 11/27/21.
//

import UIKit
import Parse
import MessageKit
import InputBarAccessoryView

struct Sender: SenderType {
    var photoURL: String
    var senderId: String
    var displayName: String
}

struct Message: MessageType {
    var sender: SenderType
    var sentDate: Date
    var messageId: String
    var kind: MessageKind
    
}



class MessagingViewController: MessagesViewController {

    
    
    var messages: [Message] = []
    var sender: Sender!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        

        sender = Sender(photoURL: "", senderId: "1", displayName: "Jane")
                          
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
        messageInputBar.delegate = self

        
        
    }

}

extension MessagingViewController: MessagesDataSource {
    func currentSender() -> SenderType {
        return Sender(photoURL: "", senderId: "", displayName: "")
      }
    
    func numberOfSections(
        in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
  }
  
    func messageForItem(
        at indexPath: IndexPath,
        in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
  }
  
    func messageTopLabelHeight(
        for message: MessageType,
        at indexPath: IndexPath,
        in messagesCollectionView: MessagesCollectionView) -> CGFloat {
        
        return 12
  }
  
  func messageTopLabelAttributedText(
        for message: MessageType,
        at indexPath: IndexPath) -> NSAttributedString? {
    
        return NSAttributedString(
          string: message.sender.displayName,
          attributes: [.font: UIFont.systemFont(ofSize: 12)])
  }
}


extension MessagingViewController: MessagesLayoutDelegate {
    func heightForLocation(message: MessageType,
        at indexPath: IndexPath,
        with maxWidth: CGFloat,
        in messagesCollectionView: MessagesCollectionView) -> CGFloat {
        
        return 0
  }
}

extension MessagingViewController: MessagesDisplayDelegate {
    func configureAvatarView(
        _ avatarView: AvatarView,
        for message: MessageType,
        at indexPath: IndexPath,
        in messagesCollectionView: MessagesCollectionView) {
        
        let message = messages[indexPath.section]
  }
}

extension MessagingViewController: InputBarAccessoryViewDelegate {
    func messageInputBar(_ inputBar: InputBarAccessoryView,didPressSendButtonWith text: String) {
        let newMessage = Message(sender: "" as! SenderType, sentDate: Date(), messageId: "", kind: .text("")
        )
      
        messages.append(newMessage)
        inputBar.inputTextView.text = ""
        messagesCollectionView.reloadData()
        messagesCollectionView.scrollToBottom(animated: true)
  }
}


