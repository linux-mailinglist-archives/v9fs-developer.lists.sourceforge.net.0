Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A18C47EE3C
	for <lists+v9fs-developer@lfdr.de>; Fri, 24 Dec 2021 11:19:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0hfK-00019l-GI; Fri, 24 Dec 2021 10:19:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <vvs@virtuozzo.com>) id 1n0hfI-00019S-RR
 for v9fs-developer@lists.sourceforge.net; Fri, 24 Dec 2021 10:19:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OJ3+bGDwwXus2qDNZtWNH5WQm1Gopa+DRP7n8G5L3MI=; b=a4kA1A7aquBJ5GV7cH1CWVGTIj
 hUDwg1pMWe3qL6wmKCDr0vMNErA3Y4pTgefrgAkguBr9i/Swac0SqhTYPH+8BMKuzVXsT5AE6K/XZ
 K5ptD72fa5+thz5lzLgpteltSOKJlVw3D5sU1/rLje6sSuMnmwN9pFqDko/VoFKt2rcU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OJ3+bGDwwXus2qDNZtWNH5WQm1Gopa+DRP7n8G5L3MI=; b=nLUo2kgRITcHv6dbmNLFNX0YS7
 FWYF9OJEO1m9/FZwug1pOagZ32SoFeazk+S521irjfGNkP+DQusUPKn2xCpOFt2PHQ8pWTVOgp17l
 5NaQgWVpGIBbxrin1o8mtt04OJXGTA28GhHwIk6wTtvirhK1UoI5nQOM+tD8mD2wN4NE=;
Received: from mail-eopbgr80130.outbound.protection.outlook.com
 ([40.107.8.130] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0hfE-0006EE-Km
 for v9fs-developer@lists.sourceforge.net; Fri, 24 Dec 2021 10:19:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zy7fm+d8VUpfVpIK+4pZA1CCmPO8izzbp8vKZGYAQaNKWe4JYKo9SWTce3RsvjVDk6CeMBiyYQQmmwWtV423QXMyFkR7vtYW9cOlRnpQYfAX9tZ3UuWvPbyHzHAN/opD1QaoUgE+Ytei0mzOlYWjp30IFkS2Frft8dPy+XiXBGcATeDtk145F0YD3dyWX/Wm8Kl3z3M7RMnzlNQurJ9iXkcQA4oEh1EKUTffGn3EKU8VVUsbL3uE+z38JTJt3pRdJSaWZVJQWvCvQ1FNFj8sgEN/d0i2NRLKZQzxf9Sf+oB9IpIMLmmSQjDlqwx8wq9ePjpUBhbgvKnfmNHI7xVqkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJ3+bGDwwXus2qDNZtWNH5WQm1Gopa+DRP7n8G5L3MI=;
 b=befFq0Clw04qDJtKmDHuuOcJZQdoCe38BBuboi2aGKYwDag/ti+sVWMh6jU5c0C5GVZnjHORG/3CyugfbVoDK+RlpZ8Wldx1oEiGE79llj0j4pX0bM6CcLSxRZ9Uf8x6eJBmQ8bgF65bWQs1TpGbD8L5DbohtuS5uP3H8Hv2a4vyhW6vZADjsESQyQ/CbVAsb1AubWEsoVP7JmIMTd0UuKmWUvAHh+xIs1U0ei4wKWMe0csGDzlcUTt/HBytTq+H+nYIxcm+59I3unIm2YZThGXjbrLVbFin6IpI4nOALl6l3LajENsUJAU20RxFIlsY6C2tT8kp7AVHzx/KsaIIWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=virtuozzo.com; dmarc=pass action=none
 header.from=virtuozzo.com; dkim=pass header.d=virtuozzo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=virtuozzo.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OJ3+bGDwwXus2qDNZtWNH5WQm1Gopa+DRP7n8G5L3MI=;
 b=wlicWuQHfgBvLvPZ9AAQPFalPEVWIOMqX9UPe0x6QnSu/sr2FPtH0HOBJNpekCy+VEXJgIA18pspmBsDnW4N0NpgYVX8NnhsJ3oZd77GXbKzqSI36h8F//Cn5iEfX92lSNHZNKHNAsO6AVtCnLwYkJ2ajbSOldWF2w3ju820EAM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=virtuozzo.com;
Received: from AM9PR08MB6241.eurprd08.prod.outlook.com (2603:10a6:20b:281::21)
 by AM8PR08MB6434.eurprd08.prod.outlook.com (2603:10a6:20b:369::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Fri, 24 Dec
 2021 10:18:56 +0000
Received: from AM9PR08MB6241.eurprd08.prod.outlook.com
 ([fe80::f9ca:fe00:10da:a62f]) by AM9PR08MB6241.eurprd08.prod.outlook.com
 ([fe80::f9ca:fe00:10da:a62f%5]) with mapi id 15.20.4823.021; Fri, 24 Dec 2021
 10:18:56 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
References: <076a9ce6-ae06-5b3e-f577-d993e55089f1@virtuozzo.com>
 <YcUCvUF10TKg2wDI@codewreck.org>
 <644227dc-4771-3111-aabd-20ac12b69a2d@virtuozzo.com>
 <YcV3XDFw5sMyvTVL@codewreck.org>
Message-ID: <05ab1af5-9b5f-f505-2a68-c90f50a1fb46@virtuozzo.com>
Date: Fri, 24 Dec 2021 13:18:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <YcV3XDFw5sMyvTVL@codewreck.org>
Content-Language: en-US
X-ClientProxiedBy: FR2P281CA0026.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::13) To AM9PR08MB6241.eurprd08.prod.outlook.com
 (2603:10a6:20b:281::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dd39ceb5-7353-4431-1767-08d9c6c6cae4
X-MS-TrafficTypeDiagnostic: AM8PR08MB6434:EE_
X-Microsoft-Antispam-PRVS: <AM8PR08MB64349841813D8DF209937C45AA7F9@AM8PR08MB6434.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0t2RdL8iVDxL9F+yZmCix5U/+a4XJ7cYH4dHFxM1AI4hdWAGeS0mfq65ymIOL74au1LqNLiaEHoNKlsR6wOt8SMQohRa+SOsTmk+vYUJ20LzKy0RuNyZho6WW1Zg1JCYXcCmSRV0yB9nAvbv4b+cz3oDP1nyd42wh69jCHIazfJzhuvJpXPoPt9HAp1t7gYJc+WgKPPM/mcoDq8KQ5fs1u10X9cH4+IRQ13O1lhZg3khDcxzpGM8WDb3amcJGOJFJvL73O1rimYhyysMPR1gFgqdkZVip8H+2vWrAHs3TgQqy/VrT6PJ3YkKbN7APuS44EU9oZVM1qBo2NLlinHNl+VWVuZpUhXreacUBRzTczPPVXgBttCzwysQY1yKfDYXoQBFgBdyVkV8EizayxVYyz7ZIcgmKqSbEGD8gcngqgSvkFCOpsm2DHANJg8J+fBq7XIAxG4pkKNGHvPsehA0Xg8S2W48y5qY8LqtocDMSpGeOb4PuJpoBUsx+EaRTY00t0YFZzk4lVtTtEwh9RbeHBIay+fx4Br+Al5kujPukqGHIcADaoaSYt8rtbehkiGPoVuAS2UmJA0ymS1KDu6dHr8+qhEDBuBn5MRJ/sFymFGfAiG6bbQ3QMB+4M69OBIYsYLQkxJp4ZGX6xVjgeejYP7BaF7ZorYx+Trw6ITXd5O08/hvzlMHwVHc0laXbOUEU1LxuE0xbbU9XOdf05UeYN+sDH5SJyHLMsKpv4bqQ766nt2pY9PQh4vXukCtKmRxwG/pJ8sPLl/u5ADUpcCDFQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR08MB6241.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4326008)(6486002)(2616005)(6512007)(38350700002)(66476007)(5660300002)(38100700002)(66946007)(2906002)(31686004)(86362001)(31696002)(6916009)(6506007)(52116002)(53546011)(83380400001)(8676002)(186003)(26005)(66556008)(316002)(8936002)(54906003)(508600001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXJFUFd3Um04VXNvWVhLaFJnRUNsSU5pQjAwbDJqSGVhd2Frb2kveldmM2pC?=
 =?utf-8?B?bjBYUG4wak9saW1kZFJzZHlRd2ZTTDYvLzlSRTgyVlVUbjlHbFNZQmhtTEVI?=
 =?utf-8?B?Mk0zS3RIc1Budk9lRFEzZDFqR083WGluV2Q0TmJ5bmpMWjhlNEp2aldlNzNh?=
 =?utf-8?B?L0dyQ3N3ZDJNNUQ1b2FCOUpNWC8wV2t2cWNPdlR3TVBQY2ozU0VqZExQVEZ2?=
 =?utf-8?B?SklySXhDdUtQUW02dC92MU1NYjdSVFNacGxNbDM4RlVpSlgvV04vNkxtZmY0?=
 =?utf-8?B?QXJJWVhUSk00dDBBeXAyWFdSL215KzZTeC9HUS9wVGwwR3RyMjV5NSt4Sng0?=
 =?utf-8?B?dTdGdmJMNi9vTFF3Ry9qNUNTU1FndnJYTGRTYVg2N3FETW8xdjFHWXFLYWYz?=
 =?utf-8?B?alpyTXlGSHltWFlqaG53bXcweGtlaGdia0dxRGVuSXJZQkt0clduS05VSUJ1?=
 =?utf-8?B?Nkp5dDFxRVp0RWhDMmhtbVhzNFBEbmx6UFVuN0psd2VPNXZBVmpHQVpidS9l?=
 =?utf-8?B?WXpkdmRYQ1NyYjBkYStYWE44ellNb3dlaFFCUm5qdFlBVzUvcDMwUmtCbXNV?=
 =?utf-8?B?NHB5UDFHbFN3SkJZaHlTaGo2OVFPZFZjRFlFaEZESUNCaDc2MVBSNnpmTWlX?=
 =?utf-8?B?dnZyeUZHQUViWEEvWVQzWkk4UWx0cTQxNndVb1B4Q002cmUxNTRWZWlDYnJ4?=
 =?utf-8?B?NFpNSUNqOG1JS3g1TGVMZk5WbERJU0swYTlKREZzNTRvSndWa2NxZnVkRFhC?=
 =?utf-8?B?T1hwcm9XVGZlYkRvQVFlVkV4RXQ0eDNBU3FQUTJKNjhITjZPclZaOFduVG85?=
 =?utf-8?B?SzZsd0hLS3c4TTNCTVJpNmtudHNNSWIwMUNueUhVdGF5MnFzQVUrMDJXay9s?=
 =?utf-8?B?WitadldHeHJ3VCs0V1NGOVVpOXFOTkFjOUU2dVZCOWxBM0tQMW93dDdrcHc5?=
 =?utf-8?B?eXVyaVNDRHF1UG9qNktnVDdGZDRvOFd4WUFVRnYwVEV6a0lvOVFlLzlnd0Yr?=
 =?utf-8?B?NWxQZjg5RUNBZEJTSXdTL0l2QkpYMCtORmpVQm9GeDh4ZjRXbGFYVTZQbkJQ?=
 =?utf-8?B?TWtlbTR5bVRrY3RublZiY0hvVVVmNkZrMlQvTWc4a2M2ZitOL3duRlh6NEVR?=
 =?utf-8?B?RVorNUYra2lXMUtEVndLcUdCTTRuaFA4TXVyUUJRUVRvZGFoUFhCY2pwRklv?=
 =?utf-8?B?ckdYQlgrM2FkaFRxV2FvdldQdFZ6UVNDN3dySnF1TmhoMjk1dTJjS0o3dUNI?=
 =?utf-8?B?UDlkMTV3WXVRNkpBRUtjSjB2WWxkMUFpbk82WFcwVEVuT2kvK2pFQVduYTd0?=
 =?utf-8?B?SzdHTjlER0E3M1lyNmtScFpxazl1eDl1MTFSOWcyYzFETFZ3STZwK3FiYjB6?=
 =?utf-8?B?NTc5WWZ2TWRHUnZybkJUaENPa0xMK2xmNnYrbFA0Sk1tK0prZnVVbVdtM2tr?=
 =?utf-8?B?ZGRjL0dhQWhpUDU2Z1JlSDJUZU1GZFQySWtaRW14blpvTjFUSkY5elU4QTdr?=
 =?utf-8?B?YUJyUDR2VEh0VmV5TGdXcmg0NGsra1RidzlDMkRCSjZsL2hZWWZ2ejZJd1dL?=
 =?utf-8?B?cVFtcUNDOUpaN1orclJZYSt4OXJ6bWx2Y3pWMlhRamhSeG94bFFlZjdVN0VM?=
 =?utf-8?B?TStpd2VBUlFhRHVaN2VuanNPa2piblNLK0tzQm5nb0hvKzZZcm9WSjJPTVJj?=
 =?utf-8?B?M1QrVmdUcGJIVWkyM0JGNlRaWUovcytORmtOWGwyR3dxdlVtRXRyQmdYS01u?=
 =?utf-8?B?SXR5UldyemVDTWF0U1laaFpiYlAvekhZOU5VYkJSNTRIZ3VoYWg3VGZqYlcx?=
 =?utf-8?B?Ukg1RGtDRldzbkpyQ3NqYkloZ3JycE03YVhSZ1Avbnp3RmFpVEZQakxIQ3hk?=
 =?utf-8?B?dHlTR2R2UjJOS2w4Nm9IQW1KcmNucGNqVUR2dHAvSmxnSGtmb2oxQWlTR3hj?=
 =?utf-8?B?czU0djQzOG9JUk5kR2dYVHdnNWtRUHZhdjNzVWZJRXZsMVhrV25keWJ3dzYv?=
 =?utf-8?B?dGV3RWgwdFJOTStiM05PamJzbWFlbk0vNEVoOEhyY3I2dlJOS0IxOTMyNm5K?=
 =?utf-8?B?L1RIOGFnTUd5ZFNwOUc2SElNWC80L21oejh2eFUxSDBieERDa3huN2M1ZHJ0?=
 =?utf-8?B?OExxZlJBUjhOM2ljdXpSM3FEZEYrTDJGZzlEZ3dRTzMvQkkxRnhvclYzSE84?=
 =?utf-8?Q?G4GVRaYaLY0efLyXYWFB1/c=3D?=
X-OriginatorOrg: virtuozzo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd39ceb5-7353-4431-1767-08d9c6c6cae4
X-MS-Exchange-CrossTenant-AuthSource: AM9PR08MB6241.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2021 10:18:56.1436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0bc7f26d-0264-416e-a6fc-8352af79c58f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8cO5GCUOcmXWc7OrydQJhsYFxe2wyScVFjjXE4dOOSgKsC2QMaH0/GT+GXKN8Qo/m4ZCQPir5rjkniM4aKpFrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6434
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 24.12.2021 10:31,
 Dominique Martinet wrote: > Vasily Averin
 wrote on Fri, Dec 24, 2021 at 10:08:57AM +0300: >> Answering on you question:
 it's ok to ignore of FL_SLEEP flag for F_SETLK command, > > [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.130 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.130 listed in list.dnswl.org]
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
X-Headers-End: 1n0hfE-0006EE-Km
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

On 24.12.2021 10:31, Dominique Martinet wrote:
> Vasily Averin wrote on Fri, Dec 24, 2021 at 10:08:57AM +0300:
>> Answering on you question: it's ok to ignore of FL_SLEEP flag for F_SETLK command,
> 
> On the other hand, just clearing the FL_SLEEP flag like you've done for
> 9p will make the server think the lock has been queued when it hasn't
> really been.
> That means the client lock request will hang forever and never be
> granted even when the lock becomes available later on, so unless I
> misunderstood something here I don't think that's a reasonable fallback.

I did not get your this statement. Could you please elaborate it in more details?

Right now nfsd/lockd/ksmbd drop FL_SLEEP on own side, and this looks acceptable for them:
instead of blocking lock they submit non-blocking SETLK and it's enough to avoid server deadlock. 

If the lock is already taken: SETLK just return an error and will not wait.
I'm agree it isn't ideal, and perhaps  can cause server will return some unexpected errno,
but I do not see how it can make the server think the lock has been queued.

>> It would be even better to use posix_lock_file() instead of locks_lock_file_wait(),
>> but I cannot do it without your assistance.
> 
> let's try to fix this properly instead, I'm happy to help.
> 
> Basically 9p does things in two steps:
>  - first it tries to get the lock locally at the vfs level.
> I'm not familiar with all the locking helpers we have at disposal, but
> as long as the distinction between flock and posix locks is kept I'm
> happy with anything here.
> 
> If that process is made asynchronous, we need a way to run more
> 9p-specific code in that one's lm_grant callback, so we can proceed onto
> the second step which is...
> 
>  - send the lock request to the 9p server and wait for its reply
> (note that the current code is always synchronous here: even if you
> request SETLK without the SLEEP flag you can be made to wait here.
> I have work in the closest to make some requests asynchronous, so
> locking could be made asynchronous when that lands, but my code
> introduced a race somewhere I haven't had the time to fix so this
> improvement will come later)
> 
> What would you suggest with that?

It seems we can just replace locks_lock_file_wait() call by posix_lock_file()
in described scenario. I'll sent v2 patch version soon.

Thank you,
	Vasily Averin



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
