Issue: [#96742](https://github.com/flutter/flutter/issues/96742)

## Use case
I'm developing a dashboard that clicking profile on the header will open an endDrawer that applies a background shadow only to the application body, I did this by calling the showBodyScrim event that allows me to pass whether we should present the background shading and its opacity.

I wish I could choose the background color of my bodyScrim. That is, I would like to be able to somehow set the value of "**_bodyScrimColor**".

#### My questions:

1 - Is there a better way to open an **endDrawer** without applying shading to my AppBar and being able to pick the drop shadow color?
2 - If not, how could I choose the color of my **bodyScrimColor**?

![my_dashboard_example](https://user-images.githubusercontent.com/43020119/149788481-100663cc-0254-4f46-8602-244d09b0ef43.gif)

![image](https://user-images.githubusercontent.com/43020119/149789833-3d114f66-95c6-4258-a234-19b096a51e0b.png)

![image](https://user-images.githubusercontent.com/43020119/149789925-89bd26fb-b41f-452e-aa7a-644fe042b7ff.png)


### flutter doctor -v
![image](https://user-images.githubusercontent.com/43020119/149787633-10d1209d-2fac-4f54-b6e0-e97f8bb68e92.png)


## Proposal
It would be interesting to have a way to change the color of the bodyScrimColor variable
