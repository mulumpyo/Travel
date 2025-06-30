Date.prototype.format = function () {
  const yyyy = this.getFullYear();
  const MM = ('0' + (this.getMonth() + 1)).slice(-2);
  const dd = ('0' + this.getDate()).slice(-2);
  return `${yyyy}.${MM}.${dd}`;
};

const searchInput = document.getElementById("search");
const searchBtn = document.getElementById("btn");

function performSearch() {
  const keyword = searchInput.value.trim();
  if (!keyword) return;

  fetch("qnasearch.do?keyword=" + encodeURIComponent(keyword))
    .then((res) => res.json())
    .then((result) => {
      const tbody = document.querySelector("#target tbody");
      tbody.innerHTML = "";

      for (let qna of result) {
        const dateObj = new Date(qna.qDate);
        const formattedDate = dateObj.format();

        const row = document.createElement("tr");
        row.innerHTML = `
          <td>${qna.qCode}</td>
          <td>${qna.type}</td>
          <td><a href="myqna.do?qCode=${qna.qCode}">${qna.title}</a></td>
          <td>${formattedDate}</td>
          ${
            qna.status != 1
              ? `<td><a href="answer.do">답변완료</a></td>`
              : `<td><a href="qnalist.do">답변대기</a></td>`
          }
          <td><button class="btn-delete" type="button">삭제</button></td>
        `;
        tbody.appendChild(row);
      }
    })
    .catch((error) => {
      console.error("검색 중 오류 발생:", error);
    });
}

searchBtn.addEventListener("click", performSearch);


searchInput.addEventListener("keydown", (e) => {
  if (e.key === "Enter") {
    performSearch();
  }
});

document.querySelector("#target tbody").addEventListener("click", function (e) {
  if (e.target.classList.contains("btn-delete")) {
    const tr = e.target.closest("tr");
    const qCode = tr.querySelector("td").innerText;
    const confirmDelete = confirm("삭제하시겠습니까?");
    if (confirmDelete) {
      fetch("removeQna.do?qCode=" + qCode)
        .then(() => {
          tr.remove();
        })
        .catch((err) => {
          console.error("삭제 실패:", err);
        });
    }
  }
});
