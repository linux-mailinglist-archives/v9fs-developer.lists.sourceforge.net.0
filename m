Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3220A4ED42B
	for <lists+v9fs-developer@lfdr.de>; Thu, 31 Mar 2022 08:52:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZofI-0002p2-5c; Thu, 31 Mar 2022 06:52:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <prvs=0089e9cf43=andrew.perepechko@hpe.com>)
 id 1nZofF-0002oq-VX
 for v9fs-developer@lists.sourceforge.net; Thu, 31 Mar 2022 06:52:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Js/d7IruxUKoK3teyve6NQgGwpRftjjb5uWGDMNt/+M=; b=HQv26inYIhxNFLHYfzVFFPWAji
 bhViIRNbvjxxnE1jQGkTwyaiEvm/y8As5phfEnzs9CAIfggus0WimtJEmvO9GtrS1ujffUVTGDW5L
 qbj0vz2RmNj5EgCVl72SBs3Vzsf4hMAJX/J1UOEoFGIFu5GEHZG/nO3BIArseh4EWr+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Js/d7IruxUKoK3teyve6NQgGwpRftjjb5uWGDMNt/+M=; b=BthTwjfrmc4wsdO9dtq+bLLo2U
 S4N+E66d5ZCe+FfNHbp/gTrJxA4VC5UXKyfIrsPpZnEfmO956CQ6fo7bfhmKQgmmwXQHsJx9tX5iw
 Sc92l1x9dp0MK0usiA3dxq832qJhq2T4P817IvhZWt/TEyyrnNlVgWdfkjhSYBzUtUtU=;
Received: from mx0b-002e3701.pphosted.com ([148.163.143.35])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZofD-0006VS-0s
 for v9fs-developer@lists.sourceforge.net; Thu, 31 Mar 2022 06:52:12 +0000
Received: from pps.filterd (m0150244.ppops.net [127.0.0.1])
 by mx0b-002e3701.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 22V51tM1019261;
 Thu, 31 Mar 2022 06:51:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=pps0720; bh=Js/d7IruxUKoK3teyve6NQgGwpRftjjb5uWGDMNt/+M=;
 b=NTNFb8MWViZ874c4/6v4NRxVpDgpuTT0/l/E6BI6wOlH/5r1FwOQSSzc/04MMmFXMHx3
 VWbvw3VRwaUzwvSmqYQppefisNn7szHIQe3ikOXxqyJWw6eWY6dypaZU7oLjXJSo4CgU
 sFFQ6IyplmQV9x65a2OPg5u6EvWu24vgorF27DwwwnI5yNpv7L5MMz6IU6+P1GnVHE/M
 MVxIsubAhqcbUM9waV5pyuWPAtmPxZuK2XIG9k7N3BzhY6oOAIcse4P5IVsuhV1INF9G
 aOO5/b4fA3dgeAwPEPJHHj6x1r+D/HFb9icXD7AoS34x2Pc+elPGM+GXAwv0DO6n1B/a AQ== 
Received: from p1lg14879.it.hpe.com (p1lg14879.it.hpe.com [16.230.97.200])
 by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 3f54s7hb7b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 31 Mar 2022 06:51:47 +0000
Received: from p1wg14926.americas.hpqcorp.net (unknown [10.119.18.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by p1lg14879.it.hpe.com (Postfix) with ESMTPS id 651E0131B5;
 Thu, 31 Mar 2022 06:51:42 +0000 (UTC)
Received: from p1wg14928.americas.hpqcorp.net (10.119.18.116) by
 p1wg14926.americas.hpqcorp.net (10.119.18.115) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 30 Mar 2022 18:51:31 -1200
Received: from p1wg14926.americas.hpqcorp.net (10.119.18.115) by
 p1wg14928.americas.hpqcorp.net (10.119.18.116) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 30 Mar 2022 18:51:30 -1200
Received: from P1WG14918.americas.hpqcorp.net (16.230.19.121) by
 p1wg14926.americas.hpqcorp.net (10.119.18.115) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.15
 via Frontend Transport; Wed, 30 Mar 2022 18:51:30 -1200
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (192.58.206.38)
 by edge.it.hpe.com (16.230.19.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Thu, 31 Mar 2022 06:51:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2QUFEoClckHNTIThD8dMXU19EKHWGO6EPg2IOswM8RRDlE7utJYRKcH8xQU1RwaAfTW+6M/EV98w+h3Xo4xG+MNujNp5IXZtY8zeGA4YJjKX0HTMNNuM1r1X/BjLbDpG10S7JGtk7pMrab1V8TGXLoNyDvA+G4A5JDNKGRZX+GE/5N/rVkbtds3lOAAzvskmAFu3AeLWkUqc+WwEydf06K4NRyz9SBQRUEutFh/LK6nrCkLqmzbhskNDOpeQgv6/KEj0CFDVVY8CVf6kAadp2EafofvlY9/+VQ5clpEziW67Lj7UJhzEPzwJLX9eEIf7MHGSlfLwG7kpGnR20hbLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Js/d7IruxUKoK3teyve6NQgGwpRftjjb5uWGDMNt/+M=;
 b=BvmDP0qE6O+kSrONp9MJgkDd/Kb3n3GvdTHmn3ZWz0zDnAll2Y4EYdNkMhZLp7z8G4V+woA6GjxhOL1vXNTA5keQrGh6489spV0BFfH3NBiCJxjeRTE06VG+5jgBGnBCX/tufrWP2Cq+hZ48ugMW4Dxr4dAgAJGc71gdhWHzkhC9QkuQBP/eq57USVDvNpCqNmRQTWwnwIHMC2b0rEZQQHuUObuXsmnABMgAPrwHZ7rOlg1RI7d5pSJ4wI6lJpqH8luLU9wOuH7s1sW6vuHyx0thlaoXcT5rnSqaczLz7e/eX9YMwjzyaEA4gDWCn5q6P3RuE1qehWg5LJwPwtxTyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:152::16)
 by MW5PR84MB1403.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:303:1c1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.21; Thu, 31 Mar
 2022 06:51:24 +0000
Received: from PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::95ef:2d0e:450:fb33]) by PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::95ef:2d0e:450:fb33%3]) with mapi id 15.20.5102.023; Thu, 31 Mar 2022
 06:51:24 +0000
From: "Perepechko, Andrew" <andrew.perepechko@hpe.com>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>, Dominique Martinet
 <asmadeus@codewreck.org>
Thread-Topic: [syzbot] possible deadlock in p9_write_work
Thread-Index: AQHYQ71yxfrX9jSBWkiiZ0lz+8F9YKzXK6cWgAAI3oCAAAVygIAA6tYwgABzpQCAAHdihw==
Date: Thu, 31 Mar 2022 06:51:24 +0000
Message-ID: <PH7PR84MB167984AF738B838123B650CDF5E19@PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM>
References: <0000000000009523b605db620972@google.com>
 <385ce718-f965-4005-56b6-34922c4533b8@I-love.SAKURA.ne.jp>
 <YkObebLZMp5AyRpr@codewreck.org>
 <fb5d20c5-36a6-2c51-288a-7cc1e0a76d3e@I-love.SAKURA.ne.jp>
 <YkPAkXVc4HZLUrGl@codewreck.org>
 <f593d3ac-b28e-3593-3cd8-8983b27e47a7@I-love.SAKURA.ne.jp>
 <PH7PR84MB167995181252E4B7E4541B64F51F9@PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM>
 <688b3c92-e9aa-f506-a288-646c5477f6df@I-love.SAKURA.ne.jp>
In-Reply-To: <688b3c92-e9aa-f506-a288-646c5477f6df@I-love.SAKURA.ne.jp>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 405dbc3a-17cf-9df7-bd11-a343ff3c5391
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2beb2800-309f-4db9-243e-08da12e2df35
x-ms-traffictypediagnostic: MW5PR84MB1403:EE_
x-microsoft-antispam-prvs: <MW5PR84MB1403EF447339570A922E7404F5E19@MW5PR84MB1403.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3GVge0lHJWuuZjG5SIjCDtKrIti/xMrvoKMYYwLg5NS9NsI6fZ8/2gJ3udCzcroTRkfCl/4uRfiBJaNIEfGkuYLjb5rDCPtZDOoyDl4hCvehfzYZilPGTP9NqQ52cPh6DfirkK+kq9AE/poQqLLeEo5sDI5xNWESXn5rfbD8I3+VZkK85rzzFQNs6yNZS+C3ItiPgadH6vItWgNcyPs4kxbTNDoMV/53+4OcetqOVY7oJPkeUhPTvOLGHvyTdJgqr8ZP7ZnH28CVLnKS11WA5fivWDozEL3M6olQ0wllLSu25xUjpLVeA1f69D97bnX15jNHH2hByvxtdxHAwm+kyl5HTCXpIptMBvFRLJA+L97OVpoc8h/S71aSFhIC4r1ULeHTNCVIauo3X3ErBCKGaSPhj2wYMhfkU86+I8xuWurJPwYxyvViCVVrB0GjrpM48j2jNv2+cYil57RoO3/SwMsQT5aGFeM9shIsum2I0l8BJEdD1K7B9XuwmPu0gSYpYMwaO5pAPT02Y1sFZBhKHRQEzlUXpCH+GSk/GieCJHHpeTzcy3VVki8cfMcRV0q6KKsZyyaQtSLQprSzkURFbfQ2MNtrwCVOhgV88ijGuFvcS4IZL0yuFGUy1+w1k52tfdWktwFSM75wOgPYC1ifb37XWXBBn69SpyS10kep8+Ljvj7IYBZahtc01FPsVMDRQ+rDmNinRm9eHtwDaHntCw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(64756008)(110136005)(26005)(7416002)(91956017)(66446008)(66946007)(76116006)(8676002)(38100700002)(8936002)(19627405001)(66476007)(66556008)(5660300002)(4326008)(54906003)(82960400001)(83380400001)(508600001)(2906002)(86362001)(52536014)(33656002)(55016003)(38070700005)(316002)(53546011)(7696005)(71200400001)(6506007)(9686003)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fp20h7cV5atgTGoQoGTluResL1t8+bFfAmtbZpG/NtG115dZAJQCh0bIa6Yb?=
 =?us-ascii?Q?WmF3LJbcWpOj8Oo2YcCI+8/Eo6TxnqLzTB78BeUqmaTDQNVbLf2/cUWNPIH4?=
 =?us-ascii?Q?HKG8ewxREOh+re69fCTv7rDH86wUaK9GY8ETexCFBOZENoxBlYRURpypgWjO?=
 =?us-ascii?Q?WEIdzWYi0mohZFg5+XrwD+40d0F1sOScj1CGYlxQpjDS77OAwfHsa+0QkZ4S?=
 =?us-ascii?Q?twMz3ykxDsT1HVL9LTbsN5z+gvhq2kUa9XRwEKnkH20keus4dgtaqj72CntG?=
 =?us-ascii?Q?0FXJBesr7fLog6aobfJXvVyed1jaGVrMhzHSpYDAR0Jxv7Q2mNr5MIATiJAh?=
 =?us-ascii?Q?OdBNX9WN6KziTbfrUXRtYjNGdDgrsOoI/KpHdVCSU83Zo0Nd3EYa58XRM/Xg?=
 =?us-ascii?Q?Zu2ocJNkxxJJrdxRpblqOAQbaDJchMeMhAsglg4KW7H7Qyrfs/f1Z+1feWbq?=
 =?us-ascii?Q?W9iGJO3CpJVxeGd0VVrFA9P7w7SCrT6aJhP2J5l1gWQUwyvxU57nmSNDSCRu?=
 =?us-ascii?Q?6gX0gEFWyi7/VvJ3mrK8obERFMSNqenVzL83ZHXOAnjjA2IpZ9gBxIWuUafo?=
 =?us-ascii?Q?KsXlRbydRZqFJfBF2cpz0/WquzkSbUkE68WKFv8EyL//TS6zlSOgydL/TLcS?=
 =?us-ascii?Q?H08/JAzmd0mJI7HMKkgiUkeSi0eLPRnnvW8H888TYjxk3Uxub1gYHmKJsDyy?=
 =?us-ascii?Q?ltBMZYM3B5W6gOBGirh9C5xe5TiFPHLWlGN6N8EMC4BgwfAFqwI8bLYCspDD?=
 =?us-ascii?Q?EV3sSAhhUjc1HphwEbDoiiCD1IJaFIHeQsOAEHAC9yahIBpG/gNiYiziLDjQ?=
 =?us-ascii?Q?3SssqouAI7uqCXYtlQHT910Acqo9UiyT6zVTk6WPYE9U/JyQmKAlXSWvgW2W?=
 =?us-ascii?Q?TGi/rBI+FO2NxUZredqE4sexsksfJqeOif9/mByuWiTXaKFQ7AbOFlO69xWm?=
 =?us-ascii?Q?8gkG7fwgpu/gugXzV58fORrNcUjxF7d4AziVLOp+9Vpf2fcQ2UcCf5WDMR7I?=
 =?us-ascii?Q?MjL4fFiAXNR+d9Sx+lM68arCnOy0oqngftDm02lEe6awRuFqH/58omFtsBtJ?=
 =?us-ascii?Q?L0o9Oc+ulnmh+3G8BH9M77jY818AdmjSjK/Ie2/c7Z3w8jjutAmC9rUA/lB8?=
 =?us-ascii?Q?hX4PUURxh8MIx6JJLCy0YbLnsgK4u8xrFcYjdvFEUtgpdb1RuA17ZfFW9DRe?=
 =?us-ascii?Q?yFXbg/wC4POMFAKB0cPi7YmDiyLqNAwE4obksoLY7dHWXIv4vKdydNAU2VOZ?=
 =?us-ascii?Q?UAmKKNgrmsD28z9EoJOIpRejthDSuwf4amrhnY5DnETT0aXWB8Wu3dsjSEe4?=
 =?us-ascii?Q?tlENMRSHYT9mDpexPRXJ0o+kvmbJnvk0agMon07q7T7AzL4nle2jNy1EQEV/?=
 =?us-ascii?Q?NWMROr30IxzD9/bUlNVtcPF8nNV+PRao9aRKJJbcQx0KeX9PT3ut09tRYkDQ?=
 =?us-ascii?Q?+Y/yJYU3fCkCmqqRn5iMl2uVn+oMq4LYKIGUn9TuaqXj4XctvKtkE9Mul0xs?=
 =?us-ascii?Q?oJl0jBevV8amS+4rHPoxIWVi1Jt9oVZrzxeBZnNRwM2HStB874jzysPxBHe7?=
 =?us-ascii?Q?yBrttzbTYf64nxiEnnDYlNzgKwkVLXOhDid8ai4Z3n9XisMR6Q8zKE//IiGl?=
 =?us-ascii?Q?QVbne5yeANgPHjQHjOFfha2eVO5sSokJl8YdKxLuIvhz1dDu/MI0I7NVKPD+?=
 =?us-ascii?Q?MvVapIIpx4cOWfmcnqKM12cyWqTbQlLyiMSbChQBnXc+0CiPYGy1KB69H+mL?=
 =?us-ascii?Q?Acx0XijUM+Du++RkRK2+lgO7GasEPgo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR84MB1679.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2beb2800-309f-4db9-243e-08da12e2df35
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2022 06:51:24.2119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BPXOhdtRqXpVw+0llv0HTjSfXf6a2peJ0fV5BBT33kLn/ozuIJ4inMkGcp/7EEqM6GVAWeu+4aOBOy63qw2Owt6HEA6B5Qbnw49tFgnrgu4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR84MB1403
X-OriginatorOrg: hpe.com
X-Proofpoint-ORIG-GUID: vGke604PUO8Ms9RjH5bR35KJ5vrCKj8P
X-Proofpoint-GUID: vGke604PUO8Ms9RjH5bR35KJ5vrCKj8P
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-31_02,2022-03-30_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0
 mlxscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=684 adultscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1011 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203310039
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thank you very much,
 Tetsuo! I will rework the patch and resend
 it. From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp> Sent: 31 March
 2022 02:43 To: Perepechko, Andrew <andrew.perepechko@hpe. [...] 
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
X-Headers-End: 1nZofD-0006VS-0s
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
 Tejun Heo <tj@kernel.org>,
 "v9fs-developer@lists.sourceforge.net" <v9fs-developer@lists.sourceforge.net>,
 "open list:EXT4 FILE SYSTEM" <linux-ext4@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Thank you very much, Tetsuo!

I will rework the patch and resend it.
________________________________
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Sent: 31 March 2022 02:43
To: Perepechko, Andrew <andrew.perepechko@hpe.com>; Dominique Martinet <asmadeus@codewreck.org>
Cc: Andreas Dilger <adilger@dilger.ca>; Theodore Ts'o <tytso@mit.edu>; syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>; linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>; syzkaller-bugs@googlegroups.com <syzkaller-bugs@googlegroups.com>; v9fs-developer@lists.sourceforge.net <v9fs-developer@lists.sourceforge.net>; open list:EXT4 FILE SYSTEM <linux-ext4@vger.kernel.org>; Tejun Heo <tj@kernel.org>
Subject: Re: [syzbot] possible deadlock in p9_write_work

Hello.

Since "ext4: truncate during setxattr leads to kernel panic" did not choose
per-superblock WQ, ext4_put_super() for some ext4 superblock currently waits
for completion of iput() from delayed_iput_fn() from delayed_iput() from
ext4_xattr_set_entry() from all ext4 superblocks (in addition to other tasks
scheduled by unrelated subsystems).

If ext4_put_super() for some superblock wants to wait for only works from that
superblock, please use per-superblock WQ. Creating per-superblock WQ via
alloc_workqueue() without WQ_MEM_RECLAIM flag will not consume much resource.

If ext4_put_super() for some superblock can afford waiting for iput() from
other ext4 superblocks, you can use per-filesystem WQ.

On 2022/03/31 1:56, Perepechko, Andrew wrote:
> Hello Tetsuo!
>
> Thank you for your report.
>
> I wonder if I can fix this issue by creating a separate per-superblock workqueue.
>
> I may not fully understand the lockdep magic in process_one_work() so any advice is appreciated.
>
> As I see it, if there's no shared locking between different workqueues, unmount should be able to flush only its own scheduled tasks (which should not conflict with any p9 tasks) and unblock the locking chain under similar conditions.
>
> Thank you,
> Andrew
> ________________________________
> From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Sent: 30 March 2022 05:49
> To: Dominique Martinet <asmadeus@codewreck.org>
> Cc: Perepechko, Andrew <andrew.perepechko@hpe.com>; Andreas Dilger <adilger@dilger.ca>; Theodore Ts'o <tytso@mit.edu>; syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>; linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>; syzkaller-bugs@googlegroups.com <syzkaller-bugs@googlegroups.com>; v9fs-developer@lists.sourceforge.net <v9fs-developer@lists.sourceforge.net>; open list:EXT4 FILE SYSTEM <linux-ext4@vger.kernel.org>
> Subject: Re: [syzbot] possible deadlock in p9_write_work
>
> On 2022/03/30 11:29, Dominique Martinet wrote:
>> Tetsuo Handa wrote on Wed, Mar 30, 2022 at 10:57:15AM +0900:
>>>>> Please don't use schedule_work() if you need to use flush_scheduled_work().
>>>>
>>>> In this case we don't call flush_scheduled_work -- ext4 does.
>>>
>>> Yes, that's why I changed recipients to ext4 people.
>>
>> Sorry, I hadn't noticed.
>> 9p is the one calling schedule_work, so ultimately it really is the
>> combinaison of the two, and not just ext4 that's wrong here.
>
> Calling schedule_work() itself does not cause troubles (unless there are
> too many pending works to make progress). Calling flush_scheduled_work()
> causes troubles because it waits for completion of all works even if
> some of works cannot be completed due to locks held by the caller of
> flush_scheduled_work(). 9p is innocent for this report.
>
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
