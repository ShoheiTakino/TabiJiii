window.addEventListener('load',function(deleteCheck){
  const deleteConfirmation = document.getElementById("delete-confirmation")
    deleteConfirmation.addEventListener("click", ( ) => {
      const deletePopup = window.confirm('アカウントを削除してもよろしいですか?')
      if (!deletePopup) {
        alert("削除をキャンセルしました");
      };
    });
});
