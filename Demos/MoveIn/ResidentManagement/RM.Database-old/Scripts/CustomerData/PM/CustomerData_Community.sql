﻿MERGE PM.Community AS TARGET
USING (VALUES ( 1, 'US', 2, 1, '30100', 'Moon Over Nowhere', NULL),
              ( 2, 'US', 2, 1, '30101', 'Homeowners Realty', NULL),
              ( 3, 'US', 2, 1, '30102', 'La Casa Grande', NULL),
              ( 4, 'US', 2, 1, '30103', 'Fashion-I-Best', NULL),
              ( 5, 'US', 2, 1, '30104', 'Wise and in the Way', NULL),
              ( 6, 'US', 2, 1, '30105', 'Tower of Hope', NULL),
              ( 7, 'US', 2, 1, '30106', 'Exuberanch', NULL),
              ( 8, 'US', 2, 1, '30107', 'The Enchanted Garden', NULL),
              ( 9, 'US', 2, 1, '30108', 'Stone Ranch', NULL),
              (10, 'US', 2, 1, '30109', 'Mild Manor', NULL),
              (11, 'US', 2, 1, '30110', 'Jen & Barry’s', NULL),
              (12, 'US', 2, 1, '30111', 'Rancho Pleasanton', NULL),
              (13, 'US', 2, 1, '30112', 'Sweet Virginia', NULL),
              (14, 'US', 2, 1, '30113', 'Retro Salts', NULL),
              (15, 'US', 2, 1, '30114', 'The Land of Meat', NULL),
              (16, 'US', 2, 1, '30115', 'Coherent Community', NULL),
              (17, 'US', 2, 1, '30116', 'SeaSky', NULL),
              (18, 'US', 2, 1, '30117', 'Rancho Pleasant Tan', NULL),
              (19, 'US', 2, 1, '30118', 'Tradeworks Inc', NULL),
              (20, 'US', 2, 1, '30119', 'The Gluck', NULL),
              (21, 'US', 2, 1, '30120', 'Gnarly Knolls', NULL),
              (22, 'US', 2, 1, '30121', 'The Sibbala Group', NULL),
              (23, 'US', 2, 1, '30122', 'Ezy Retirement AZ', NULL),
              (24, 'US', 2, 1, '30123', 'Retreat With Purpose', NULL),
              (25, 'US', 2, 1, '30124', 'SpireNest', NULL),
              (26, 'US', 2, 1, '30125', 'Amygdala House', NULL),
              (27, 'US', 2, 1, '30126', 'Flower Whispers', NULL),
              (28, 'US', 2, 1, '30127', 'Virtuctura', NULL),
              (29, 'US', 2, 1, '30128', 'Stepford Steppes', NULL),
              (30, 'US', 2, 1, '30129', 'Denver Hamlet', NULL),
              (31, 'US', 2, 1, '30130', 'Vegetable Farm', NULL),
              (32, 'US', 2, 1, '30131', 'Worthridge Estates', NULL),
              (33, 'US', 2, 1, '30132', 'Creative Endures', NULL),
              (34, 'US', 2, 1, '30133', 'Below the Beltway', NULL),
              (35, 'US', 2, 1, '30134', 'Godzilla’s Playground', NULL),
              (36, 'US', 2, 1, '30135', 'Bedlam and Broomsticks', NULL),
              (37, 'US', 2, 1, '30136', 'Boil Heights', NULL),
              (38, 'US', 2, 1, '30137', 'Experienced Goods', NULL),
              (39, 'US', 2, 1, '30138', 'The Homes Business', NULL),
              (40, 'US', 2, 1, '30139', 'The Art Of Shaping', NULL),
              (41, 'US', 2, 1, '30140', 'Burly Gates', NULL),
              (42, 'US', 2, 1, '30141', 'Retiree’s Corner', NULL),
              (43, 'US', 2, 1, '30142', 'Snail Trails', NULL),
              (44, 'US', 2, 1, '30143', 'The Francis Bacon', NULL),
              (45, 'US', 2, 1, '30144', 'Constant Comment', NULL),
              (46, 'US', 2, 1, '30145', 'The Wedge', NULL),
              (47, 'US', 2, 1, '30146', 'C-3 Residences', NULL),
              (48, 'US', 2, 1, '30147', 'Smart-5-7 Retirement', NULL),
              (49, 'US', 2, 1, '30148', 'Casa Guana', NULL),
              (50, 'US', 2, 1, '30149', 'Days n Daze', NULL))
AS SOURCE (CommunityId,
           CountryCode,
           CommunityStatusId,
           RowStatusId,
           CommunityNumber,
           CommunityName,
           ProfileImageUrl)
ON TARGET.CommunityId = SOURCE.CommunityId
WHEN MATCHED THEN UPDATE SET TARGET.CommunityNumber     = SOURCE.CommunityNumber,
                             TARGET.CommunityName       = SOURCE.CommunityName,
                             TARGET.CountryCode         = SOURCE.CountryCode,
                             TARGET.ProfileImageUrl     = SOURCE.ProfileImageUrl,
                             TARGET.CommunityStatusId   = SOURCE.CommunityStatusId,
                             TARGET.RowStatusId         = SOURCE.RowStatusId
WHEN NOT MATCHED THEN INSERT (CommunityId,
                              CommunityNumber,
                              CommunityName,
                              CountryCode,
                              ProfileImageUrl,
                              CommunityStatusId,
                              RowStatusId)
                      VALUES (SOURCE.CommunityId,
                              SOURCE.CommunityNumber,
                              SOURCE.CommunityName,
                              SOURCE.CountryCode,
                              SOURCE.ProfileImageUrl,
                              SOURCE.CommunityStatusId,
                              SOURCE.RowStatusId);
GO