Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB48B4ECA27
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Mar 2022 18:57:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZbd7-0004fn-U0; Wed, 30 Mar 2022 16:57:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <prvs=0088e6ce48=andrew.perepechko@hpe.com>)
 id 1nZbd6-0004ff-KQ
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 16:57:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xphelJ9Q3Q+EOJ9yDPG4um3KvgvtOvymavCeDHhwq3c=; b=XOJ2+9S9Hi0dbI2rcFCoVZWdoB
 CuWafVFNOVnhYarif1bQGBVkxNz/yVNKnS+Z8coN0ahbiOmzaeRxVQSloFA6Hi3kAATbHs+BTHguw
 SoPN3MtoGhhf2TDYtxWAlAW/lwycZiZKwoaeYqDrhCDwBwPmKkvssNDa7PYjgNFpeC1s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xphelJ9Q3Q+EOJ9yDPG4um3KvgvtOvymavCeDHhwq3c=; b=NMdYMrowtVxAeRaJnv5oCnL6Yp
 +4JZippor+zpOJvMuCmp7WPDXHfFwCi28fY3et4ZQmrz4okxQNibpV+TjUtxlSkfKgmXZNC/xl974
 wC2Dcq3sNADf92WjB0W2wHHgxX/PfXns6nbKqPLcGtdHLSA+nkdRcK+c3Atn4JMkYhoc=;
Received: from mx0b-002e3701.pphosted.com ([148.163.143.35])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZbd0-00050K-FE
 for v9fs-developer@lists.sourceforge.net; Wed, 30 Mar 2022 16:57:06 +0000
Received: from pps.filterd (m0134424.ppops.net [127.0.0.1])
 by mx0b-002e3701.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 22UBaUE0028557;
 Wed, 30 Mar 2022 16:56:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=pps0720; bh=xphelJ9Q3Q+EOJ9yDPG4um3KvgvtOvymavCeDHhwq3c=;
 b=TtEHkhNQ5XXrNN63KUBkK0fcYh12/+ZseDVJ8EJnXUcjL48PcsHHUf9U8tKeq2XSU81G
 2U/xF6bug27uPHbpW0yheqr/wypt+0mIz+7YNta3fEVTKwoPbBoe0PWHkUzcQq38BZgW
 ra7+YjrLoHxzA94V8JTvpAGgCN23XbdyDT7yBSZTmT130C0pSqbxDNW6/zdTv2CK5lmI
 F65qFzezajwlcw09p2Dem+Dl7om3OpSstZiF187EjrtY7OJebcAGdE0nTIKXXsghBYk/
 IJQPm4MwQmuWIXMoOB4SKhdXr/6Nro61Dk98AmMyBaC4fe8pFQAHBNieJPQ6sVp6eQoL +w== 
Received: from p1lg14878.it.hpe.com (p1lg14878.it.hpe.com [16.230.97.204])
 by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 3f4pfxjyet-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 30 Mar 2022 16:56:50 +0000
Received: from p1wg14926.americas.hpqcorp.net (unknown [10.119.18.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by p1lg14878.it.hpe.com (Postfix) with ESMTPS id C1CA113087;
 Wed, 30 Mar 2022 16:56:47 +0000 (UTC)
Received: from p1wg14927.americas.hpqcorp.net (10.119.18.117) by
 p1wg14926.americas.hpqcorp.net (10.119.18.115) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 30 Mar 2022 04:56:32 -1200
Received: from p1wg14928.americas.hpqcorp.net (10.119.18.116) by
 p1wg14927.americas.hpqcorp.net (10.119.18.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 30 Mar 2022 04:56:32 -1200
Received: from P1WG14918.americas.hpqcorp.net (16.230.19.121) by
 p1wg14928.americas.hpqcorp.net (10.119.18.116) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.15
 via Frontend Transport; Wed, 30 Mar 2022 04:56:32 -1200
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (192.58.206.38)
 by edge.it.hpe.com (16.230.19.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 30 Mar 2022 16:56:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mKnVCv51pO6zFC+I5Y5JWRql7UQXCCFdWOfBJpKVz5hNbGcsDM6t8MgvSV/E9VIGrXhzSC9CZ1sQM0C+AVPjnJnuBQDu1hA3chYiGex0bKrxt6QKHKmTsNaH2x2hcCQQzpdXDasIRV69UNFuVgqSHR1QtWYs4PowxPveGRYVG0DaVub6pFDU+RzrVYpUK4NGQp82uzUhlecX9P7JjcgEjcCHSly8J0MSJNtGw0KNH1P+xqzsIzpJtECQRUS9GgAbP2dgGYoHnXyvs7acW1LnsneCREw0hrj3nfEFEp54ENdQvBWI2US5oCaixg0TbWTPbKMgW8o4TTbMKO7cZP8mCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xphelJ9Q3Q+EOJ9yDPG4um3KvgvtOvymavCeDHhwq3c=;
 b=O0oPYuVukVhGhhtqrpFINSyM7Nqxr+RSw7Ksztj7l/rwLg5NpY20i/umspPD2WHwfVWfyoaoUfxP4OjxdhnULe5sFQ58xsaxg2hL2yYeFFYqd3RThzRhyX1+KTR+8KjqWeYSwHWqYimOY/8PKjqDT9z+mtOb+OuCGvg4M89fdG1+W0Bgcm1OC0ijJaJb9yURauGtggD/HllOqPfYYe4xrLmw4neNzGOT5+oyRoiyuHYJ6/1xN2M491A0oKgwLHON4UjaWzbZ3J0jx0EUIzZSqHoNtPLMIKoJp03lUspb22yEiRxNmID0dHVn+cV0tG/bjBitEO64EwGxKosxcLPZ2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:152::16)
 by PH0PR84MB1787.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:161::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.23; Wed, 30 Mar
 2022 16:56:31 +0000
Received: from PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::95ef:2d0e:450:fb33]) by PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::95ef:2d0e:450:fb33%3]) with mapi id 15.20.5102.023; Wed, 30 Mar 2022
 16:56:31 +0000
From: "Perepechko, Andrew" <andrew.perepechko@hpe.com>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, Dominique Martinet
 <asmadeus@codewreck.org>
Thread-Topic: [syzbot] possible deadlock in p9_write_work
Thread-Index: AQHYQ71yxfrX9jSBWkiiZ0lz+8F9YKzXK6cWgAAI3oCAAAVygIAA6tYw
Date: Wed, 30 Mar 2022 16:56:31 +0000
Message-ID: <PH7PR84MB167995181252E4B7E4541B64F51F9@PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM>
References: <0000000000009523b605db620972@google.com>
 <385ce718-f965-4005-56b6-34922c4533b8@I-love.SAKURA.ne.jp>
 <YkObebLZMp5AyRpr@codewreck.org>
 <fb5d20c5-36a6-2c51-288a-7cc1e0a76d3e@I-love.SAKURA.ne.jp>
 <YkPAkXVc4HZLUrGl@codewreck.org>
 <f593d3ac-b28e-3593-3cd8-8983b27e47a7@I-love.SAKURA.ne.jp>
In-Reply-To: <f593d3ac-b28e-3593-3cd8-8983b27e47a7@I-love.SAKURA.ne.jp>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: b83a5dd1-3d89-2559-59bc-1da20c0fe600
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 732fa828-85ea-4dcc-e51f-08da126e3d72
x-ms-traffictypediagnostic: PH0PR84MB1787:EE_
x-microsoft-antispam-prvs: <PH0PR84MB17872BDC5F7BA58E6F45FA44F51F9@PH0PR84MB1787.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ENXUBvxWgloqjNx6Orfa7ZVVOyWJNBW2sAKGFEC2ZOjcTvi5vpMKi0dTokipN6KsKVpRQURyABcMHjA+wufpEjGKiKrMFBhTBMLeX+8bBLXsUY3er+Sj55ghyZ8gA+dVLkUGCXoUuD6uV4c2/X1pZ49gXdt73am4pUJJ8E+M06fK3Z4TFcai3DMlCA7sCzCh4Weqa3TBbCmvfJVxyS1h9XHdjv4mut7yhLQd8LjOdVvNft8SIcSngFJWKRoMqvAzRjFk33Scw0iORwT40LtCUcn4GECdkbxYTVL4Kx9AaEAx1+1ObG8uxWJPY1kp7dlKjJiVAuggGy7yyE7um1YxT2onEyIbcIBiZGLvu7aK5GD/i9WPnB6xPFlVVI37CYYg0N/WZT4aJ6iq3+wynam8fDGNrVOsv5rVs9DV0Q58v3D5c5AkgLUyLAqNM81+VEfx6a9v0E5ryZHpo5KTonDrATXrD90RTQ7e3nqHx7u52vPvLuOsxSwAFnL1I7FB+/FvOttKgRpteB6fyk/3lxDDWqzoMk0oIPf/30MbUupEdnpB3RsF4+OsGvbAsbiY2HqeKqESMwRGvWVoAhJzCx6MHvgWyidVqItULYT7dj9QVDu5qgmrb3h2P8j2nJnFW/MoUCSPlCE65Ijhh9kyL+qhoGC3OZsFEcHbiK9eozzCZIkwD2vCChdkn90tZRKvzDZPxNhtrBJ3v94ju1BVLXvKXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(19627405001)(8936002)(66476007)(316002)(52536014)(55016003)(66946007)(4326008)(5660300002)(66446008)(33656002)(91956017)(7696005)(110136005)(6506007)(9686003)(8676002)(508600001)(53546011)(54906003)(71200400001)(66556008)(2906002)(76116006)(64756008)(186003)(26005)(38070700005)(38100700002)(82960400001)(83380400001)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TEPnC36fE0nNweq4bvms7gl8xcqlKeO3BhEZSFBpPQUWT+zhE02unCmnGNly?=
 =?us-ascii?Q?7GA7asxmFZSl9QG55bn2HY72p13uoCcBLjE4vY0ceoT5UuWp5Sb41qTbCYS6?=
 =?us-ascii?Q?tdQtsFqoDzBE+ZLLStzp+yOCc5PM2dnQIsfG/IL/RejWCCzkbGd/4ibYQ1yk?=
 =?us-ascii?Q?zuRvq6z+SQru4TAVN6ycy2o0VKAfxq/tp+GrytmY+HDeI9zA2PW74PhCWm8Y?=
 =?us-ascii?Q?bdhUF253rKNY9io0zTs1GZ5eDczL41cRu4+au4eTox3bSbqvlzkBMjTvj3Yk?=
 =?us-ascii?Q?krWiHbripCBxz0gaPkqfb0XXK/gg8VbA0sC+4L+3ghKAgLaITd9dTta37DQZ?=
 =?us-ascii?Q?pHyZ7sW4WvaD+clOa0TQSR5EH80h3oQvmIkx/emrthVsjNJOd7YovOAJ8osl?=
 =?us-ascii?Q?c6qaoMaihfPRf3fuCFkyHP+okWNvURyz4H3ArrVGQFEgKUhnX9KiNENBt3OD?=
 =?us-ascii?Q?CLy8zUg3ptVLINdDRdIMTVXluWR4DYxCK5G7dVlsEquw5t5+20pHcP9mABu+?=
 =?us-ascii?Q?1ukh2hMLR8D2Qd+WfhI/OKokRvEACCNOO5pjKHOV0eu0wecDoUXDEsSCurbq?=
 =?us-ascii?Q?SdJeR4z5laX+mezM/S/I5LCJnXtwsv1mhTUQOkGlz47Td1tPNUz6Yde32CBJ?=
 =?us-ascii?Q?kpDZjM6WHYApCFAU1FGT8TwM6qj33BHmQbyC5ucXiHeaS9TAs5O/72coqJgF?=
 =?us-ascii?Q?xLMUb98eTqFpg3giehiLejZY2ynN2E9EuuDTKHYek6PKZmfoYSi/BjOy1U9R?=
 =?us-ascii?Q?9A15LuROD3JgFxfFWkN3B1xvmVQqOKOsLgOj6UfIsYSthunP5nsGazZDUsl8?=
 =?us-ascii?Q?hpyc0tVhL9EJxrPHsqYoEnuU0UIixYnYlL+YC677J23lFp9S+wee6bI7/cE9?=
 =?us-ascii?Q?BkfJr+uifYB58vJLHOoTddI1nBioRtuECnkCpijN82FBxBvfdSiyb+fkMMnh?=
 =?us-ascii?Q?4Hxp3114tZkyDgtQEwLm6iBF2Qrf39gBNN6YQyiEozLmijuR/PFhZgRjgJpA?=
 =?us-ascii?Q?gPYW2zgIWyIfbt6/dtwokFZq4gidejgC848mW9TcOXFtc8NIyZfPWznWVFQL?=
 =?us-ascii?Q?20DX9gTYN69S49v1ETy+10ixSDVTFS94fyaQVNSNn9FcyFGuhPb8U+l3Kz2U?=
 =?us-ascii?Q?GtCKTyObfTSE51A/uPZDnzvPtZqfNPpTesNGZ/qChVZmD95s/AU2tCzoyKe7?=
 =?us-ascii?Q?2xxlGEep81JW0wVG4IecdPfhUXuetgurhr9gz+0mTPabIAIifaCUchfuZ2dh?=
 =?us-ascii?Q?ZbpsZSXu8HtCGyYInaRLgnS/Mz5JHzEsbzAI/gO04fWKz5XMTVCMpP9FOqWh?=
 =?us-ascii?Q?SVhqe4nUvtFrIcpq4NmFPpneGZxIbAZZI6QiMSvMVNN/kiBM3zX1XmlHSX9n?=
 =?us-ascii?Q?6mlhNB/eLus2QKBAAlfTz7dC/8TtlJYceSWLwq+EmPXS+jaXpOxFGKAynDZF?=
 =?us-ascii?Q?Xh9jRkyGVnDWk8DbNuanJMaHShQn2+7VKODpPSbl1KAvkVDq14aR+vEuMRZy?=
 =?us-ascii?Q?AKYd3E0tx4t8b800MBGYwzhEITLiIjW4MuniDZWPYXASu4A002NKJuR29wlR?=
 =?us-ascii?Q?EIOlRZWir8olmE1IpBX+eZN6JkbCwgaAqGBPq5d0IPkE4FhU9HQni2mnu5Tq?=
 =?us-ascii?Q?QOcz6tpuND8uibe4oL3XaEuyVXlKjvIfA2OYDu57QZek6Rkr8toCw+G0BzJg?=
 =?us-ascii?Q?6PWpHox7V8vnNb9N+VPWpXhJ32r4lGGN/XT1RX3HmRbnhBYAFe+EuZ5r/lFK?=
 =?us-ascii?Q?A9YxYtPsKQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 732fa828-85ea-4dcc-e51f-08da126e3d72
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2022 16:56:31.1144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hg7pq6YM7zxVZ8lG6xCyX8uTWeJMehwdmDL6C5E0OnI9DVZKx961BCX4+qHK1aEzwp5A3RY0SpKLNmo44ADmj0eIflNqcQxuybKRYMyt24w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1787
X-OriginatorOrg: hpe.com
X-Proofpoint-GUID: 3PTR5d7_VSksBVdkLoz4ERo0N0miha7I
X-Proofpoint-ORIG-GUID: 3PTR5d7_VSksBVdkLoz4ERo0N0miha7I
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-30_06,2022-03-30_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0
 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0 clxscore=1011
 phishscore=0 mlxlogscore=478 lowpriorityscore=0 impostorscore=0
 spamscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203300084
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Tetsuo! Thank you for your report. I wonder if I can
 fix this issue by creating a separate per-superblock workqueue. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.143.35 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [148.163.143.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nZbd0-00050K-FE
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [syzbot] possible deadlock in p9_write_work
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Andreas Dilger <adilger@dilger.ca>, Theodore Ts'o <tytso@mit.edu>,
 "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "open list:EXT4 FILE SYSTEM" <linux-ext4@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello Tetsuo!

Thank you for your report.

I wonder if I can fix this issue by creating a separate per-superblock workqueue.

I may not fully understand the lockdep magic in process_one_work() so any advice is appreciated.

As I see it, if there's no shared locking between different workqueues, unmount should be able to flush only its own scheduled tasks (which should not conflict with any p9 tasks) and unblock the locking chain under similar conditions.

Thank you,
Andrew
________________________________
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Sent: 30 March 2022 05:49
To: Dominique Martinet <asmadeus@codewreck.org>
Cc: Perepechko, Andrew <andrew.perepechko@hpe.com>; Andreas Dilger <adilger@dilger.ca>; Theodore Ts'o <tytso@mit.edu>; syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>; linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>; syzkaller-bugs@googlegroups.com <syzkaller-bugs@googlegroups.com>; v9fs-developer@lists.sourceforge.net <v9fs-developer@lists.sourceforge.net>; open list:EXT4 FILE SYSTEM <linux-ext4@vger.kernel.org>
Subject: Re: [syzbot] possible deadlock in p9_write_work

On 2022/03/30 11:29, Dominique Martinet wrote:
> Tetsuo Handa wrote on Wed, Mar 30, 2022 at 10:57:15AM +0900:
>>>> Please don't use schedule_work() if you need to use flush_scheduled_work().
>>>
>>> In this case we don't call flush_scheduled_work -- ext4 does.
>>
>> Yes, that's why I changed recipients to ext4 people.
>
> Sorry, I hadn't noticed.
> 9p is the one calling schedule_work, so ultimately it really is the
> combinaison of the two, and not just ext4 that's wrong here.

Calling schedule_work() itself does not cause troubles (unless there are
too many pending works to make progress). Calling flush_scheduled_work()
causes troubles because it waits for completion of all works even if
some of works cannot be completed due to locks held by the caller of
flush_scheduled_work(). 9p is innocent for this report.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
