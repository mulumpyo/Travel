document.addEventListener('DOMContentLoaded', function() {
    const faqButtons = document.querySelectorAll('.faq-btn');

    faqButtons.forEach(button => {
        button.addEventListener('click', function() {
            const questionRow = this.closest('tr');
            const answerRow = questionRow.nextElementSibling;
            const icon = this.querySelector('i');

            // 버튼에 'active' 클래스 토글
            this.classList.toggle('active');

            // 답변 행의 display 속성을 토글
            if (answerRow.style.display === 'none' || answerRow.style.display === '') {
                answerRow.style.display = 'table-row';
                icon.classList.remove('fa-plus');
                icon.classList.add('fa-minus');
            } else {
                answerRow.style.display = 'none';
                icon.classList.remove('fa-minus');
                icon.classList.add('fa-plus');
            }
        });
    });
});