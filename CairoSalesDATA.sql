USE [CairoSales]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (1, N'Ahmed Ades', N'A.Ades', N'225182', N'SysAdmin', CAST(N'2016-11-09' AS Date), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (2, N'Sina - IDA Line Manager', N'S.Manager', N'123456', N'Line Manager', CAST(N'2016-11-09' AS Date), 1, 1, 1, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (3, N'IDI Line Manager', N'I.Manager', N'123456', N'Line Manager', CAST(N'2016-11-09' AS Date), 1, 1, 1, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (21, N'Rep 1', N'R.123', N'12345', N'Medical Rep.', CAST(N'2016-11-20' AS Date), 17, 1, 1, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (22, N'Rep 2', N'R.2', N'12345', N'Medical Rep.', CAST(N'2016-11-20' AS Date), 18, 1, 1, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (1021, N'test insert', N't.insert', N'17899', N'Medical Rep.', CAST(N'2016-12-12' AS Date), 1, 1, 1, N'12@as.com', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (2020, N'Ali Mahmoud', N'A.Mahmoud', N'123456', N'Line Manager', CAST(N'2016-12-19' AS Date), 1, 1, 1, N'Ali@gisi.com', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (2023, N'Auto Insert', N'A.Insert', N'14789', N'Line Manager', CAST(N'2016-12-20' AS Date), 1, 1, 1, N'123@asd', NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (2024, N'Mahmoud Ismail', N'M.Ismail', N'123456', N'Sales Manager', CAST(N'2016-12-22' AS Date), 1, 1, 1, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserID], [UserName], [LoginName], [UserPass], [JobClass], [RequestDate], [DirectManager], [Approved], [ApproveUser], [Email], [Phone]) VALUES (3024, N'IDI Line Admin', N'I.Admin', N'123456', N'Line Manager', CAST(N'2016-12-26' AS Date), 1, 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[SalesLines] ON 
DELETE dbo.SalesLines
GO
INSERT [dbo].[SalesLines] ([SalesLineID], [LineName], [UserID]) VALUES (1, N'IDI', 3)
GO
INSERT [dbo].[SalesLines] ([SalesLineID], [LineName], [UserID]) VALUES (2, N'IDA - SINA', 2)
GO
SET IDENTITY_INSERT [dbo].[SalesLines] OFF
GO
SET IDENTITY_INSERT [dbo].[Regions] ON 

GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3009, N'النزهة', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3010, N'مصر الجديدة', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3011, N'مدينة نصر - شرق', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3012, N'مدينة نصر - غرب', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3013, N'المعادي', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3014, N'الوايلي', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3015, N'الزيتون', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3016, N'عابدين', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3017, N'غرب القاهرة', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3018, N'البساتين ودار السلام', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3019, N'حلوان', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3020, N'المطرية', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3021, N'عين شمس', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3022, N'السلام', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3023, N'الساحل', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3024, N'الزاوية الحمراء', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3025, N'حدائق القبة', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3026, N'المرج', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3027, N'الشرابية', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3028, N'مصر القديمة', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3029, N'الخليفة و المقطم', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3030, N'روض الفرج', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3031, N'منشأة ناصر', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3032, N'السيدة زينب', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3033, N'وسط القاهرة', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3034, N'التبين', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3035, N'باب الشعرية', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3036, N'الموسكي', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3037, N'شبرا', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3038, N'شبرا الخيمة', N'القاهرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3039, N'المنتزة', N'الإسكندرية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3040, N'الشرق', N'الإسكندرية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3041, N'الوسط', N'الإسكندرية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3042, N'الجمرك', N'الإسكندرية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3043, N'العجمي', N'الإسكندرية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3044, N'العامرية', N'الإسكندرية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3045, N'برج العرب', N'الإسكندرية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3046, N'الإسماعيلية', N'الإسماعيلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3048, N'التل الكبير', N'الإسماعيلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3049, N'فايد', N'الإسماعيلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3050, N'القنطرة شرق', N'الإسماعيلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3051, N'القنطرة غرب', N'الإسماعيلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3052, N'أبو صوير', N'الإسماعيلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3053, N'القصاصين', N'الإسماعيلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3054, N' الأقصر', N'الأقصر', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3055, N' مركز إسنا', N'الأقصر', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3056, N' أرمنت', N'الأقصر', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3057, N'القرنه', N'الأقصر', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3058, N' الزينية ', N'الأقصر', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3059, N'الجيزة', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3060, N'الدقي', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3061, N'المهندسين', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3062, N'امبابة', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3063, N'حي فيصل', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3064, N'6 أكتوبر', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3065, N'حي الهرم', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3066, N'البدرشين', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3067, N'العياط', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3068, N'اطفيح', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3069, N'الواحات البحرية', N'الجيزة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3070, N'الداخلة', N'الوادي الجديد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3071, N'الخارجة', N'الوادي الجديد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3072, N'الفرافرة', N'الوادي الجديد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3073, N'أبو حماد', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3074, N'أبو كبير', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3075, N'أولاد صقر', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3076, N'بلبيس', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3077, N'الحسينية', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3078, N'ديرب نجم', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3079, N'الزقازيق', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3080, N'الصالحية', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3081, N'العاشر من رمضان', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3082, N'فاقوس', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3083, N'كفر صقر', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3084, N'منيا القمح', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3085, N'ههيا', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3086, N'مشتول السوق', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3087, N'الإبراهيمية', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3088, N'القرين', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3089, N'القنايات', N'الشرقية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3090, N'السويس', N'السويس', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3091, N'الأربعين', N'السويس', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3092, N'عتاقة', N'السويس', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3093, N'الجناين', N'السويس', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3094, N'طابا', N'جنوب سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3095, N'نويبع', N'جنوب سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3096, N'دهب', N'جنوب سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3097, N'نخل', N'جنوب سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3098, N'رأس سدر', N'جنوب سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3099, N'شرم الشيخ', N'جنوب سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3100, N'بئر العبد', N'شمال سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3101, N'نخل', N'شمال سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3102, N'الحسنة', N'شمال سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3103, N'العريش', N'شمال سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3104, N'الشيخ زويد', N'شمال سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3105, N'رفح', N'شمال سيناء', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3106, N'أبشواي', N'الفيوم', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3107, N'أطسا', N'الفيوم', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3108, N'الفيوم', N'الفيوم', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3109, N'سنورس', N'الفيوم', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3110, N'طامية', N'الفيوم', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3111, N'المنزلة', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3112, N'الجمالية', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3113, N'دكرنس', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3114, N'ميت غمر', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3115, N'جمصة', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3116, N'أجا', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3117, N'بلقاس', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3118, N'السنبلاوين', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3119, N'شربين', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3120, N'طلخا', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3121, N'المنصورة', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3122, N'منية النصر', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3123, N'بنى عبيد', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3124, N'ميت سلسيل', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3125, N'الكردي', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3126, N'تمى الأمديد', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3127, N'المطرية', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3128, N'نبروه', N'الدقهلية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3129, N'أبو قرقاص', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3130, N'بني مزار', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3131, N'دير مواس', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3132, N'سمالوط', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3133, N'العدوة', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3134, N'مطاي', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3135, N'مغاغة', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3136, N'ملوي', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3137, N'المنيا', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3138, N'المنيا الجديدة', N'المنيا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3139, N'أسوان', N'أسوان', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3140, N'إدفو', N'أسوان', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3141, N'كوم امبو', N'أسوان', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3142, N'دراو', N'أسوان', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3143, N'نصر النوبة', N'أسوان', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3144, N'أسيوط', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3145, N'ديروط', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3146, N'قوصية', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3147, N'أبنوب', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3148, N'منفلوط', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3149, N'أبو تيج', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3150, N'الغنايم', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3151, N'ساحل سليم', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3152, N'البداري', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3153, N'صدفا', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3154, N'الفتح', N'أسيوط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3155, N'بنها ', N'القليوبية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3156, N'قليوب', N'القليوبية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3157, N'القناطر الخيرية', N'القليوبية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3158, N'الخانكة', N'القليوبية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3159, N'كفر شكر', N'القليوبية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3160, N'شبين القناطر', N'القليوبية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3161, N'طوخ', N'القليوبية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3162, N'بني سويف', N'بني سويف', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3163, N'مدينة ناصر', N'بني سويف', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3164, N'الفشن', N'بني سويف', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3165, N'ببا', N'بني سويف', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3166, N'أهناسيا', N'بني سويف', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3167, N'الواسطى', N'بني سويف', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3168, N'سمسطا', N'بني سويف', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3169, N'حي الشرق', N'بورسعيد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3170, N'حي الجنوب', N'بورسعيد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3171, N'حي بورفؤاد', N'بورسعيد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3172, N'حي الضواحي', N'بورسعيد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3173, N'حي المناخ', N'بورسعيد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3174, N'حي الزهور', N'بورسعيد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3175, N'حي العرب', N'بورسعيد', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3176, N'دمياط', N'دمياط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3177, N'كفر سعد', N'دمياط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3178, N'فارسكور', N'دمياط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3179, N'الزرقا', N'دمياط', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3180, N'أخميم', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3181, N'البلينا', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3182, N'جرجا', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3183, N'دار السلام', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3184, N'جهينة', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3185, N'ساقلتا', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3186, N'سوهاج', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3187, N'طما', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3188, N'طهطا', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3189, N'المراغة', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3190, N'المنشاة', N'سوهاج', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3191, N'أشمون', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3192, N'الباجور', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3193, N'بركة السبع', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3194, N'منوف', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3195, N'مدينة السادات', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3196, N'سرس الليان', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3197, N'تلا', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3198, N'الشهداء', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3199, N'شبين الكوم', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3200, N'قويسنا', N'المنوفية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3201, N'المحلة الكبرى ', N'الغربية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3202, N'طنطا ', N'الغربية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3203, N'سمنود', N'الغربية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3204, N'قطور', N'الغربية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3205, N'السنطة', N'الغربية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3206, N'زفتى', N'الغربية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3207, N'بسيون', N'الغربية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3208, N'كفر الزيات', N'الغربية', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3209, N'أبو تشت', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3210, N'فرشوط', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3211, N'نجع حمادي', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3212, N'الوقف', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3213, N'دشنا', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3214, N'قنا', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3215, N'قفط', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3216, N'قوص', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3217, N'نقادة', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3218, N'أرمنت', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3219, N'إسنا', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3220, N'الأقصر', N'قنا', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3221, N'كفر الشيخ', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3222, N'الحامول', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3223, N'بيلا', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3224, N'قلين', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3225, N'مطوبس', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3226, N'دسوق', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3227, N'بلطيم', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3228, N'سيدي سالم', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3229, N'الرياض', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3230, N'فوة', N'كفر الشيخ', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3231, N'ركز الحمام', N'مطروح', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3232, N'مركز العلمين', N'مطروح', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3233, N'مركز الضبعة', N'مطروح', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3234, N'مركز مطروح', N'مطروح', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3235, N'مركز النجيلة', N'مطروح', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3236, N'مركز براني', N'مطروح', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3237, N'مركز السلوم', N'مطروح', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3238, N'مركز سيوة', N'مطروح', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3239, N'رشيد', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3240, N'شبراخيت', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3241, N'ايتاي البارود', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3242, N'أبو حمص', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3243, N'كفر الدوار', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3244, N'الدلنجات', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3245, N'كوم حمادة', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3246, N'حوش عيسى', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3247, N'دمنهور', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3248, N'المحمودية', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3249, N'إدكو', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3250, N'أبو المطامير', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3251, N'الرحمانية', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3252, N'النوبارية الجديدة', N'البحيرة', 1, 1)
GO
INSERT [dbo].[Regions] ([RegionID], [RegionName], [ProvinceID], [Approved], [ApproveUser]) VALUES (3253, N'وادي النطرون', N'البحيرة', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Regions] OFF
GO
SET IDENTITY_INSERT [dbo].[MediSpecification] ON 

GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1, N'IM')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (2, N'Gyn')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (3, N'GIT')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (5, N'HEP')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (6, N'GP')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1005, N'ORTHO')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1006, N'RHEUMA')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1007, N'DERMA')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1008, N'ENT')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1009, N'ONCO')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1010, N'ENDO')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1011, N'CHEST')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1012, N'SURG')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1013, N'Hospital Pharmacy')
GO
INSERT [dbo].[MediSpecification] ([SpecID], [SpecName]) VALUES (1014, N'Private Pharmacy')
GO
SET IDENTITY_INSERT [dbo].[MediSpecification] OFF
GO
SET IDENTITY_INSERT [dbo].[VisitImportance] ON 

GO
INSERT [dbo].[VisitImportance] ([ImpID], [ImpName], [VisitsNo]) VALUES (1, N'A', 4)
GO
INSERT [dbo].[VisitImportance] ([ImpID], [ImpName], [VisitsNo]) VALUES (2, N'B', 3)
GO
INSERT [dbo].[VisitImportance] ([ImpID], [ImpName], [VisitsNo]) VALUES (3, N'C', 2)
GO
INSERT [dbo].[VisitImportance] ([ImpID], [ImpName], [VisitsNo]) VALUES (4, N'D', 1)
GO
SET IDENTITY_INSERT [dbo].[VisitImportance] OFF
GO
SET IDENTITY_INSERT [dbo].[Gifts] ON 

GO
INSERT [dbo].[Gifts] ([GiftID], [GiftName]) VALUES (4, N'FMS')
GO
INSERT [dbo].[Gifts] ([GiftID], [GiftName]) VALUES (5, N'Brochure')
GO
INSERT [dbo].[Gifts] ([GiftID], [GiftName]) VALUES (6, N'Flyer')
GO
INSERT [dbo].[Gifts] ([GiftID], [GiftName]) VALUES (7, N'Clinical Reprint ')
GO
INSERT [dbo].[Gifts] ([GiftID], [GiftName]) VALUES (8, N'Blocknote')
GO
INSERT [dbo].[Gifts] ([GiftID], [GiftName]) VALUES (9, N'Reminder')
GO
INSERT [dbo].[Gifts] ([GiftID], [GiftName]) VALUES (10, N'Pens')
GO
INSERT [dbo].[Gifts] ([GiftID], [GiftName]) VALUES (11, N'Others')
GO
SET IDENTITY_INSERT [dbo].[Gifts] OFF
GO
SET IDENTITY_INSERT [dbo].[Drugs] ON 

GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2006, N'ازومبيكس 40 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2007, N'اديلوكس 400 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2008, N'اديكسور 75 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2009, N'اديكسور 37.5 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2010, N'موتوجست بلس 2/125 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2011, N'ستوميجاز 40 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2012, N'ستوميجاز 20 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2013, N'موتوجست 2 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2014, N'ليفر البيومين بلس', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2015, N'ماء غريب - بامبينو - 120 مل', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2016, N'جليبفورمين-30 قرص', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2017, N'سينا دراي', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2018, N'سينا ويت 120 مل', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2019, N'جراند فيت حديد 120 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2020, N'جراند فيت عسل 120 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2021, N'اديباكت 200 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2022, N'اديباكت 550 مجم', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2023, N'إيكسبيكتفلو', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2024, N'ديكلوسب 75مجم أس آر', NULL)
GO
INSERT [dbo].[Drugs] ([DrugID], [DrugName], [Description]) VALUES (2025, N'سينوفين 800 مجم -20 قرص', NULL)
GO
SET IDENTITY_INSERT [dbo].[Drugs] OFF
GO
