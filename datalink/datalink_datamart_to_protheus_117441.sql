EXEC sp_addlinkedserver
    @server = 'datamart_to_protheus_117441',
    @srvproduct = '',
    @provider = 'SQLNCLI',
    @datasrc = '181.41.180.214\CMHV8C_117441_PR_DV,37000',
    @catalog = 'CMHV8C_117441_PR_PD';

EXEC sp_addlinkedsrvlogin
    @rmtsrvname = 'datamart_to_protheus_117441',
    @useself = 'false',
    @locallogin = NULL,
    @rmtuser = 'usr_CLT117444_PR_RW',
    @rmtpassword = 'm7.bJ1<4W$;6U)ymH;RK';

