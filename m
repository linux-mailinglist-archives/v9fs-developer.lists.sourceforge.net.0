Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBAF47FAD3
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Dec 2021 08:58:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n1ku1-0005m7-Mc; Mon, 27 Dec 2021 07:58:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <vvs@virtuozzo.com>) id 1n1ktu-0005m0-EI
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Dec 2021 07:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kecR/ln4wleXkwNOmCxK6PniUsBTHjbweItCaUdE7GU=; b=JlciFEvNMx2mRbjPumReAp/yV3
 DLoNZ5CiVVqVyxHm3+jHMPeAGRjgYJ9DRPbRkzT0/uvOkydUwiQZbvT607kOBowsMyAXmRwPTdzmw
 5kLK69fatfvWHcvvVDuWdq+58+DJf3tR3So0NxEwmcc/9H37HbqfIVgG5l2QUktym9H8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kecR/ln4wleXkwNOmCxK6PniUsBTHjbweItCaUdE7GU=; b=FbcLpmiEHl2+8lOETxZZp03GNk
 dO/tkFqu8J4cGV9QUVkYOmWV93h1TU3L8514RZ19lXPzbkwNYzNQ04t0URoArMWGv8V6yBIUWL67J
 JyYKizbwofrAtnbNBLjWz9FTf8JRF/+EW6mF0aYgVfjP3tYQz1ClwZEvepj1Gj5CrlXs=;
Received: from mail-am6eur05on2111.outbound.protection.outlook.com
 ([40.107.22.111] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n1kto-00Ag5Y-58
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Dec 2021 07:58:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HNgaazOLLS1DkohRo9RCQcCVT6po/rPKMyFAfucp95u16vYb3yZLaXWmlQ4s2sYt9DDDIXWawm1FSKFZRaDIpHAPlYN2cukZECmqGo1cDL9CmbcOkt3uje6tCmkInyvqiYH5C907QPeuGaINufBJea90p0K4uJAp6eh0tHP3TpY2PY6Cl4T52f7ihWHviNZoaYrrzKUz0c8rx7kLA8/F1cN1N1Bia1pgM+WzEPohA/G45fZjf4rAmVRnUb1jaUH6fyNMlFZGTeZAthVUbWJa2pTVjHO305e4C5MY9ZFbK02LryO7biSBnG6cSX3+VPCrQ7hFdRYeQGld4l8AdP0IIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kecR/ln4wleXkwNOmCxK6PniUsBTHjbweItCaUdE7GU=;
 b=TjfsIzqtft0TP9wtI4YwtYnpEDhf8JyjpGqrwyj20KXhOcpGXUdPzQFRsm0/qGT4LYfjHwyJs82eL+WJ4rygD5Qp28FB3Qf4wh+CV+7R7uOAk15godmWcnT0kNjbeefleHA3vf/V4kyVBf0zEXCNV/mxaZJXsR/rHMvJrP2QZ2o5MOS4YJ47uPuah7Zz7SBRUyzkXLHZHbI+7x7A5TC/3bApCdo3HkGMqxiDVMSmxNA8yFz4dl0Ypv9BTDqrQTE6OY2ejNyGokcM5HCoSeQauHReUwGJHLpMK77utDPgGRTA4iO6gasISsxqxufo8pVa2b9RwQQV4jtYMj89RNE/Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=virtuozzo.com; dmarc=pass action=none
 header.from=virtuozzo.com; dkim=pass header.d=virtuozzo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=virtuozzo.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kecR/ln4wleXkwNOmCxK6PniUsBTHjbweItCaUdE7GU=;
 b=OcxkeJ6C0Cvz1CD2PptTAhPzpm4usiNJqbFKUfXFeiZWoJSV1AZWu1BzbDDWBlH9Tj3KO+guI7ZbCOuWrheLLhD6J+gGs4mrjLax5e5BxE1oiPVXY2RyFkcOZivjl6ylBNBzVMDU2CGffdK9W68bwcy0GwGEke2MJ2ZdJZMl7Is=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=virtuozzo.com;
Received: from AM9PR08MB6241.eurprd08.prod.outlook.com (2603:10a6:20b:281::21)
 by AM4PR08MB2836.eurprd08.prod.outlook.com (2603:10a6:205:d::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.19; Mon, 27 Dec
 2021 07:42:49 +0000
Received: from AM9PR08MB6241.eurprd08.prod.outlook.com
 ([fe80::f9ca:fe00:10da:a62f]) by AM9PR08MB6241.eurprd08.prod.outlook.com
 ([fe80::f9ca:fe00:10da:a62f%5]) with mapi id 15.20.4823.022; Mon, 27 Dec 2021
 07:42:49 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
References: <YcXfm6U/6+Xmv7be@codewreck.org>
Message-ID: <5ec8d1c6-e410-e297-0d3a-037c7de30b6b@virtuozzo.com>
Date: Mon, 27 Dec 2021 10:42:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <YcXfm6U/6+Xmv7be@codewreck.org>
Content-Language: en-US
X-ClientProxiedBy: AM6P194CA0060.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:209:84::37) To AM9PR08MB6241.eurprd08.prod.outlook.com
 (2603:10a6:20b:281::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d965b5df-14fc-49ef-1366-08d9c90c7b3f
X-MS-TrafficTypeDiagnostic: AM4PR08MB2836:EE_
X-Microsoft-Antispam-PRVS: <AM4PR08MB283614B27AFBDB2FDF578510AA429@AM4PR08MB2836.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aGF0Ias+JD2Gm1dWFA083DCeM1ZoSaXYZyoqAGC02yHeW2tJcOaHnmziVth+W2aDvlWAEy3NRdKGvYrpYHnt11UYDsGjif/Hv96qi4fIOV5DC5SMd8cbH9FI9FAMyVx1vrYU7IpQMLIbdE3ediCBFFsDmU8tgTeJI2u1k8sIEF/4GCMw4HMQI5UAQSM7wlRuK9OIWipvpv4/GZVnXi9odG/tT/lHvmyTD9UqH1TmxapEb0QFypIOgQ35e1pY6OWgLEanzPyJCogopMXO0pSVnirJXpr3Gt4dFGeQSeRITWqNUbDYoqJr4LwINTg+/Uxkmy99H5mNVVgismCwdfqMYKrMLEozdBOnQDx9+PS55rnjCArLJ9Xk1j00QtN24XxOVOu8Hrx6JucNR+gRIFbJghpntw6K2ruAo7UyhRlUnB5jjE6Ad99wQfAxdu9XSvYMCFdvW85X0ewlNXgFCcuvw4YhhMTrne5y5v4Y1AZuEiZ5y27Y+le9GzA4UXCr25Ebmo7i64a0ryPrPXJUjOFoddJpu9sLKzavt5OV2pZMnk+jfIkv/r78eoKwH5lZMi2ze4MI6RJQUQLAzJKWg6WAlzBjrkz7d8ja8jij+zBt/W68JEoZq/KEajF0fO7SsIRlg+pRvSBszILhQpGAGQBB8hy8Jq6CIbrt9OCZQtbMXCjNlEwiMqaISigfSoY3KOAbdqK1Px2iZk77DZ5vgTbrUVyEfmelllmpSVsWRdjFpwkrjwWTAQwlwzjtREEp2QrQ0rWR9FRz9SQWGdVcjeDDLA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR08MB6241.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(316002)(52116002)(186003)(31686004)(54906003)(6916009)(38350700002)(5660300002)(86362001)(8936002)(2616005)(6506007)(31696002)(66556008)(53546011)(8676002)(66946007)(508600001)(6512007)(66476007)(38100700002)(6486002)(83380400001)(36756003)(2906002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWlZMlorMXQxOEgydHN2ZFdNN1hGNTNyMXpDWlU3T2J5dHdpRWhNMkxGVmJD?=
 =?utf-8?B?elVDOEY1YXdmNmJESklCZGFlZ0M5YXJpT3ZMMW9wNGRYT1MrQ3pyNmNFZWU3?=
 =?utf-8?B?TDhpTW5OMXpoL01nKzViV3BNL0VvUzdDenZkZjEvM2x6dURPNi81ekxRNWVa?=
 =?utf-8?B?TTQ5amlYMzZXTUozL2xZbkVtTzRVdXJMYy9SaWFSRWJ5U3RiNGFudWh3NGla?=
 =?utf-8?B?L0dMeGNsVDF3LzVad2FQcEJxK1ArRU9TWmpzMDFDR2tERUNuTnVMSUVIWTAy?=
 =?utf-8?B?eWptcElXeGNqczRob1lFSktHSDVWL1Q2VVpmZEQ1K3gxYVVjWTUwRFh3Ky80?=
 =?utf-8?B?NUVIZFV0SkJHbGxSRHZGMDRRblFtV3VuMi9zVlAwWFRnaVNEenlPenFzUGJ1?=
 =?utf-8?B?bTVRdFhncWh6MkJPWThnU2U1ZFo2U1pOZjVCWm44dEh4Qm5uakpmYVFZMzE2?=
 =?utf-8?B?SGlYVndVYUh3UHU5cVk2MmxONjFHRWZ1YzVsL0pOM0RjVnpSaW1wMTNObVJp?=
 =?utf-8?B?TmU3U1JhU3ZGREwwRUNEV0pJL0xQQ2lCc0g4Q1VTUHpnTkFnRmVkZGxMY0xp?=
 =?utf-8?B?U0RZVjFrSmY4TE1tay9wSWhNblJZT2ViMVdBdnNtQlpQVzQ2YS9yNG5VTlVs?=
 =?utf-8?B?TXJWT2RpYUlzK29MV0lzSGd1TjNtbGVSSkc3cW5zT2JpYjFCQURRbm5pdWkv?=
 =?utf-8?B?SmJUQVhlYzVzTHI1UldCTUtUTWJub1puM2hFUng5Y3N1VFZQVHQvL2pLQWQ2?=
 =?utf-8?B?MEZWRmt3QkQxQzRLak1JTm84QzlkaXpPejFMSEh0eU1MelhnNnc1M0tBWkNX?=
 =?utf-8?B?UG9peXJlODh5UmluL2NxbmVkSXphdFJkMHh3WG9XV3VpL1pEdEhZREZyT1JZ?=
 =?utf-8?B?RnhGbXVWTEp6VTB4K0lQeFBuR0NRVWVuWTExWlFpWVNGRy82WmRPSTJVeExL?=
 =?utf-8?B?cXJ0VzhwRWNRYUoxYWNXQ3EraCtjVGhNMEN5cksxc0drODJzNTg1ZGcvanhm?=
 =?utf-8?B?R0NDZEk0TkJTL2UvVWt0MjA2Uys1UUQzcE40YWg2SXFLaVhVdmVMUGZ0S2RV?=
 =?utf-8?B?cnhZaWlsSDVYeVlNK3BGanVXYjFid3JZQWMrSU41L0V3Vzg5RkpuODVKbGlX?=
 =?utf-8?B?YzRCN2IvdGpZQ2RGL1hHemRrTjNDZ1kwSmxBL01Tdlg2WDVVWnE4eXdtS2Qx?=
 =?utf-8?B?b1VyeUszdUJya0U0ZlhSUHZrZHZaSVJvekJZaExWRk4vYWdZQ2RyNlJ5cHpC?=
 =?utf-8?B?KzBTL2ZGdU1CQVY1cVhmMytOR2FxMmRQMWJhSlFyenN4blBadC9UT3htYUZC?=
 =?utf-8?B?S3RyZEZ6UzZXZWppSzhWS2QxUzNOSktOT1hpVkgyT2tqYTEvS0kreFE1dHJ2?=
 =?utf-8?B?RGIzTlVleDhjRUhpWlBBOXc0Sk9kWjU3ZXIvQ0t0eHo4V0s0U3FOTE12ZkxM?=
 =?utf-8?B?T0ZOT1BxVmR2ZnVJTEJVMnJyQmk2ODROb2psT25PYy9DUm5NUm5Kb0JJS213?=
 =?utf-8?B?UW9NdXhtWFp4cDVwR3pVSDQweGpNSnFkcW02dWk5UHU4ZnBLQy90SDg5TGRk?=
 =?utf-8?B?MGl4UXhJUWVnRWVhVjB1OUh0NEZ1ZkM2QnVGRmtHM1czM3JwUGNVZGJldE9C?=
 =?utf-8?B?RXdEcm83RjVBRHQ4QkoyMHk3dG00dk9yZ0hGdzl3ckxKdWg0TW05M3JlMk1W?=
 =?utf-8?B?cWprT3pIVmZyRzFVMEZrZ2gzZG9KQk9CT01HNGg3RHZXK1BTSjdEUkJqNk5R?=
 =?utf-8?B?QXhCMCt1WnR5Q1FRTk5DUFBIZjNSUnlZaVgxc0hpbjVBUkNzYXZibndrN3lw?=
 =?utf-8?B?UEhtbWkrUWQrWXc4ZEhvb2huUVBwajZCU1QxUVRDd2MvRmM3YkFuSmNWbFlF?=
 =?utf-8?B?THdWZzllSFVOTTdNa2NFbEZHaXc1TlVISTA2WkgxN1J0Mlk4VmxFZXFxeXFm?=
 =?utf-8?B?enJQekZKUDBYQmhjM3hJNGl3eElQdjREQTRGS2Npb20vanNvYy84dnhyTHFu?=
 =?utf-8?B?czRCMlpyQ3FCSjVHZkt1dlBJWWRGMFREblRSR09FOVhxSC80MWROc1IyWFRY?=
 =?utf-8?B?aThOTVFYWEVtQmVESWhPOTFSeDhZcDFsWi9uckNKTFFSVjVFNkFJRndnU0NH?=
 =?utf-8?B?YkVoUEFoTnhHaUxIWldjSklRRHR4UUlwWCtGV24yTFdlUU5wR0kwMVViZTdM?=
 =?utf-8?Q?5vEzAyBFx3NVOeeCeV1crqM=3D?=
X-OriginatorOrg: virtuozzo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d965b5df-14fc-49ef-1366-08d9c90c7b3f
X-MS-Exchange-CrossTenant-AuthSource: AM9PR08MB6241.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Dec 2021 07:42:49.5575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0bc7f26d-0264-416e-a6fc-8352af79c58f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z0n0dQwCEo2cpHoW4FdspzAuBiazhFnRQMrHhxCOoq8+4PivfIXPpnebKKJBukZI/IRtzKp3sTXVjWUt0KwBeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR08MB2836
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 24.12.2021 17:56,
 Dominique Martinet wrote: > Vasily Averin wrote on Fri, Dec 24,
 2021 at 01:18:54PM +0300: >> diff --git a/fs/9p/vfs_file.c
 b/fs/9p/vfs_file.c >> index 612e297f3763..27ede4a4a6f4 100644 >> ---
 a/fs/9p/vfs_file.c
 >> +++ b/fs/9p/vfs_file.c >> @@ -142, 10 +142,
 15 @@ static int v9fs_file_do_lock [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.111 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.111 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n1kto-00Ag5Y-58
Subject: Re: [V9fs-developer] [PATCH] v9fs: handle async processing of
 F_SETLK with FL_SLEEP flag
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
From: Vasily Averin via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Vasily Averin <vvs@virtuozzo.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, "J. Bruce Fields" <bfields@fieldses.org>,
 kernel@openvz.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 24.12.2021 17:56, Dominique Martinet wrote:
> Vasily Averin wrote on Fri, Dec 24, 2021 at 01:18:54PM +0300:

>> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
>> index 612e297f3763..27ede4a4a6f4 100644
>> --- a/fs/9p/vfs_file.c
>> +++ b/fs/9p/vfs_file.c
>> @@ -142,10 +142,15 @@ static int v9fs_file_do_lock(struct file *filp, int cmd, struct file_lock *fl)
>>  	if ((fl->fl_flags & FL_POSIX) != FL_POSIX)
>>  		BUG();
>>  
>> -	res = locks_lock_file_wait(filp, fl);
>> -	if (res < 0)
>> -		goto out;
>> -
>> +	if ((fl->fl_flags & FL_SLEEP) && IS_SETLK(cmd)) {
>> +		res = posix_lock_file(filp, fl, NULL);
> 
> Should we also check fl->fl_flags & (FL_POSIX|FL_FLOCK) like
> locks_lock_file_wait does, to call either posix_lock_file or ... there
> doesn't seem to be an exported flock_lock_file equivalent in the other
> case, so back to wait variant there?
> (or rephrasing the question, what happens if the lock is a FL_FLOCK lock
> and we call posix_lock_file on it? Or are we guaranted that if FL_SLEEP
> is set we're about posix locks?)

SETLK with FL_SLEEP flag can be set by kernel export threads for posix locks only.

> Vasily Averin wrote on Fri, Dec 24, 2021 at 03:07:38PM +0300:
>  > On 24.12.2021 10:31, Dominique Martinet wrote:
>> It isn't necessary to make request asynchronous,
>> it's enough to avoid blocking locks.
> 
> Well, it depends on what you have in mind with blocking.
> A synchronous RPC to some server which might never reply if it doesn't
> feel like it (bug or whatever) is very much blocking in my opinion.

The main goal is to avoid deadlock of server threads.
It is acceptable to sleep or process such a request for a very long time,
however it is unacceptable to wait for another command to remove our lock,
because there can be no available working threads to process this command:
all of them can be busy by processing of blocking locks. 
Thank you,
	Vasily Averin


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
