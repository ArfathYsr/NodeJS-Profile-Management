BEGIN TRY

BEGIN TRAN;

-- AlterTable
ALTER TABLE [dbo].[FunctionalArea] ADD [IsActive] BIT NOT NULL CONSTRAINT [FunctionalArea_IsActive_df] DEFAULT 1;

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
