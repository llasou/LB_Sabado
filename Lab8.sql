create trigger [dbo].[Empleadotrigger] on [dbo].[Cliente] after delete 
as
begin
 select*from deleted
 end
GO
/****** Object:  Trigger [conciertotrigger]    Script Date: 10/26/2018 20:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[conciertotrigger] on [dbo].[Concierto] instead of update 
as
begin
 select*from inserted
 end
GO
/****** Object:  Trigger [clientetrigger]    Script Date: 10/26/2018 20:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[clientetrigger] on [dbo].[Cliente] instead of update 
as
begin
 select*from inserted
 end
GO
/****** Object:  Trigger [asientostrigger]    Script Date: 10/26/2018 20:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[asientostrigger] on [dbo].[Cliente] instead of insert
 as
begin
 select*from inserted
 end
GO
/****** Object:  Trigger [tipopagotrigger]    Script Date: 10/26/2018 20:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[tipopagotrigger] on [dbo].[TipoPago] instead of update 
as
begin
 select*from inserted
 end
GO