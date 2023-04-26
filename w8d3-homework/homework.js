function titleize(names, callback) {
    let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    console.log(callback(titleized));
};

titleize(["Kevin", "Olesya", "Vika"], (names) => {
    names.forEach(name => console.log(name));
  });


  