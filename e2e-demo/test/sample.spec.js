describe('add todo', function () {
    let page;

    before (async function () {
      page = await browser.newPage();
      await page.goto('http://localhost:8080/index.jsp');
    });
  
    after (async function () {
      // await page.close();
    });

    it('should have correct title', async function() {
        expect(await page.title()).to.eql('index');
    })

    it('test add', async function(){
      await page.click('#addBtn',{delay:2000});
      await page.goto('http://localhost:8080/html/add.jsp');
      await page.type('#tag','new todo item',{dalay:2000});
      await page.click('#submit',{delay:2000});
      let todoList = await page.waitFor('#cont');
      let realText = await page.evaluate(function(todoList){
        return todoList.lastChild.textContent;
      },todoList);
      expect(realText).to.eql('new todo item');
    })

    it('test complete', async function(){
      await page.goto('http://localhost:8080/html/add.html');
      await page.click('#comBtn',{delay:2000});
      let todoList = await page.waitFor('#compl');
      let realText = await page.evaluate(function(todoList){
        return todoList.lastChild.textContent;
      },todoList);
      expect(realText).to.eql('已完成');
    })

    it('test showall', async function(){
      await page.goto('http://localhost:8080/api/tasks');
      await page.click('#a1',{delay:2000});
      let h3 = await page.waitFor('#h3');
      let realText = await page.evaluate(function(todoList){
        return todoList.lastChild.textContent;
      },todoList);
      expect(realText).to.eql(h3);
    })

    it('test delete', async function(){
      await page.click('#deleteBtn',{delay:2000});
      await page.goto('http://localhost:8080/html/delete.jsp');
      await page.type('#id','1',{dalay:2000});
      await page.click('#submit',{delay:2000});
      let todoList = await page.waitFor('#id');
      let realText = await page.evaluate(function(todoList){
        return todoList.lastChild.textContent;
      },todoList);
      expect(realText).to.eql('删除成功！');
    })

    // it('should new todo correct', async function() {
    //   await page.click('#new-todo', {delay: 500});
    //   await page.type('#new-todo', 'new todo item', {delay: 50});
    //   await page.keyboard.press("Enter");
    //   let todoList = await page.waitFor('#todo-list');
    //   const expectInputContent = await page.evaluate(todoList => todoList.lastChild.querySelector('label').textContent, todoList);
    //   expect(expectInputContent).to.eql('new todo item');
    // }) 
  });