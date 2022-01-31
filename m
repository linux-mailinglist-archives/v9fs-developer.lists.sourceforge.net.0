Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0064A4D6F
	for <lists+v9fs-developer@lfdr.de>; Mon, 31 Jan 2022 18:40:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nEafd-0006lw-9V; Mon, 31 Jan 2022 17:40:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <status@i-storeus12.co>) id 1nEafb-0006lq-Sh
 for v9fs-developer@lists.sourceforge.net; Mon, 31 Jan 2022 17:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VuYPx7SXTJg6Ub7BFU+HHQw+Viw/QkY5hfLVDM6Gjr4=; b=GChJ1UrFNRzfuJTEkdw/ZD3QUN
 4ugG091hPzyZCBvsV9rO0273+m2Ms21SQM4qQ+PiM+yQDyCKBnCpQsy1pvs0uh8XA8R/k00yfyKeA
 XINc99W1nLj6R2fLmmCc5gXwh78UWk+voQu8Wvje7JC3nZ7aY/nBaO1aGOxwy86x0bIk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VuYPx7SXTJg6Ub7BFU+HHQw+Viw/QkY5hfLVDM6Gjr4=; b=P
 +BgX6gy055QuxqhO4e7Ig/wL1RYuJOZUuHThNed9CuBgpAQG3XHS9XHyqdcHaoLCO8IZYh0+Dahps
 h5m8qpndGrarGmpIgXa5Fasrsxm3M+jOZVgRjlYisDxDBrkCmorWQVdASrVe97l/ebeVSkBfgVLCF
 QekycpH0Jnk4e5F8=;
Received: from mail-bmxind01on2047.outbound.protection.outlook.com
 ([40.107.239.47] helo=IND01-BMX-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nEafX-008DNv-SI
 for v9fs-developer@lists.sourceforge.net; Mon, 31 Jan 2022 17:40:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NF+uEA+yvHuQrnUxH3U/PZky6/IeGPQeT1B11DBVAEVAz2bjBVtNE3MYBX3d0qM/V7vjQ7LBuqaMv01Jvkndj1E9ZHvbi7JZ7G8kLKEROVJ/czqv4PqZlsda3QLZvV3VGZY70P8Sr6QwNAkhA83NLOqF5RJNC7PNZVbs8jifAs/4LQgyH9I6z+/pYzh0pdwCGTcFcgu4b7sl54Rqo3EU4Kgj2ruz2bN3z+V2jwais3XZWE9vJReS/LI7o0miTiJKwGDqplDqrmTT4fo/xw8TpFVnoE3JN2hTgTtdYdG2p6df2JYKt0t3GeRygxS0p0B5NdbRge1mSJenVlT6v5/IhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VuYPx7SXTJg6Ub7BFU+HHQw+Viw/QkY5hfLVDM6Gjr4=;
 b=oVJwyj2ycWg5JASFWCKkXTNnF0G8gaVWjT9p54EjLZGrkU5Pj8YQooVcWalK9T6BpOur7Q/wP15kafMAJ5mj8J8QO/rE3rXbIBR+iMyAQhzJTcvos0STkU2HSYOeNCYoM13cIqQ0OWEoTDLnqlB9I1L9HSfZN/wiIESpCXv8ZF36l2xrsaRebwYs2ZNZ+VW1AfwhqfA6kIfniJX2BlvswDbDcTUvAYbqrNQiPCYDz0NxFfCXcZX+RdjKUU1A9qU82giLlOSNuR5OKCoPqUeVIssHzuu80Q7OWpuZxYBDL2xqIHpSp411m7cMCfZOVogR4VGYEih8x8s2X3EMIo95fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA1PR01MB3691.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:7e::12)
 by BM1PR01MB3332.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:6a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Mon, 31 Jan
 2022 17:40:39 +0000
Received: from MA1PR01MB3691.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::554a:b8d:4be4:df2f]) by MA1PR01MB3691.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::554a:b8d:4be4:df2f%4]) with mapi id 15.20.4930.021; Mon, 31 Jan 2022
 17:40:39 +0000
From: Order Confirmation <status@i-storeus12.co>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
Thread-Topic: Receipt for your crypto-currency ...
Thread-Index: AQHYFsahubF34242mE6pNQ+19DgN3Q==
Date: Mon, 31 Jan 2022 17:18:58 +0000
Message-ID: <a0461634-c169-ac12-63f9-cfdf302f1df3@i-storeus12.co>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=i-storeus12.co;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea25fc04-3825-4e3b-23d8-08d9e4e0cbe7
x-ms-traffictypediagnostic: BM1PR01MB3332:EE_
x-microsoft-antispam-prvs: <BM1PR01MB3332A70B50BC93A07640F5ABF2259@BM1PR01MB3332.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y4tNMX0MD/VWydt8Qn5Vi4Sqwva4WTlNIrb1hYuqa3az4Qe00ADUSSsjShKCTq710LNF03LRmoeYdbZ49xyIO3igZT9m3EAsv1hAhhgpqjsNcJi8TF18oe3Doz/fgCu9cuGyQrAGFuj4c2K3AXSL/eBSUPM+QVmJG8BJnBabxh7B9tYAWu/ULyzR+R+eEjzgTq993/bfEjSEdpmAwUy87VcTbXasX1tCmVNHKVL044WTmZVRZfJPjxolpLB1kWOqGGDtsk9/qjfR42AJmgWm5NAisMVmzxq2gDV2CpzQBRKUzCjJYzGORM8D1K6F6oNX1X+RndbsPdIP/JEeDmJliVIc3BPBAyTgDHZlyHtQTua9/9ejDUKg55fuHlikVuX4qmgF/0z9SoUOwinNCgI2Gx6spAOZDHDhi2dOdlCVqvlzevKGAiuKoxDYkpWPbdBGRRdFkz3hM+D9RdODOMuyjxzITE/e9eFXCyqy9cCp18+kJVzeYO2LEWD//t1O3jRY346GLJRWAbkS4U2lRaxgyDnUZdzTuGzK+kS+udeb5rN9d+LkC+U4zEl2sYIJdf76qdZ1QmnnBptuHO98t3WrCZJl39HcTblhbQwdKbZ+CbgrcmOY71Bu5RyKUka7dM/k5qOxwynkq6EqIBxE5IO6paG8rBN3m2sTzbFxOUlxY/1YZKoGAwQRettQyhjuXMBp0lS9v6r72NAJr3vbpUVj0x5EnKg73f7vb4pm/g1m2EI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB3691.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(346002)(366004)(396003)(376002)(136003)(39850400004)(31686004)(26005)(186003)(38100700002)(122000001)(36756003)(2616005)(2906002)(66574015)(6512007)(83380400001)(4744005)(64756008)(6916009)(66476007)(66446008)(66556008)(66946007)(76116006)(6486002)(38070700005)(166002)(91956017)(6506007)(8676002)(71200400001)(6666004)(31696002)(86362001)(316002)(508600001)(8936002)(40140700001)(5660300002)(45980500001)(20210929001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VDd6UkRYV2h0RlMrU0w5RkdEYitBeFJSV2cxcE9CTlFzSVQ0VUZ4QkVPalhK?=
 =?utf-8?B?clZUKzFHMHJtN3dQak5DTFFDYWViRWRWQmhkS2RGY0w3cUY2RG5lMnc2eERm?=
 =?utf-8?B?cWYwTjdVQlU5bi8yMHUrTnRSZnFrN0s1Vkwvd28wY1Z3dTBxdGszSHVtOHlB?=
 =?utf-8?B?OUFUUVNKOXIzWkpwVVBNbTVoSW9VRUx5bkVVYS9zK3dKSzlWcW9BbHJtYURR?=
 =?utf-8?B?aTVYSExlT2N1UUNXZGRERWwwdDhYZStvQnZPMndGbHppVGI2QnJrKzFpN1l3?=
 =?utf-8?B?NFliUDdlSUdETjBzWndWbTBwMUxnTXJFRmJ1VFpmNW1tK0ZlSDg0REVldncw?=
 =?utf-8?B?NGhEaHVYYVR6dXZVWmYrMENFM1hwbWRBTWZidlVrbzBSaDdIRmRvTkRaTmY0?=
 =?utf-8?B?UmdIQWRiRDFIc0dKUk5yMGl5VmxjY0ZheG1FUit5NDAxT0tLaFFTTTFLRCtm?=
 =?utf-8?B?SmFGeUtZL0VpYlhVZ1hmSEZhNXRhWXRkbE5xeUVDZWpwOUFtWFozT042eXVH?=
 =?utf-8?B?TXlTbVlqWm16Tm1qR1ZqRGFkalk3aXplMkMrd1lnTTg1RXJmTmVxTHRwU3l1?=
 =?utf-8?B?c2tDQUQ2Rm5mbW42U3hBb1lRREJGL2gxRVNneG1PM0lCbmZZMWxITVBGZXNJ?=
 =?utf-8?B?c3l5aDB0SHVuZngvOUJsWGExLzRaWWFaanY0MHBpTFUwWE5KVkxGRjhYTWZM?=
 =?utf-8?B?UEtrMHNHSjJab2dsdktWa0I2WTJqZkp2My9BT1JkWmtGQkxGajRabHZZajVI?=
 =?utf-8?B?RU5TOUd3aVNHVGQyb2JQUEhTK0JRQUM4enRRUzVySEg3cFcvWFFoYmlvckNN?=
 =?utf-8?B?YUlUOFdNR21hUllzODR3T0NKU0JqWWdRdlE0TlR0SU96ZzgyMTI2Ry9zc3ZK?=
 =?utf-8?B?TTZhWkR2YmpxMzgzdHBJOHhzNkhlZEdNOEJQRWFNK3RJVFJSS1RrUmFSYnln?=
 =?utf-8?B?YTdESGlQaFByZVFka0RWODhHT2YxYlF6dENHN3Q2VHhJNTZ2NjdVMmNBM1hS?=
 =?utf-8?B?dEszL0EvTDU0dGNEU1ZNMzBGZG9Ud1R2QVdLSzJSSnd3VWFnRHlBVUdLZW44?=
 =?utf-8?B?MWlXR29VOGZjZzhBWk4vTHZ2SC9NMGJLQTBGM3pMNENjOURnL25PaW5zOVZ3?=
 =?utf-8?B?WkJPZDVZRFhIVFJtUUY2TVlOMXNFNTdMdWN4WXRtRytIWEdYRXZUM2hUWXI5?=
 =?utf-8?B?c2d1WUt6RW03YkRyL1VNOHQ3WnlndWNFYzFtVWlCVjk3dHlORUNabHdoTWJj?=
 =?utf-8?B?L2NheTdnTmU5aHBJQ0Ixc0pTclBkd2o0cDY5cDh4TjFtL1F3bUdDTnpld3J0?=
 =?utf-8?B?NnFJZHZORXBCYTNEbGs2eU1LbEUzK0s2US9ya1lqeGl4T0pSNlNMdWxDbkly?=
 =?utf-8?B?eVVnMExOcEpBL09YbVBHcksvcHVWUTBiRUNOWlE1dngwc0dPeVlZRXFjUUVZ?=
 =?utf-8?B?eVBSMGFNa2srU3lIemFLRjdoNHp6bzVHRUFIK0l0WWlpV053UnpNalo2L1h6?=
 =?utf-8?B?dU15Vyt0aHMwajBidnBoMXdtZHdoVVZZMlZUS1ljb01ra3lTSEdORzEvWFFn?=
 =?utf-8?B?RDQ5YmE2Ni9aa2pQZkFzZ3ZLdU51dmJWRERPd2xwWUpQY3o1RzZBQmdYRmxp?=
 =?utf-8?B?UkpDK2g2Yks2YXhEOUYzY0J4Q1pacHZyK29KVWdmamN5eHBwR1NUVll5TnpN?=
 =?utf-8?B?d2ZZaWZKd3VoRTN6OWsrc3NCMW1LVTdtbmdJcFk1Y2RNbkNHOGEybkVuMFZK?=
 =?utf-8?B?MWpRZWpTY24vdXZYS0xsWmZ3V0x3QXUyT2xuNEYwSWZpVlBUUDBEV2tldXRj?=
 =?utf-8?B?ZDdsNzlHWmdZMVlGbFFKeThTU0FQV0EvZGdBWitJTU1NMUlEbTZxcW4wYTR2?=
 =?utf-8?B?NlB6ZzhLWlo3VFh5SUJUR1FINTdMdkNvdEVSQnFkY3FtYnZuNmhPU09yNWcr?=
 =?utf-8?B?V3JSRlVrdnYyV1dNK0kwRDE4My90VG1uSklGZzdVSkc2QUlUSWdEQ0VHREkz?=
 =?utf-8?B?MWtQeWxFY0pnMnQ1eldDb2NZbElraHVlVktkTU1wMlpIcDhTK2xyZkFOaldw?=
 =?utf-8?B?UnVuLzhVRGVzNy96Y0QrbisvTWlTN2tKZnBMbUpzaGZZNnVkWEZpbUo2djB6?=
 =?utf-8?B?Ym4wNGpJcTlIdGcwRm9TN2VzYUVDVUwrY0tFOGZtc2VNM1NKVG4xTzdJUlR4?=
 =?utf-8?B?WUE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: i-storeus12.co
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB3691.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ea25fc04-3825-4e3b-23d8-08d9e4e0cbe7
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 17:18:58.0512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6dea2385-fe94-4928-9eda-e41e96cab0ad
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fq7LTFrVDdZp60Z6TL3HUDSCWWECa2XUinYJgjZ/aNNhExfVWSuO15gPdvk00vZH1vCs1sbm4Mefaw6MlM4IYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR01MB3332
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [Invoice logo] * * * Invoice #10255842 * Invoice Date: Monday,
 Jan 31st, 2022 * * * * * Congratulations!
 v9fs-developer@lists.sourceforge.net<mailto:v9fs-developer@lists.sourceforge.net>
 * Your first crypto-currency transaction with us has been processed. You
 have just purchased 0.065 [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.239.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.239.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1nEafX-008DNv-SI
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Receipt for your crypto-currency ...
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KW0ludm9pY2UgbG9nb10NCg0KICAqDQogICoNCiAgKiAgIEludm9pY2UgIzEwMjU1ODQy
DQogICogICBJbnZvaWNlIERhdGU6IE1vbmRheSwgSmFuIDMxc3QsIDIwMjINCiAgKg0KICAqDQog
ICoNCiAgKg0KDQogICogICBDb25ncmF0dWxhdGlvbnMhIHY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldDxtYWlsdG86djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Pg0KICAqICAgWW91ciBmaXJzdCBjcnlwdG8tY3VycmVuY3kgdHJhbnNhY3Rpb24gd2l0aCB1cyBo
YXMgYmVlbiBwcm9jZXNzZWQuIFlvdSBoYXZlIGp1c3QgcHVyY2hhc2VkIDAuMDY1IEJUQw0KICAq
ICAgQW4gYW1vdW50IG9mICQyNDAwIHdpbGwgYmUgZGVkdWN0ZWQgZnJvbSB5b3VyIGxpbmtlZCBi
YW5rIGFjY291bnQuIENvaW5zIHdpbGwgYmUgYWRkZWQgdG8geW91ciB3YWxsZXQgKFdhbGxldCBB
ZGRyZXNzOiAweDU5ODQ0YTIyYmQ2NWZBRDFmYjA4MjM4KSB3aXRoaW4gNDhIcnMuIG9uY2UgdGhl
IHBheW1lbnQgaXMgY2xlYXJlZC4NCg0KRGVzY3JpcHRpb24gICAgIFF0eSAgICAgVG90YWwNCkJU
QyAgICAgMC4wNjUgICAyNDAwLjAwIFVTRA0KU3ViIFRvdGFsOiAgICAgIDI0MDAuMDAgVVNEDQpU
b3RhbDogIDI0MDAuMDAgVVNEDQoNCiAgKiAgIFBsZWFzZSBOb3RlOg0KICAqICAgSWYgeW91IGRp
ZCBub3QgYXV0aG9yaXplIHRoaXMgdHJhbnNhY3Rpb24sIHRoZW4gcmVhY2ggb3VyIGJpbGxpbmcg
dGVhbSBpbW1lZGlhdGVseSB3aXRoaW4gMjQgaG91cnMsIHRvIGF2b2lkIHRoZSBjaGFyZ2VzIGFn
YWluc3QgeW91ciBhY2NvdW50Lg0KICAqICAgQ29udGFjdCB1cyBub3cgYXQgKzEgKDk3MCkgNTM5
LTk1NzgNCg0KICAqICAgVGhhbmsgeW91DQogICogICBDb2luYmFzZSBUZWFtDQogICogICBDcnl0
byBTZXJ2aWNlcw0KDQrCqSAyMDIyIEJBTSBUcmFkaW5nIFNlcnZpY2VzIEluYy4gZC5iLmEuIENv
aW4tQmFzZS5VUyAtIEFsbCByaWdodHMgcmVzZXJ2ZWQuDQoNCnVuc3Vic2NyaWJlDQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
