BEGIN TRY

BEGIN TRAN;

-- AlterTable
ALTER TABLE [dbo].[ImportProfileHistory] ADD [UserData] VARCHAR(20);

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
