Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AFBAA74ED
	for <lists+v9fs-developer@lfdr.de>; Fri,  2 May 2025 16:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:To:From:Date:Message-ID:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lIZBKU4vAGys97jNuZ1skPACoFi6FhxOUrjzFGN/R2Q=; b=H8bLwwmHCBz5uWp0R+W02POMRZ
	bUYSQHX2OuDSFQ+EySS5axTAyS33zSuqbQ33ttHXGr6Kda7iX9Xx+TyrKptOEtXdEIZj6ZOnYUrtQ
	tVFdR7uVzzwibZ5hoxkGBW6mQGdwSJmGTa94qPa6GnsRVi9kuoBMEavSoc45D3PAUgiU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uArM4-00063V-BZ;
	Fri, 02 May 2025 14:27:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <admin@sageaubrey.com>) id 1uArM3-00063P-Mo
 for v9fs-developer@lists.sourceforge.net;
 Fri, 02 May 2025 14:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Subject:Reply-To:To:From:Date:
 Message-ID:Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SJU+ZtyPRXDB7BBlW9mGOf80UFYDsvZQnZDdRRNgPK8=; b=Bpah546DO9tLhFwcqegaYsIi+j
 osM+xMpRMvuGripHSOoGytbgWTvlJmfzdQDNsggQJkBnmCHr0LbCoa75WmtfTDqFSckpTRxL5dwnY
 5wbaVaddOvlSkPIQmzjuJ3eUwCmU9eN8lI5kegBxzQRiUxc/HB6cJhLBiWoewp3GHdjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Subject:Reply-To:To:From:Date:Message-ID:Content-Type:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SJU+ZtyPRXDB7BBlW9mGOf80UFYDsvZQnZDdRRNgPK8=; b=l
 7W1V3SdOHU56/5px+acrK1aWcr/KlItyK7K/OesI0Hjt7CSpwBQ9Qy0EM+m+WGt4V544UPXLs3TQ0
 9BJuGILVYQH3SjWo4DpC5F6LF1kuMMbyOh9kU2w57GDafAhpTatgtuNBjsL+pMk2FvxstZdelzlok
 z5jMw/O2uXajtW+w=;
Received: from mail-westcentralusazon11020110.outbound.protection.outlook.com
 ([40.93.198.110] helo=CY4PR05CU001.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uArLn-0008JW-NC for v9fs-developer@lists.sourceforge.net;
 Fri, 02 May 2025 14:27:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QQ7z7e/hyxHEJnjqpLQt0cWOEaw64UleTLliM6hfMI5oM8h0i4718/AnqG5DAoVmK2MFfgu7MQG99/6pYIweWTP9OBeORGXpom29LnXq5YmgTj3+xl4PvXBC9rYheYzf0XJxT4R9hKaQeimxC5pt8urNyWckuFj/zR7mb5E8krU6lwHWUL8DY17rMBigUPBQGLeucVz+drAYv95oJB3Q5H5Q3jHoZPU4PGAveYRFB45u5vaEvEurErZR3sH0+Jx8giC9UxWlzBPCqEi0RURjiUgaBIW/gv0L2lLeXyMg1PoTs9gS+RSwWmt3UpDai68TE/40LqMbdRqKtWV00q0N1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SJU+ZtyPRXDB7BBlW9mGOf80UFYDsvZQnZDdRRNgPK8=;
 b=Hsvac/CiaYa2/psk8Kf9pq+jL73UoHI157a/ZI7UlASmNtIPUoNlPUgxTJUKfT308/e3tevzN4g6qk7xRMAm934ExDiI6DacBBbiTQ6Fe9KZzTEAJ7DEXaW+4naAxgBURi/o0tmUSnK98DQvojxg3NWYwC3MCFrYwPdrPtRXj0te5VS4FTRDAdLOLWocZtsdunSSjw4nh2WZl77Kz7tLLN9OpdINBHGaPNJ6h3GW9+JL8hPj4Hkyc6K99tofwFEfBc1giFTu96FuXmXC0IXY9bAzZXCIObw6DvVqVhGMpM08349JJ4Xd0mUO9JC2o1J1YsJmE3eSc2q9RfUR9dJGgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 23.94.190.51) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=sageaubrey.com; dmarc=none action=none
 header.from=sageaubrey.com; dkim=none (message not signed); arc=none (0)
Received: from BN7PR02CA0030.namprd02.prod.outlook.com (2603:10b6:408:20::43)
 by BN8PR07MB6884.namprd07.prod.outlook.com (2603:10b6:408:79::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Fri, 2 May
 2025 13:52:05 +0000
Received: from BL02EPF0001A0FA.namprd03.prod.outlook.com
 (2603:10b6:408:20:cafe::c) by BN7PR02CA0030.outlook.office365.com
 (2603:10b6:408:20::43) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.41 via Frontend Transport; Fri,
 2 May 2025 13:52:05 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 23.94.190.51)
 smtp.mailfrom=sageaubrey.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sageaubrey.com;
Received-SPF: Fail (protection.outlook.com: domain of sageaubrey.com does not
 designate 23.94.190.51 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=23.94.190.51; helo=[127.0.0.1];
Received: from [127.0.0.1] (23.94.190.51) by
 BL02EPF0001A0FA.mail.protection.outlook.com (10.167.242.101) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8699.20
 via Frontend Transport; Fri, 2 May 2025 13:52:05 +0000
Message-ID: <v9fs-developer@lists.sourceforge.net-1746193925403@sageaubrey-com.mail.protection.outlook.com>
Date: Fri, 02 May 2025 13:52:05 GMT
From: Ease Pay Finance <admin@sageaubrey.com>
To: v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A0FA:EE_|BN8PR07MB6884:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d456e6c-d1e8-4d5c-99cc-08dd89808641
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|61400799027|36860700013|376014|82310400026|34020700016|8096899003|36200700002;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qBVLl7EwBjjYI4ywwcPE2l/Yck46MewKVwGqLoc411wRXuGyHTyreDTNItDZ?=
 =?us-ascii?Q?7pYlnioHa7bmrjKN8OJh5v1OtQHPWlAXlovhKVvUQ8L7cguYGEGdopsH/i85?=
 =?us-ascii?Q?uWyKvTmOkA687Xn37x5OHJEJjyXnHtNV7BDbGEyimMZqOt1abzkVHsODo8fM?=
 =?us-ascii?Q?kYbxLlw/jg+mCrWU6AgLKj/u3IDQHQfNY1AmzRFnhrWBW5kbn+ZNPOcPVXaf?=
 =?us-ascii?Q?lf1lT7iUk5uZZLcTKJmc0hvxfdljr/WMT77tJh1dWZ5cN33B40Yz16Y3WawM?=
 =?us-ascii?Q?fU3DdHoFXamwUQRKrZDcZXUgBUcq6E5O9C+gJ3da/IqHXcoJwd72fC6J6Ism?=
 =?us-ascii?Q?dqc4w5pY2v5ph/bvNSYFI1/xbnzUT0bsf+eVpkUj3Z58Wa2lTFYIqmgt6/p8?=
 =?us-ascii?Q?N26q+cVYEJUu1bOUVjZn8MLDiSogCovnMRFVh2EWohWfCetFB8b5KI4wFz0r?=
 =?us-ascii?Q?VSHDYo/Iwf7DEd8QyOPfvUY9a4qIaAdVNV2oyytkhXdY0W5SKoRgEmrTUlYN?=
 =?us-ascii?Q?r3u62PIhkX3QW5i6rHkSz5jmmupMxKknToGiQbtNE77lhUbRauMngrs0kQef?=
 =?us-ascii?Q?bi0Rwf6Nfietgh9ft8mB6RzIuWHabbnHRwBDtvbg7mGbPbsXhk6yAZ5E3W3R?=
 =?us-ascii?Q?nUWDZoUswdwUMOzFQFrhPVSfaILbFiN+pJiEebgBUrZPt9SANPT4eQJbaxNp?=
 =?us-ascii?Q?vGzKb/v1Py+8yVk9uUjhR7a22bYZBztEljm2gO7UbK9IQxPFM1R/LwuAKUwG?=
 =?us-ascii?Q?TFbqvGfSbMDVKRyRgG140eFECWbtvBLWb088DApQfx0EsidDk15YKtrleaJD?=
 =?us-ascii?Q?GfI+AROf28ZlS9euiaPk/WBTTvVCcnYuMFyBQaTurW4poF9KjQKqqGSnRdSa?=
 =?us-ascii?Q?EREqa+pA4BlR+3EQJDVH6o8q6eGGxySk4xJk9jTLvCcq6LzjNN7iCqtxOgYF?=
 =?us-ascii?Q?N/Fy1tp+2c4C8z3U1nrxlK86OK1zLjScQ4SRqw0z7kSITSj00sUCTyxUdScv?=
 =?us-ascii?Q?HbBiX3QF4eDa5SckELO/wyslild6nkHU6XA74FG6LWUCP+YvQVSqSWlyQ4uG?=
 =?us-ascii?Q?yu06CzmkMqRtrl8m58JkJFYOeOyg33xmqXvu2ugPPF7blR/7wpZGoGcZi7p8?=
 =?us-ascii?Q?SAJHuzui/NeaVaABSmB8KIyTh2DUng2Lt8UUGY9HjVrrHpAlRPJ8zrq8wImo?=
 =?us-ascii?Q?PY7/960QkGQHqiilvq28ipb5NF+Z7bEQt36dKDrWd5AX7QR+RxRnVjpaCQqk?=
 =?us-ascii?Q?uPkIY7u378GwiEoz/lPoc+ZEKmjzZ3Lf/4tz9cehM2RwkrqT+Je7G97C3G7D?=
 =?us-ascii?Q?k0GFkV0wQl3cDN6l61caE+MxkyyWmyDtwHNA8WgDwZaIHKh39we5/+qGFPnP?=
 =?us-ascii?Q?4ouUn6ZASbKk1Te6hZdvRkjoyfblq7oXfYLieURHw3A4oHDsHUVWYrhpPCS3?=
 =?us-ascii?Q?z41V0S9EcGwPFgh3uFENe9pEwJSp0sLTnIysJ7JYEGLO9AvhUHr4h3/fSQZu?=
 =?us-ascii?Q?q/jIRf9o1h4BWQdu0JOAD3P0l7DQTv8BGxCYgXF2/nNFYJY1uSYiNaM77g?=
 =?us-ascii?Q?=3D=3D?=
X-Forefront-Antispam-Report: CIP:23.94.190.51; CTRY:US; LANG:de; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:[127.0.0.1]; PTR:23-94-190-51-host.colocrossing.com;
 CAT:NONE;
 SFS:(13230040)(61400799027)(36860700013)(376014)(82310400026)(34020700016)(8096899003)(36200700002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: sageaubrey.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2025 13:52:05.7194 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d456e6c-d1e8-4d5c-99cc-08dd89808641
X-MS-Exchange-CrossTenant-Id: 77f5ddae-2ae4-48a7-9178-56243c300ce3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=77f5ddae-2ae4-48a7-9178-56243c300ce3; Ip=[23.94.190.51];
 Helo=[[127.0.0.1]]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF0001A0FA.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR07MB6884
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello v9fs-developer, . Project Funding Opportunities Projekt
    Finanzierung Möglichkeiten 
 
 Content analysis details:   (1.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 MSGID_MULTIPLE_AT      Message-ID contains multiple '@' characters
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [40.93.198.110 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [40.93.198.110 listed in sa-accredit.habeas.com]
  0.1 MIME_HTML_MOSTLY       BODY: Multipart message mostly text/html MIME
  0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.93.198.110 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.93.198.110 listed in list.dnswl.org]
X-Headers-End: 1uArLn-0008JW-NC
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Access Funding Opportunities
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: easepayfinance.ca@proton.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello v9fs-developer,
.
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
