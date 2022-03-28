Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDCC4E9C22
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Mar 2022 18:22:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nYs0L-0006r6-24; Mon, 28 Mar 2022 16:22:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <info@geek-squadservices88.co>) id 1nYs0J-0006r0-A5
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Mar 2022 16:22:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XYB9XVTv1eQqf6wAeR7YMvyNEuvdPIiwk5T61N0WDQw=; b=Cl7DelmxlvpnoBsz9ve5EadDNr
 Abc0GzOqgtfXfF/R+TpuX3xJtnt7RgmtNQfKSzofvB0WlMbJIpwWVIBEsD8QOQe+w2XdzBVdKrXqF
 0r/GDQ31gYnbDbkkmkN8ydH/2vzhLLXrefS3V7+CxPvzOvmZQfVOF/j6pAY9Ib4k6ALY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XYB9XVTv1eQqf6wAeR7YMvyNEuvdPIiwk5T61N0WDQw=; b=O
 RdKDaklAAUPS+B6h1C0XRPopXa9NR1SDEBmdrhWAazQfiaGTOY0cRB4xmpx8zCQssHAyyHIlAcx+n
 XOw/CQ2kRYD/6u52cxUEnLHcrQPZG6//XGUpjPaQ8LhXfukRHMDgDS/chuFaNGmPv+c+ptgfwLUlb
 DyHu3Ba5B32Un7j8=;
Received: from mail-bmxind01on2052.outbound.protection.outlook.com
 ([40.107.239.52] helo=IND01-BMX-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nYs8A-0003mJ-T1
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Mar 2022 16:22:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hqikd4oh2V6HaI2aAKElFIhrRXa831EIrtRDWNReCYUvzEYE6BIWmqKhbZ21bjqfMdJzQ97wquJQQa2+pSaLeQ2u5c0F58TcfsLHY5IpHwNxbhyN57px6ehZuQqpyQt+v9tVJFM/wFYf7vV1nteco3MHonobVJUdW92GlclehVSPoYniid3EQawWLjzQuOAGyygTa3wI37mlP3Nku1TDSLp05qQoZC/bJdCRrenthi/mZCg8fR1szFX+L6dxMfaUm2M0q5m7is3PpzQ2JzSyqcqF+O7hWDmCztAqmeun6apuZCJPDjwQN6Ut0bCJ6Xl+qlIToqdFAP0ssFXCbKxcaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XYB9XVTv1eQqf6wAeR7YMvyNEuvdPIiwk5T61N0WDQw=;
 b=lUAZTKL0kGka/UisNzfU5CrcByWaXuVgADDbkgxYdvYUH3OlqITgSsqnCKRa+k+giGsLFUEiPrIHkRr0u8kozYVh4K/I9NUt7AiqLdvoRVtT9G9m8K9HzU7WUdeK/R2F+dNINhV4cH77RPNC4SEaVebaXzNpijMNi8haeDwF9Dn5djOPQlHT079oLI6u51bPzRyXzi6cUjPCo4VH/HPAFJzEsATM3Au/9ooyfEfoevMBnyyeWGDgjAZQqIG6aLk/QUHHakdzB5OhUtIJdDkr5lPQ4HjvkabGTwhhI5hqwVEciKyCh20LPolnT7WyHz1q/CIok/AjXEnH+iod4rJ/Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=geek-squadservices88.co; dmarc=pass action=none
 header.from=geek-squadservices88.co; dkim=pass
 header.d=geek-squadservices88.co; arc=none
Received: from PN3PR01MB6457.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:84::11)
 by MAXPR01MB2622.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:52::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.22; Mon, 28 Mar
 2022 16:22:02 +0000
Received: from PN3PR01MB6457.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::6d70:d4f2:474e:5661]) by PN3PR01MB6457.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::6d70:d4f2:474e:5661%5]) with mapi id 15.20.5102.022; Mon, 28 Mar 2022
 16:22:02 +0000
From: Service Updates <info@geek-squadservices88.co>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Your Geeks Squad Service Plan is Renewed #GKS-28-9895281
Thread-Index: AQHYQr/0s+GZEPSAhEeam2X0orZeHg==
Date: Mon, 28 Mar 2022 16:22:02 +0000
Message-ID: <326a7565-6149-188f-8987-3a93e21bb56f@geek-squadservices88.co>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=geek-squadservices88.co;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c5ba26be-98df-46d3-c072-08da10d71774
x-ms-traffictypediagnostic: MAXPR01MB2622:EE_
x-microsoft-antispam-prvs: <MAXPR01MB262251B3F9DB78D60304C4AB8B1D9@MAXPR01MB2622.INDPRD01.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S4pZR9gnyO7ZUHWMioI/lLpKpzA3O4/4WwvUSvruC7hM0CuunaywI8+IQWWtdepWO9jc9fIJ05UzMSASh7ncBy/I5NXAbBqz+Vl7qNtvIYDrjb1O76Gij1ymAffsfR/z4SlS4PUC9qi4pG3Z31m2cCDPiF6nkt0wyChVR4aOHn896Gn8xe/IEea1hdM57uE7Aqs/ijT5rVTR15nJtDqMYW0hD7Sr37lqm58OYUWVSkPJZdFEPhhaXhwlSRlBkAhiC7JEihnn+6RLEWCH/SDgvJpQnppiZneBl0lJvG6N1eK63ICfX2LSdsjQZuH7xoBpiJKQ0GbA2hDZctjL1VLME5FyfZhOyEx0SAcDPeB2oTaRt25wgSlhmh+x6AvQ/vFmDj73EQIH7hwHBYzJ8Cst3Q+nzqVNmfGu9Ou7e5hoFpnkDXmcZ6Lti3mzXSTpYwS6e/GMeXuI19Npp/lgQruwEeTzitJpg0+jBCwS2v/vScoYFMHu3xpOx0LhoNoov5Nni7Vjp5+FqFqomhIx69aa3XBuHW3ESt/qsE6Zb8atAIdb28k9haXZJMp1d81AKWdMjgdWAV0MqyiVxq0AaF/FkjoY2l+PCPStmuzvKwJvaiEAhGzLUcJi8pPm4alPCmKhgjSAhoMmSpy2MqensIIh9P/n/MKqnesnIIievEdmWXRrdGZyVearX7CpBCc9m+ruxFVycRnVjiYHmhkivIX6JksHadEC4AElw6Q8D1ZfbYY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PN3PR01MB6457.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4744005)(186003)(66556008)(508600001)(38100700002)(5660300002)(2616005)(31696002)(8936002)(26005)(6486002)(122000001)(71200400001)(83380400001)(55236004)(38070700005)(6512007)(6506007)(316002)(8676002)(6916009)(40140700001)(91956017)(2906002)(66476007)(36756003)(86362001)(64756008)(66946007)(31686004)(76116006)(66446008)(45980500001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T1BqNEN3bnZvM3VtYS9EV2ViNmNsUEpOVEVsTXJxU3BVKzZIUkgvSTFJaDZM?=
 =?utf-8?B?TlNqNElrcTUxQTFuNVRXL2RORG5yMmg1THZtK1hON2pWMHcxR0xEcHVFc2Uz?=
 =?utf-8?B?Vmp5VXcxZFpYMTZBRVQwRTdiaFJJczJmZVJWQnVWMVNtUUZ0RHhaQ0ZQUzJD?=
 =?utf-8?B?THVRVEgrRmVZQ3I3UGwwN2RrNk1EQWpHNEhOL2NXRWVvMTYzZkY1QmxZY3Ar?=
 =?utf-8?B?YTJVbGhGcVY0UmFjL0VqRVdYc29IM21laCtCV2ppeDFHbjNKSVdHRWtPa01P?=
 =?utf-8?B?aytRU1JrUVFiTWhld2hjbHE5Q1hSeXczKy8wUWxxWGo2Ky9neWN3OHY2eVZt?=
 =?utf-8?B?bTEySlNteC9YWWNUaEpKRERQNTVhK01lZDdvNERyWXplWkJUTGx6UzhWeUw4?=
 =?utf-8?B?eHd6SmpOeHJRMUZsUml1Q0xSdHJTTVJoY0ZlRERzSHZXQ3VVTmpBQ0ppYXJl?=
 =?utf-8?B?UHphRmhWdUFhMldoMUZaUGZZMjFQUXByM0N2SDBmSUpEQlBjdHQ1K3BmcnUx?=
 =?utf-8?B?YXhPeEpqakV6c0p0OWlqNkNGWGpTUERhbWdpOTJ4RElDMmJ5M1IzcXVUeXla?=
 =?utf-8?B?dWdSY0RiQk5yMThFRjJKb212MU9ESUN2eUtRd2lTWnk3cGdiSzNnUFBXVkcz?=
 =?utf-8?B?OGROSkc4b21BK1JMY2tVYUNjTnlCNXpvVWkyMXEreFUrQzNlc3NsWE56cy9x?=
 =?utf-8?B?aHd1Yk1XNVZINE5pdDRvLzN5RWZ5SjVENU5Tbi9zdmtFY0dxRURCNlJzVnk3?=
 =?utf-8?B?SEZUR0FJWnJUVGlUbXFid25LUEduV3Y1U1B2VG0ySk0vTUx1SzhCTW01WUw4?=
 =?utf-8?B?elV5ZVY1U1NtbjZVVng4Q2ZnN2ZxOEJtVkgwNUIwcUxhMm9icSsyT0M3Tm9P?=
 =?utf-8?B?Y3UreFlGMGxBbkxIUWlqN2pIbGNUV1NjUEJ6TkcxUkFtTTY4SXIvRHlGRS8z?=
 =?utf-8?B?S1hYeWE2TDk0Qnd1L0Y5enp1VmszU0VuZDQzZm52emlGd0VOeDJjTnZ2Rnhl?=
 =?utf-8?B?ZmtTcHpoNlZ3VmNrWEN6eGZTdUR6cXJnV3IwaTZ2dUJMbW1FM2t0ZzQvaEJq?=
 =?utf-8?B?ZUFHN29MYjNLdUFGWm1ad0tzSVcxWkRDdFUwME5US0FITndabXRlbDhYNjNL?=
 =?utf-8?B?MUNvd0V1Wk9yWnpuT1FXU1lhOS9rQWVMaWszV1ZRNVZFNGxMK0lCNjJuN09k?=
 =?utf-8?B?Tjl5YVVibkpLN08xV2NNTnJSZEZLNG5ZL3R6ZUNuRDlDZXd2b1UwTmlQckRi?=
 =?utf-8?B?L2tNNzE1UGFjTk5YUHRSTXNhUndXaVZFT09rUm11YXNLWXphWFV1UlZLcG1F?=
 =?utf-8?B?cGRMeVJMYjhobFB0TGF2djA5bGVheHpsb0grVGc5YjJIc3QrREJldE1Lbm05?=
 =?utf-8?B?S2dUemM1L3JMUFN5SlB4VmJSOHJ3Y1hEZWc0bFlHRWZDT0lxYURIQTFxS0s1?=
 =?utf-8?B?ZkVxSlFMLzAyWDlOcHdSUnZPb1RkYkJ6SzYxSU0rQVovVFIzQnlhWUlVWXNF?=
 =?utf-8?B?eXQ1OFhkdGpHNUI0VjZMUEEwQTZJOUhJTHd2ZVh3WWdzWDkwdGR1WW5FRFhJ?=
 =?utf-8?B?Y3RmcjAxR0pwTWxpaExwcjZGTTVtcVp2U1N1L2pia296elFOd0ZtcSs5bUNq?=
 =?utf-8?B?ZzZkQzFMWWViaW1ndS9WSHNCOXJyOGtZSm0xN0dldGs1Z1NSTkoxWEtqMkhR?=
 =?utf-8?B?amNJWC8wL3FMZGNvTWphVCtNTnpDaS93QUNGZVUrbGpZaU9ZMXEwc3pSWEwz?=
 =?utf-8?B?Uy91Zjhid2gwZVZUQVc1aHRza1UxeDFKdDlSM2tsK0lIUWFaZjNFT0JxeXpU?=
 =?utf-8?B?MXNUcmYwT1Fkc3NwN1VCK1Y2T1liM0dRajFIc2NWcEF3WU5GUm1kVnNXbmdD?=
 =?utf-8?B?QUtDTE81c1krS3VDd3dFOUNhcUZKUm5zbHdsQi9aUmtONy90VzZGeWhPT0VW?=
 =?utf-8?B?MzFFTFNtVFZOanhJSW1tZFdlUC9QNGd1ZW9kRmtpMnNqUmdMSEcyZWZ3aGJy?=
 =?utf-8?B?VXEvYTd2czdvWDJySENSRzltZ21PK2YrZGF3eDNjVzM2WEpDTkprdVdveFd6?=
 =?utf-8?B?SUUzd3pHTWxSbUZuSVRtaVRvcFpXTzQ0VW1BNG0reE4xQlloaDllTHhYa0Vz?=
 =?utf-8?B?Y3NGVXAwM1B3bXozZjNBSThLVjY2K2hjWlhVTzc3YUJSbThLNEVaV0NmUU1u?=
 =?utf-8?B?aTVKUXRjRTVWcHhFZHJSVFVLZktNR01lZkZoQWNsVTIyZ2dHT2t5amI5dURt?=
 =?utf-8?B?V0ZOSTlRTy9Fd0doSm5UdFA1UVp6RXkzRmY0ckhrVjgvSmFjdWVBWDU1dm8x?=
 =?utf-8?B?K29ra3o1di95eGgra09zTmxoSTZNelJ1UStnVHFsUDJLellQa1BteEgwVE9Y?=
 =?utf-8?Q?CUM6BmDjm+8Doz/k=3D?=
MIME-Version: 1.0
X-OriginatorOrg: geek-squadservices88.co
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN3PR01MB6457.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c5ba26be-98df-46d3-c072-08da10d71774
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2022 16:22:02.3105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b18f3b48-57c1-483e-ad74-cc5f5939799f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VLf/7ldc5t07bXRqyLW3ySBcOQPYnrL3p2swhQP5TiAGopK/7vIBF4cNzt+Lp0Pd5d7pt7VpUP0nN96Ye8cesugzpf9wHRyVfalvaHbT1Tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB2622
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Services Renewed Dear User, Congratulations! Your Geeks Squad
 Secure 360 Premium - Annual (3 Devices) Protection Plan is now renewed. Please
 find below important details of the plan. Kindly go through it carefully.
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.239.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.239.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1nYs8A-0003mJ-T1
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your Geeks Squad Service Plan is Renewed
 #GKS-28-9895281
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Services Renewed


Dear User,

Congratulations! Your Geeks Squad Secure 360 Premium - Annual (3 Devices) Protection Plan is now renewed. Please find below important details of the plan. Kindly go through it carefully.

Service contract details



Service contract number         :
GKS-28-9895281

Registered email:
v9fs-developer@lists.sourceforge.net<mailto:v9fs-developer@lists.sourceforge.net>

Plan name:
Geeks Squad Secure 360 Premium - Annual (3 Devices)

Plan renewal date:
28 Mar 2022

Plan renewal price:
$ 349.99


Coverage details

Extended Warranty:
Plan Starts :
28 Mar 2022

Plan Ends :
27 Mar 2023


Premium Phone Support
:
Plan Starts :
28 Mar 2022

Plan Ends :
27 Mar 2023


Damage Protection
:
Plan Starts :
28 Mar 2022

Plan Ends :
27 Mar 2023



Get Quick Support : +1 (805) 586-8105 Monday to Friday 09.00AM to 07.00PM

For more details about the plan, kindly refer to the Terms & conditions. For queries, feel free to reach us.

Best Regards,
Geeks Squad


Terms & Conditions

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
