document.addEventListener('DOMContentLoaded', () => {
  // ヘッダー画像のプレビュー
  const headerImageInput = document.querySelector('input[type="file"][name="user[header_image]"]');
  const headerImagePreview = document.querySelector('.header-preview');

  if (headerImageInput && headerImagePreview) {
    headerImageInput.addEventListener('change', (e) => {
      const file = e.target.files[0];
      if (file) {
        const reader = new FileReader();
        
        reader.onload = (e) => {
          headerImagePreview.style.backgroundImage = `url('${e.target.result}')`;
        };
        
        reader.readAsDataURL(file);
      }
    });
  }

  // プロフィール画像のプレビュー
  const avatarInput = document.querySelector('input[type="file"][name="user[avatar]"]');
  const avatarPreview = document.querySelector('.avatar-preview');

  if (avatarInput && avatarPreview) {
    avatarInput.addEventListener('change', (e) => {
      const file = e.target.files[0];
      if (file) {
        const reader = new FileReader();
        
        reader.onload = (e) => {
          avatarPreview.src = e.target.result;
        };
        
        reader.readAsDataURL(file);
      }
    });
  }
}); 
