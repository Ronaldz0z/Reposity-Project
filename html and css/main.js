// const nama = 'Ronald Alexander'
// let hobby = ' Baca Komik'
// let alamat ='JL.lombok pink'
// let kelas = 2
// let sekolah = 'SMK MUHAMMADIYAH ! YOGYAKArtA'

// console.log(`nama saya ${nama} Saya kelas : ${kelas} yang berada di sekolah ${sekolah} rumah saya beralamat di ${alamat} hobby saya :${hobby}`)

// let nama = prompt('Masukin Nama mu Dong')
// let kelas = prompt(`${nama} kelas berapa?`)
// let seko;ah = prompt(`${nama} sekolah mana?`)
// let alamat = prompt(`${nama} rumah mu mana`)
// let hobby = prompt(` terkahir nih hobby mu apa?`)
// alert(`makasih ${nama} dah ngisi`)

// let nama = prompt('Masukkan nama mu')
// let usia = prompt(`${nama} tolong masukkan usia mu`)

// if (usia <= 20 ){
//     alert(`Umur anda ${usia} kurang dari/ sama dengan 20 maka saat ini anda tergolong remaja `);
// } 
// else if (usia <= 30 ){
//    alert(`Umur anda ${usia} kurang dari/ sama dengan 30 maka anda saat ini tergolong dewasa`);
// }
// else  {
//     alert('ERROR| COBA ULANG');
// }











// document.title ='Belajar Js'
// const body = document.body
// body.append('Halooo pren')

// const h1 = document.createElement('h1')
// h1.textContent = 'SMK MUHAMMADIYAH 1 YK'4
// body.append(h1)

// const h2 = document.createElement('h2')
// h2.textContent = 'terima kasih sudah mengunjung kami'
// body.append(h2)

// const h3 = document.createElement('h3')
// h3.innerHTML = '<marquee>haloooo cuy</marquee>'
// body.append(h3)

// const btn2 = document.getElementById('btn2')
// btn2.style.boreder = 'none'
// btn2.style.padding = '8px'
// btn2.style.background = 'blue'
// btn2.style.fontSize = '6px'


// function gantiwarna(){
//     btn2.style.background = 'cyan'
//     btn2.textContent ='SUDAH DIKLIK'
// }

function hapusdata() {
    var userConfirmation = confirm("Apakah Anda yakin menghapus data?");
    if (userConfirmation) {
        alert('Data Anda terhapus');
        window.location.href = "indez.html";
    } else {
        alert('Data Anda tidak jadi dihapus');
    }
}


