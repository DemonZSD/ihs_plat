<!DOCTYPE HTML>
    <html lang="en-US">
    <head>
    <meta charset="UTF-8">
    <style type="text/css">
    body{
    background: #dcdcdc;
    }
    .box{
    width: 550px;
    text-align: center;
    line-height: 46px;
    margin:40px auto;
    }
    .btn{
    position: relative;
    font-weight:bold;
    width: 124px;
    height: 44px;
    border-radius: 3px;
    border: 1px solid #c0c0c0;
    margin:0 50px 40px 0;
    }
    .btn:nth-child(3n){
    margin-right: 0;
    }
    .btn:nth-child(1){
    color: #8c3e4a;
    border-color: #ed7989;
    box-shadow:inset 0 1px 0 #f9a1b1,0 1px 0 rgba(0,0,0,.2);
    background:-webkit-linear-gradient(top,#f78297,#f56c7e);
    background:-moz-linear-gradient(top,#f78297,#f56c7e);
    background:-o-linear-gradient(top,#f78297,#f56c7e);
    background:-ms-linear-gradient(top,#f78297,#f56c7e);
    background:linear-gradient(top,#f78297,#f56c7e);
    }
    .btn:nth-child(1):hover{
    background:-webkit-linear-gradient(top,#fbacbb,#f4798f);
    background:-moz-linear-gradient(top,#fbacbb,#f4798f);
    background:-o-linear-gradient(top,#fbacbb,#f4798f);
    background:-ms-linear-gradient(top,#fbacbb,#f4798f);
    background:linear-gradient(top,#fbacbb,#f4798f);
    }
    .btn:nth-child(1):active{
    top:4px;
    box-shadow:inset 0 1px 3px #aa2c3d;
    background:-webkit-linear-gradient(top,#e15c6d,#e15c6d);
    background:-moz-linear-gradient(top,#e15c6d,#e15c6d);
    background:-o-linear-gradient(top,#e15c6d,#e15c6d);
    background:-ms-linear-gradient(top,#e15c6d,#e15c6d);
    background:linear-gradient(top,#e15c6d,#e15c6d);
    }
/*     .btn:nth-child(2){ */
/*     color: #a67ea0; */
/*     border-color: #e6addf; */
/*     box-shadow:inset 0 1px 0 #ffdcfb,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#ffd0f9,#ffc2f7); */
/*     background:-moz-linear-gradient(top,#ffd0f9,#ffc2f7); */
/*     background:-o-linear-gradient(top,#ffd0f9,#ffc2f7); */
/*     background:-ms-linear-gradient(top,#ffd0f9,#ffc2f7); */
/*     background:linear-gradient(top,#ffd0f9,#ffc2f7); */
/*     } */
/*     .btn:nth-child(2):hover{ */
/*     background:-webkit-linear-gradient(top,#ffdefb,#fdc7f6); */
/*     background:-moz-linear-gradient(top,#ffdefb,#fdc7f6); */
/*     background:-o-linear-gradient(top,#ffdefb,#ffc2f7); */
/*     background:-ms-linear-gradient(top,#ffdefb,#ffc2f7); */
/*     background:linear-gradient(top,#ffdefb,#ffc2f7); */
/*     } */
/*     .btn:nth-child(2):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #be27aa; */
/*     background:-webkit-linear-gradient(top,#f3b0ea,#f3b0ea); */
/*     background:-moz-linear-gradient(top,#f3b0ea,#f3b0ea); */
/*     background:-o-linear-gradient(top,#f3b0ea,#f3b0ea); */
/*     background:-ms-linear-gradient(top,#f3b0ea,#f3b0ea); */
/*     background:linear-gradient(top,#f3b0ea,#f3b0ea); */
/*     } */
/*     .btn:nth-child(3){ */
/*     color: #923e3e; */
/*     border-color: #b74545; */
/*     box-shadow:inset 0 1px 0 #fe8585,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#fd5c5c,#fd4a4a); */
/*     background:-moz-linear-gradient(top,#fd5c5c,#fd4a4a); */
/*     background:-ms-linear-gradient(top,#fd5c5c,#fd4a4a); */
/*     background:-o-linear-gradient(top,#fd5c5c,#fd4a4a); */
/*     background:linear-gradient(top,#fd5c5c,#fd4a4a); */
/*     } */
/*     .btn:nth-child(3):hover{ */
/*     background:-webkit-linear-gradient(top,#fd8d8d,#ff6161); */
/*     background:-moz-linear-gradient(top,#fd8d8d,#ff6161); */
/*     background:-o-linear-gradient(top,#fd8d8d,#ff6161); */
/*     background:-ms-linear-gradient(top,#fd8d8d,#ff6161); */
/*     background:linear-gradient(top,#fd8d8d,#ff6161); */
/*     } */
/*     .btn:nth-child(3):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #a31818; */
/*     background:-webkit-linear-gradient(top,#d43535,#d43535); */
/*     background:-moz-linear-gradient(top,#d43535,#d43535); */
/*     background:-ms-linear-gradient(top,#d43535,#d43535); */
/*     background:-o-linear-gradient(top,#d43535,#d43535); */
/*     background:linear-gradient(top,#d43535,#d43535); */
/*     } */
/*     .btn:nth-child(4){ */
/*     color: #7f7f7f; */
/*     border-color: #c8c8c8; */
/*     box-shadow:inset 0 1px 0 #e0e0e0,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#d7d7d7,#b7b7b7); */
/*     background:-moz-linear-gradient(top,#d7d7d7,#b7b7b7); */
/*     background:-o-linear-gradient(top,#d7d7d7,#b7b7b7); */
/*     background:-ms-linear-gradient(top,#d7d7d7,#b7b7b7); */
/*     background:linear-gradient(top,#d7d7d7,#b7b7b7); */
/*     } */
/*     .btn:nth-child(4):hover{ */
/*     background:-webkit-linear-gradient(top,#e3e3e3,#c2c0c0); */
/*     background:-moz-linear-gradient(top,#e3e3e3,#c2c0c0); */
/*     background:-o-linear-gradient(top,#e3e3e3,#c2c0c0); */
/*     background:-ms-linear-gradient(top,#e3e3e3,#c2c0c0); */
/*     background:linear-gradient(top,#e3e3e3,#c2c0c0); */
/*     } */
/*     .btn:nth-child(4):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #555; */
/*     background:-webkit-linear-gradient(top,#a2a2a2,#a2a2a2); */
/*     background:-moz-linear-gradient(top,#a2a2a2,#a2a2a2); */
/*     background:-ms-linear-gradient(top,#a2a2a2,#a2a2a2); */
/*     background:-o-linear-gradient(top,#a2a2a2,#a2a2a2); */
/*     background:linear-gradient(top,#a2a2a2,#a2a2a2); */
/*     } */
/*     .btn:nth-child(5){ */
/*     color: #3295a4; */
/*     border-color: #62d4e5; */
/*     box-shadow:inset 0 1px 0 #92f3fe,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#71effe,#4be2fe); */
/*     background:-moz-linear-gradient(top,#71effe,#4be2fe); */
/*     background:-o-linear-gradient(top,#71effe,#4be2fe); */
/*     background:-ms-linear-gradient(top,#71effe,#4be2fe); */
/*     background:linear-gradient(top,#71effe,#4be2fe); */
/*     } */
/*     .btn:nth-child(5):hover{ */
/*     background:-webkit-linear-gradient(top,#9df5ff,#6ce6fc); */
/*     background:-moz-linear-gradient(top,#9df5ff,#6ce6fc); */
/*     background:-o-linear-gradient(top,#9df5ff,#6ce6fc); */
/*     background:-ms-linear-gradient(top,#9df5ff,#6ce6fc); */
/*     background:linear-gradient(top,#9df5ff,#6ce6fc); */
/*     } */
/*     .btn:nth-child(5):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #1d8194; */
/*     background:-webkit-linear-gradient(top,#2bbed9,#2bbed9); */
/*     background:-moz-linear-gradient(top,#2bbed9,#2bbed9); */
/*     background:-o-linear-gradient(top,#2bbed9,#2bbed9); */
/*     background:-ms-linear-gradient(top,#2bbed9,#2bbed9); */
/*     background:linear-gradient(top,#2bbed9,#2bbed9); */
/*     } */
/*     .btn:nth-child(6){ */
/*     color: #a9a056; */
/*     border-color: #ddcc52; */
/*     box-shadow:inset 0 1px 0 #fff48f,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#fff16d,#ffe647); */
/*     background:-moz-linear-gradient(top,#fff16d,#ffe647); */
/*     background:-ms-linear-gradient(top,#fff16d,#ffe647); */
/*     background:-o-linear-gradient(top,#fff16d,#ffe647); */
/*     background:linear-gradient(top,#fff16d,#ffe647); */
/*     } */
/*     .btn:nth-child(6):hover{ */
/*     background:-webkit-linear-gradient(top,#fff69f,#ffea61); */
/*     background:-moz-linear-gradient(top,#fff69f,#ffea61); */
/*     background:-o-linear-gradient(top,#fff69f,#ffea61); */
/*     background:-ms-linear-gradient(top,#fff69f,#ffea61); */
/*     background:linear-gradient(top,#fff69f,#ffea61); */
/*     } */
/*     .btn:nth-child(6):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #bbac23; */
/*     background:-webkit-linear-gradient(top,#e2d12c,#e2d12c); */
/*     background:-moz-linear-gradient(top,#e2d12c,#e2d12c); */
/*     background:-o-linear-gradient(top,#e2d12c,#e2d12c); */
/*     background:-ms-linear-gradient(top,#e2d12c,#e2d12c); */
/*     background:linear-gradient(top,#e2d12c,#e2d12c); */
/*     } */
/*     .btn:nth-child(7){ */
/*     color: #8f7031; */
/*     border-color: #f1c462; */
/*     box-shadow:inset 0 1px 0 #fee392,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#feda71,#f6be53); */
/*     background:-moz-linear-gradient(top,#feda71,#f6be53); */
/*     background:-ms-linear-gradient(top,#feda71,#f6be53); */
/*     background:-o-linear-gradient(top,#feda71,#f6be53); */
/*     background:linear-gradient(top,#feda71,#f6be53); */
/*     } */
/*     .btn:nth-child(7):hover{ */
/*     background:-webkit-linear-gradient(top,#ffe28e,#f6c463); */
/*     background:-moz-linear-gradient(top,#ffe28e,#f6c463); */
/*     background:-ms-linear-gradient(top,#ffe28e,#f6c463); */
/*     background:-o-linear-gradient(top,#ffe28e,#f6c463); */
/*     background:linear-gradient(top,#ffe28e,#f6c463); */
/*     } */
/*     .btn:nth-child(7):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #b78421; */
/*     background:-webkit-linear-gradient(top,#e4ab3d,#e4ab3d); */
/*     background:-moz-linear-gradient(top,#e4ab3d,#e4ab3d); */
/*     background:-o-linear-gradient(top,#e4ab3d,#e4ab3d); */
/*     background:-ms-linear-gradient(top,#e4ab3d,#e4ab3d); */
/*     background:linear-gradient(top,#e4ab3d,#e4ab3d); */
/*     } */
/*     .btn:nth-child(8){ */
/*     color: #678333; */
/*     border-color: #a7c570; */
/*     box-shadow:inset 0 1px 0 #d5e89f,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#cae285,#9cc15c); */
/*     background:-moz-linear-gradient(top,#cae285,#9cc15c); */
/*     background:-ms-linear-gradient(top,#cae285,#9cc15c); */
/*     background:-o-linear-gradient(top,#cae285,#9cc15c); */
/*     background:linear-gradient(top,#cae285,#9cc15c); */
/*     } */
/*     .btn:nth-child(8):hover{ */
/*     background:-webkit-linear-gradient(top,#d8ed9b,#acce70); */
/*     background:-moz-linear-gradient(top,#d8ed9b,#acce70); */
/*     background:-o-linear-gradient(top,#d8ed9b,#acce70); */
/*     background:-ms-linear-gradient(top,#d8ed9b,#acce70); */
/*     background:linear-gradient(top,#d8ed9b,#acce70); */
/*     } */
/*     .btn:nth-child(8):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #5a7d1e; */
/*     background:-webkit-linear-gradient(top,#84ad3e,#84ad3e); */
/*     background:-moz-linear-gradient(top,#84ad3e,#84ad3e); */
/*     background:-ms-linear-gradient(top,#84ad3e,#84ad3e); */
/*     background:-o-linear-gradient(top,#84ad3e,#84ad3e); */
/*     background:linear-gradient(top,#84ad3e,#84ad3e); */
/*     } */
/*     .btn:nth-child(9){ */
/*     color: #2d2d2d; */
/*     border-color: #555555; */
/*     box-shadow:inset 0 1px 0 #7a7a7a,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#595959,#464646); */
/*     background:-moz-linear-gradient(top,#595959,#464646); */
/*     background:-o-linear-gradient(top,#595959,#464646); */
/*     background:-ms-linear-gradient(top,#595959,#464646); */
/*     background:linear-gradient(top,#595959,#464646); */
/*     } */
/*     .btn:nth-child(9):hover{ */
/*     background:-webkit-linear-gradient(top,#7a7a7a,#5d5c5c); */
/*     background:-moz-linear-gradient(top,#7a7a7a,#5d5c5c); */
/*     background:-o-linear-gradient(top,#7a7a7a,#5d5c5c); */
/*     background:-ms-linear-gradient(top,#7a7a7a,#5d5c5c); */
/*     background:linear-gradient(top,#7a7a7a,#5d5c5c); */
/*     } */
/*     .btn:nth-child(9):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #222; */
/*     background:-webkit-linear-gradient(top,#444343,#444343); */
/*     background:-moz-linear-gradient(top,#444343,#444343); */
/*     background:-o-linear-gradient(top,#444343,#444343); */
/*     background:-ms-linear-gradient(top,#444343,#444343); */
/*     background:linear-gradient(top,#444343,#444343); */
/*     } */
/*     .btn:nth-child(10){ */
/*     color: #368eb0; */
/*     border-color: #88cde7; */
/*     box-shadow:inset 0 1px 0 #bce9f9,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#abe4f8,#70c6e7); */
/*     background:-moz-linear-gradient(top,#abe4f8,#70c6e7); */
/*     background:-ms-linear-gradient(top,#abe4f8,#70c6e7); */
/*     background:-o-linear-gradient(top,#abe4f8,#70c6e7); */
/*     background:linear-gradient(top,#abe4f8,#70c6e7); */
/*     } */
/*     .btn:nth-child(10):hover{ */
/*     background:-webkit-linear-gradient(top,#c2ecfb,#8cd6f2); */
/*     background:-moz-linear-gradient(top,#c2ecfb,#8cd6f2); */
/*     background:-o-linear-gradient(top,#c2ecfb,#8cd6f2); */
/*     background:-ms-linear-gradient(top,#c2ecfb,#8cd6f2); */
/*     background:linear-gradient(top,#c2ecfb,#8cd6f2); */
/*     } */
/*     .btn:nth-child(10):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #257797; */
/*     background:-webkit-linear-gradient(top,#5eacc9,#5eacc9); */
/*     background:-moz-linear-gradient(top,#5eacc9,#5eacc9); */
/*     background:-ms-linear-gradient(top,#5eacc9,#5eacc9); */
/*     background:-o-linear-gradient(top,#5eacc9,#5eacc9); */
/*     background:linear-gradient(top,#5eacc9,#5eacc9); */
/*     } */
/*     .btn:nth-child(11){ */
/*     color: #46678b; */
/*     border-color: #7ea4cf; */
/*     box-shadow:inset 0 1px 0 #a9cded,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#94c1e9,#6ea1e1); */
/*     background:-moz-linear-gradient(top,#94c1e9,#6ea1e1); */
/*     background:-ms-linear-gradient(top,#94c1e9,#6ea1e1); */
/*     background:-o-linear-gradient(top,#94c1e9,#6ea1e1); */
/*     background:linear-gradient(top,#94c1e9,#6ea1e1); */
/*     } */
/*     .btn:nth-child(11):hover{ */
/*     background:-webkit-linear-gradient(top,#a7d1f7,#79aae9); */
/*     background:-moz-linear-gradient(top,#a7d1f7,#79aae9); */
/*     background:-ms-linear-gradient(top,#a7d1f7,#79aae9); */
/*     background:-o-linear-gradient(top,#a7d1f7,#79aae9); */
/*     background:linear-gradient(top,#a7d1f7,#79aae9); */
/*     } */
/*     .btn:nth-child(11):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #205aa2; */
/*     background:-webkit-linear-gradient(top,#6391cb,#6391cb); */
/*     background:-moz-linear-gradient(top,#6391cb,#6391cb); */
/*     background:-ms-linear-gradient(top,#6391cb,#6391cb); */
/*     background:-o-linear-gradient(top,#6391cb,#6391cb); */
/*     background:linear-gradient(top,#6391cb,#6391cb); */
/*     } */
/*     .btn:nth-child(12){ */
/*     color: #784e6a; */
/*     border-color: #c681af; */
/*     box-shadow:inset 0 1px 0 #ebadd5,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#e699cb,#d677b8); */
/*     background:-moz-linear-gradient(top,#e699cb,#d677b8); */
/*     background:-ms-linear-gradient(top,#e699cb,#d677b8); */
/*     background:-o-linear-gradient(top,#e699cb,#d677b8); */
/*     background:linear-gradient(top,#e699cb,#d677b8); */
/*     } */
/*     .btn:nth-child(12):hover{ */
/*     background:-webkit-linear-gradient(top,#f4b5de,#e082c2); */
/*     background:-moz-linear-gradient(top,#f4b5de,#e082c2); */
/*     background:-o-linear-gradient(top,#f4b5de,#e082c2); */
/*     background:-ms-linear-gradient(top,#f4b5de,#e082c2); */
/*     background:linear-gradient(top,#f4b5de,#e082c2); */
/*     } */
/*     .btn:nth-child(12):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #9a2073; */
/*     background:-webkit-linear-gradient(top,#cc6dae,#cc6dae); */
/*     background:-moz-linear-gradient(top,#cc6dae,#cc6dae); */
/*     background:-ms-linear-gradient(top,#cc6dae,#cc6dae); */
/*     background:-o-linear-gradient(top,#cc6dae,#cc6dae); */
/*     background:linear-gradient(top,#cc6dae,#cc6dae); */
/*     } */
/*     .btn:nth-child(13){ */
/*     color: #b27171; */
/*     border-color: #efb1b1; */
/*     box-shadow:inset 0 1px 0 #ffd1d1,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#ffc5c5,#ff9595); */
/*     background:-moz-linear-gradient(top,#ffc5c5,#ff9595); */
/*     background:-o-linear-gradient(top,#ffc5c5,#ff9595); */
/*     background:-ms-linear-gradient(top,#ffc5c5,#ff9595); */
/*     background:linear-gradient(top,#ffc5c5,#ff9595); */
/*     } */
/*     .btn:nth-child(13):hover{ */
/*     background:-webkit-linear-gradient(top,#ffd5d5,#fd9a9a); */
/*     background:-moz-linear-gradient(top,#ffd5d5,#fd9a9a); */
/*     background:-o-linear-gradient(top,#ffd5d5,#fd9a9a); */
/*     background:-ms-linear-gradient(top,#ffd5d5,#fd9a9a); */
/*     background:linear-gradient(top,#ffd5d5,#fd9a9a); */
/*     } */
/*     .btn:nth-child(13):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #c94b4b; */
/*     background:-webkit-linear-gradient(top,#e99292,#e99292); */
/*     background:-moz-linear-gradient(top,#e99292,#e99292); */
/*     background:-ms-linear-gradient(top,#e99292,#e99292); */
/*     background:-o-linear-gradient(top,#e99292,#e99292); */
/*     background:linear-gradient(top,#e99292,#e99292); */
/*     } */
/*     .btn:nth-child(14){ */
/*     color: #848484; */
/*     border-color: #cecece; */
/*     box-shadow:inset 0 1px 0 #ececec,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#e5e5e5,#d5d5d5); */
/*     background:-moz-linear-gradient(top,#e5e5e5,#d5d5d5); */
/*     background:-o-linear-gradient(top,#e5e5e5,#d5d5d5); */
/*     background:-ms-linear-gradient(top,#e5e5e5,#d5d5d5); */
/*     background:linear-gradient(top,#e5e5e5,#d5d5d5); */
/*     } */
/*     .btn:nth-child(14):hover{ */
/*     background:-webkit-linear-gradient(top,#f0f0f0,#dedddd); */
/*     background:-moz-linear-gradient(top,#f0f0f0,#dedddd); */
/*     background:-o-linear-gradient(top,#f0f0f0,#dedddd); */
/*     background:-ms-linear-gradient(top,#f0f0f0,#dedddd); */
/*     background:linear-gradient(top,#f0f0f0,#dedddd); */
/*     } */
/*     .btn:nth-child(14):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #acacac; */
/*     background:-webkit-linear-gradient(top,#c6c6c6,#c6c6c6); */
/*     background:-moz-linear-gradient(top,#c6c6c6,#c6c6c6); */
/*     background:-o-linear-gradient(top,#c6c6c6,#c6c6c6); */
/*     background:-ms-linear-gradient(top,#c6c6c6,#c6c6c6); */
/*     background:linear-gradient(top,#c6c6c6,#c6c6c6); */
/*     } */
/*     .btn:nth-child(15){ */
/*     color: #21729d; */
/*     border-color: #2b9fd9; */
/*     box-shadow:inset 0 1px 0 #6accf6,0 1px 0 rgba(0,0,0,.2); */
/*     background:-webkit-linear-gradient(top,#38bbf3,#2ca2e3); */
/*     background:-moz-linear-gradient(top,#38bbf3,#2ca2e3); */
/*     background:linear-gradient(top,#38bbf3,#2ca2e3); */
/*     } */
/*     .btn:nth-child(15):hover{ */
/*     background:-webkit-linear-gradient(top,#6ad2ff,#3fafed); */
/*     background:-moz-linear-gradient(top,#6ad2ff,#3fafed); */
/*     background:-ms-linear-gradient(top,#6ad2ff,#3fafed); */
/*     background:-o-linear-gradient(top,#6ad2ff,#3fafed); */
/*     background:linear-gradient(top,#6ad2ff,#3fafed); */
/*     } */
/*     .btn:nth-child(15):active{ */
/*     top:4px; */
/*     box-shadow:inset 0 1px 3px #298cc3; */
/*     background:-webkit-linear-gradient(top,#4ea5d5,#4ea5d5); */
/*     background:-moz-linear-gradient(top,#4ea5d5,#4ea5d5); */
/*     background:-o-linear-gradient(top,#4ea5d5,#4ea5d5); */
/*     background:-ms-linear-gradient(top,#4ea5d5,#4ea5d5); */
/*     background:linear-gradient(top,#4ea5d5,#4ea5d5); */
/*     } */
/*     .btn:before, */
/*     .btn:after{ */
/*     position: absolute; */
/*     content: ""; */
/*     height: 50%; */
/*     border-radius: 50%; */
/*     z-index: -1; */
/*     } */
/*     .btn:before { */
/*     width: 90%; */
/*     left: 5%; */
/*     top:12%; */
/*     box-shadow: 0 -7px 4px rgba(0,0,0,0.3); */
/*     } */
/*     .btn:active:before { */
/*     width: 90%; */
/*     left: 5%; */
/*     top:12%; */
/*     box-shadow: 0 0 2px rgba(0,0,0,0.3); */
/*     } */
/*     .btn:after { */
/*     width: 80%; */
/*     left: 10%; */
/*     bottom: 9%; */
/*     box-shadow: 0 7px 4px rgba(0,0,0,0.4); */
/*     } */
/*     .btn:active:after { */
/*     width: 80%; */
/*     left: 10%; */
/*     bottom: 9%; */
/*     box-shadow: 0 0 0 rgba(0,0,0,0.4); */
/*     } */
/*     .box p:last-child{ */
/*     font-size: 20px; */
/*     font-weight: bold; */
/*     } */
/*     .box p:last-child span{ */
/*     color: #fff; */
/*     } */
    </style>
    </head>
    <body>
   <div class="page">
    <header id="header">
    </header>
    <section class="demo">
    <div class="box">
    <div class="form-actions">
    <button type="button" class="btn">Click Me</button>
    
    </div>
    </div>
    </section>
    </div>
    </body>
    </html>