Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA04648F637
	for <lists+v9fs-developer@lfdr.de>; Sat, 15 Jan 2022 11:01:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n8fsP-0004jY-L8; Sat, 15 Jan 2022 10:01:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <info@tuokun.pcbmail.me>) id 1n8fsO-0004jS-J6
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Jan 2022 10:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Date:Subject:To:From:
 Message-ID:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K/zNl+DnfPbjGR5LNJnXYdUIbaxxk8s7lG105z3HGyA=; b=T4ZrmvkJ5ITINdINwdCAkGsW7I
 Xrz1/rOhXm77oAaog3qHuLr6Oxmmtnpk0dFo6nc7NzKKwyD1KXkZaZBu6r5hQVZF7oZJfGNhzMO7c
 wm36FClyOvK6o9LxOpy9H8KqOoU6Md9kIb2GypEXDYt4fBPMIMoZtbtgrYFsMVm7cVkU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Date:Subject:To:From:Message-ID:Reply-To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=K/zNl+DnfPbjGR5LNJnXYdUIbaxxk8s7lG105z3HGyA=; b=Y
 a9URfoOJoAvGf2xTwIGUZ4L2vKGXwRvOwNSq7YzSi0+OE/MBne/hmBjK66L/NhSO5gjczgzOUH795
 x7WVCuAASCl1nBuVMmYiNLWwnYPk2SBt17n15fNkGplUewcNPbEtH6KqpXWgQQP77cBF4hQ9diEOD
 QkGx7rK0biLbsm2U=;
Received: from mail-bjbop0209.outbound.protection.partner.outlook.cn
 ([42.159.33.209] helo=CN01-BJB-obe.outbound.protection.partner.outlook.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n8fsI-000896-Dl
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Jan 2022 10:01:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B4jXWyAKom2lJWGaBbaLIIaqkKXZHCheoPt6eesbRVMp4o7zE5Fyh+UB0FUksN84ImFisEhbBhIDCHhzWVqedSicNElklqT/6iU+8h1svxsfOEW0MWCim4pXWh2+aVyLKvciZAtsx1POA66SbPh2KD04HPe5oPwOuXX3EvZpChxmkni4cFPOQKdJ9yLafxnjySY81DM2nlJpa6m12QTIs+w2Ev8BZbLMXEm8J6xLsMvThzWflm9iHEduNjCabHNkrcQvW/FOEXNyYu6cMRT6f2DB6hrD3zIV73D5vP//E6LHlHm/18AsUGdcyJhkSuyTla0NDFbkziVe823viUI5mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K/zNl+DnfPbjGR5LNJnXYdUIbaxxk8s7lG105z3HGyA=;
 b=m7JEShd9nb0xfyKE9oywJsKlKqLeD1LTtE63LwBe3ZkXEd+NpNrlPufji/yDx05+61MFoQWKfG+oEulw3zPzXq8+p8CPVJGiuCQqViD4qHrC96Dn1Brk56u1q2jlRdoY2sh2FUh+cDWjdQXw6pVh4AKUFPHZGOJUXswSpbOUf2wKL6B33guzjAc33dlYc+0n5u8lM9RRa6QP6YavD4YweRzG5m+WtOLjHAEK1L6QJ8PQPLneHbu+Sj7Bq9IMtyr+sSgt8NFYRjSZylcJ0ih1KMT+oQNkCw0Z+ZoIRACr/Lt2xMctRaiubO7G4y55/fqjuTihWR3Kon97nVnHSmmHRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tuokun.pcbmail.me; dmarc=pass action=none
 header.from=tuokun.pcbmail.me; dkim=pass header.d=tuokun.pcbmail.me; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=tuokun.pcbmail.me;
Received: from SHXPR01MB0574.CHNPR01.prod.partner.outlook.cn (10.43.110.78) by
 SHXPR01MB0576.CHNPR01.prod.partner.outlook.cn (10.43.109.140) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.10; Sat, 15 Jan 2022 09:27:08 +0000
Received: from SHXPR01MB0574.CHNPR01.prod.partner.outlook.cn ([10.43.110.78])
 by SHXPR01MB0574.CHNPR01.prod.partner.outlook.cn ([10.43.110.78])
 with mapi id 15.20.4888.012; Sat, 15 Jan 2022 09:27:08 +0000
Message-ID: <84ee537c1cf1cd47547ef9e4001cf094@tuokun.pcbmail.me>
From: "info@tuokun.pcbmail.me" <info@tuokun.pcbmail.me>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sat, 15 Jan 2022 17:27:09 +0800
X-ClientProxiedBy: BJBPR01CA008.CHNPR01.prod.partner.outlook.cn (10.41.58.15)
 To SHXPR01MB0574.CHNPR01.prod.partner.outlook.cn
 (10.43.110.78)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c10b2499-0848-4b28-ae77-08d9d80933b6
X-MS-TrafficTypeDiagnostic: SHXPR01MB0576:EE_
X-Microsoft-Antispam-PRVS: <SHXPR01MB05767F4056EFA41E6B869AFE9A559@SHXPR01MB0576.CHNPR01.prod.partner.outlook.cn>
X-MS-Oob-TLC-OOBClassifiers: OLM:1122;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1FDcmRNNDRGdUF2NFBNcW44Z2xYMzZyUktTcTRnVkVzVXJqTEhWelB0OHJw?=
 =?utf-8?B?cU5DMEh0ZFFvOGdwRktYakZMQWdaaVlLUGRWcGJYVXZjUEJsYitpYTlqT3Vk?=
 =?utf-8?B?MjM4eEJ2eDZuREtlNDhQMFd4WkNEZjJtVGVSNU1Qa1h5ZEJQdW9nZFlTcHEz?=
 =?utf-8?B?aVdxVVVOaGlaYnB5TkRoUlNxNWlENkNHUGV4Q3o2VXdTR2VZNldkU1FiVlRY?=
 =?utf-8?B?a3JxZTJJSXprUGZPUTluZFI0aDJhemtFVXRtbWNvSjZZUEdLNUJOZlZORUtQ?=
 =?utf-8?B?Q2cvRHdkd2FWSmZXdGtYY1B3R2FXNGpscW15aTBBaUJic1R4NmNQWVNORHFk?=
 =?utf-8?B?N1RwVGxkUjk1a0xKZ28rUGNUNWxiQWl6OC9LQ1BxcmVyMzR5eGdIVkFObFFV?=
 =?utf-8?B?clZrVitHUUdSSGF6R2N6czQ3b0tBVjM5dnhYZk01dHlCWWhydDZWWGRaYUds?=
 =?utf-8?B?MUdMdjMza2ZrelR0M2NwVmhnaTFMNmlsakZwMGVxVkY4MjZ2UmtYekYvVUVZ?=
 =?utf-8?B?RFlTa0RMZ3E1clphL01SWUs5Rks4aTJPVktkOUowNmY2Rm1jdkZ0b0M5eFR5?=
 =?utf-8?B?QVNubllEUit1bkIrWWdQNXBwaHNEVWlsMWlIYmViNlo0NWhQNG1IRFZSbGJI?=
 =?utf-8?B?L09saS9oTWpuTCthTGU1UVBsdHg1R0VFRFVJTEErMFdSMExEMmsrckpudHNz?=
 =?utf-8?B?M1R3SXYzY0hRajUyL2ZiNWt0WFVkbWpiS3plNUY5bXBVeE1OOXpKVDAwemZB?=
 =?utf-8?B?bVZaVGlkWUM1WkVxSkVVRk9Wa0h6SDBrUCtMVHhOcmRWNlZLSXZWZFBtZ2dE?=
 =?utf-8?B?TXYzb0tTZEhBRmRnMUxrdFV1TG5wTTZlWmVSZDg5UUJ5bDlpRFhNVk0weGlB?=
 =?utf-8?B?RlBESTdYZ1Y1TFdxdTNRbU55R0VBWFhxVFpVU282c1dPdDhWeFNObDJjTlda?=
 =?utf-8?B?TlUzME9tNkFoeUsxR08zYUVWTjQ0WktUSmFnUnp6OEszcklGU0xQVGZoVnlX?=
 =?utf-8?B?SjE3aDJoUUlBVkpOT3NpcDJVczZPNGtUQkxOOFdTUTFxQnRaQXJZajI3Ykk5?=
 =?utf-8?B?eDZ4WHJNdXJjaUowMUdhQU1UT3VoWG9zd1VzT2F1QUVRaTF1TmY0eGQvaXUx?=
 =?utf-8?B?cUxqK1dKQ2FsUWhBSjRZL1p6M1VCeWo3L0xGaFdHcjVzUnlMUDhES3JEenJ5?=
 =?utf-8?B?MXhXc0ZzTTI3bTBrajAyY29WOVh6OVdJZm1YUHowU1FzVlMyS2NqTEZSeFJh?=
 =?utf-8?B?Sm9GMDI5YVVuSnJITGlibjFnaThOUGdMclhvRnYrQ3RqNm5NWGpBK1BKODk0?=
 =?utf-8?B?RjFMaElFc056ZlVCQVRMOXo2RS9YaGtoWEVRWnVBTE5BbzRBUWVGbGZYN3F1?=
 =?utf-8?B?OHZpMU5MM25UT3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SHXPR01MB0574.CHNPR01.prod.partner.outlook.cn; PTR:;
 CAT:NONE;
 SFS:(13230001)(346002)(136003)(366004)(376002)(279900001)(66556008)(66476007)(66946007)(7066003)(24736004)(52116002)(40160700002)(508600001)(108616005)(33964004)(8676002)(8936002)(166002)(86362001)(2616005)(38100700002)(40180700001)(6916009)(19627405001)(186003)(26005)(5660300002)(38350700002)(2906002)(83380400001)(91066001)(43620500001)(20210929001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1ZxTTgvamZKV0FWc1RheFN1bTZKRTNFYnpKcGRKQ3c3eWZjY2hNdXlqN3c5?=
 =?utf-8?B?SDMyajBBcmEvbHVXN2NuVSt3aTh0cXFXU1plTDM2djE0U3dQc1Y3aUFnOWQ3?=
 =?utf-8?B?ZnBxVjJYUGZ6WEhZTmZuYzBhNzBnZGdwUlJkdTV5bHhwbUZncy9MWGRmTkVJ?=
 =?utf-8?B?ZWdqa3I2V0JSZVRRYXNsWlhONC8yd0Q1dTdZMmtqUXVqUGphOXhWMi9zUW1E?=
 =?utf-8?B?NTUyZ2ZhbWpLN21GcEcxRUowM0xnOURaRzBJUmw5eWZkMnhUQVpURUhXbCtJ?=
 =?utf-8?B?L2FnY254VTQwMHJCTWd0cFgyb0FrK3BqMkpFYlhMMkxLak1xYUs1VEh2Rm1P?=
 =?utf-8?B?R3FlZ0gxQlBpOWNVeWRDTEJFeG13TE5PZ2czUjE2YnpBdTEvYUh6TUtTVWZP?=
 =?utf-8?B?OGNROFpIQW1WdDdWYU1vV3VEWGlhbVdrVUhxa2JKWjM0b29jUnVhb1JqRk1R?=
 =?utf-8?B?d1RtOVdpT29Kdjh6ZXArU2k1Rmk5aEhRY0pHSXJNRytkSjNYaWxwMUFmMk13?=
 =?utf-8?B?THdEb2Mzc1RybWdtN05MVStwTXpUTEI5WTIrUHBzMlFKWm1kSC9RUmlSaDlB?=
 =?utf-8?B?QmJZdGE4Z1JnZExtdUR3S1F3eDAwNmp2bzhacnVreWZNMWN6VGEvT3o4ZTNo?=
 =?utf-8?B?bDZHejZrazNzbjVHNElkV1piellFT3ovVkVhNVVlNS9CcitLUnk4SFk4ZzhS?=
 =?utf-8?B?ZEx2eVVGeGJ1WkR4WllXOXl1OVdNMml2V0U0T0xJTCtja0lUb0l0cG44YzI3?=
 =?utf-8?B?TGNXMTVOdld6ZHMwbHRjVTJkbldLdlROYldrWWtRWFVZZkxYVFplRzRKcndV?=
 =?utf-8?B?WGtPMmFlaDZWQSt2RVhFYVY4WDJrUEI3Yi9HdHZsOTdEU1Y5Rll5R25ncWpu?=
 =?utf-8?B?cThCcGt3V0lnczR1WmpZOVpHejF2MHJYSW9YUlcyYVdVeW5mSXkrNkZ4Qk1F?=
 =?utf-8?B?SE1UeU9PV0gzNHdYQmhmWGJmRS9mUkk4YlFYTU96QWJPWlhIbEJCYytzeUs3?=
 =?utf-8?B?R1J3RThkN3IvOVZmdmF1NEJ1MWVvcFJ1b0JscER1cUE3cXpBTHBlS2UwdTdM?=
 =?utf-8?B?MktrMmhHRURpS1JJaFNyQzVDU1A1VkF3d1haa2QvVHpwT3RIc2ljcFhWcFI2?=
 =?utf-8?B?T083eFBvRWhsK056Q0ZEUTBvQklTazV0ZEwvaDVmZEdFcVBpdWUxaEVkR1Vh?=
 =?utf-8?B?ZmNDQ2hITEpvUVJzMnlndDkxNU5acmt0bWZsMkpQNk53VDRIOUY4YXpNcVBS?=
 =?utf-8?B?SGpKTE9oR0xkVXhXdjFWbmp2SC83OFJyZGhaeFRUbFNVMUdXeHZXdmZaVWx0?=
 =?utf-8?B?SkRnZmlyaWU5bUhUU1VUZ3JHSmwrUU1ORXRqVzJzN0dXblhvZ2RYcjdsc0sv?=
 =?utf-8?B?SURjRS8zR29sM3IxWnkxdVoxRHFwSFpZd20xMnovWmExT3FXNmo3QXJiL0RB?=
 =?utf-8?B?dDYxdjdHQWliQ2FJNVVHODFZRHpoNTlCL2UzdkQ1K2lURjdaSTRUWDRQREtC?=
 =?utf-8?B?RFlzcnBPUWNuWGNDdXExS2pad0E1YnBmbzFFZXNIV0h0UGlTR3BnSm95YzMx?=
 =?utf-8?B?MDlTMjN0blRzU2dvd0wxL1ovUlVUR1EwbzNoVVRtZzJ5U2Q4TWlLeXFVNkhv?=
 =?utf-8?B?b2dtbDRwSFRHcnlvYkFPbmVSVjI4eHIwNkhHaFpYNStXNXlaRFhvcnRRTWF1?=
 =?utf-8?B?c0RLdFhPbWRTVS9Ic0hVSFVoMFNHTUI2TngrcytpZm9WN1dsckk1VFpVOHhh?=
 =?utf-8?B?MmVrV2txb0ZySXliUS8vOVppOEVKUnNMYTQ3Lzc3Y29TMHdyby90QSs2a1dV?=
 =?utf-8?B?bnNtclhxWjRMRG5WMkt2OHRhZHN6V1JjRFk5SnhOYUVuczg5M1p3NCtJWkFi?=
 =?utf-8?B?YTRtY2o3MFFic0d5QzVtRXFYU2lSVm9nUUp2aGhvYTR6cnlxSGpOWWlGTzkr?=
 =?utf-8?B?QW5pRW53Tkhqb3VTVlI2aGZhMVFuUEIxcTcvcERSY0hlNU5STDJFK29pQjFq?=
 =?utf-8?B?SmFqMHlPNXFlaTB2RkkrK2RTVnN5V1U2SzhuQjFGdExYeDZYTkUvNDFJakl1?=
 =?utf-8?B?VUdOZzlINytLS0ZIa3lQai95eVpWaXViYllzUT09?=
X-OriginatorOrg: tuokun.pcbmail.me
X-MS-Exchange-CrossTenant-Network-Message-Id: c10b2499-0848-4b28-ae77-08d9d80933b6
X-MS-Exchange-CrossTenant-AuthSource: SHXPR01MB0574.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2022 09:27:08.4011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: dfeeb9ff-ee8c-4017-9d2f-e17be7092511
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KWY97po6kSAcwfBbFhwq4SLiRgtXK0w6wEnj0b7fUZ94xVbpousmiIZURhxfE1BYBcX2hSeHsYgUmZXmUDbyuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SHXPR01MB0576
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello. I want buy EV3 105-5091-150 EV3 145-5091-150 do you
    have them? please offer your best price thanks Leon Skype: +8615270181537
    PH: 008615270181537 email: krt5588@163.com 噒噑卒剑剕FEU_WpCjaAUiffEHGDPPKNZWcImLin[ikVT\GanQiag_aQ`_GkZNe[E]lALkCdjfUfXpkVbCkFjIjPDShjSmGWIi^YoAipNDghlC27834845218120554687857558044046375420553688331800
    
 
 Content analysis details:   (7.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: mehelp.de]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [42.159.33.209 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
                             digit
                             [15270181537[at]163.com]
  0.0 WEIRD_PORT             URI: Uses non-standard port number for HTTP
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.0 HTML_IMAGE_ONLY_16     BODY: HTML: images with 1200-1600 bytes of
                             words
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
  1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
                             different freemails
X-Headers-End: 1n8fsI-000896-Dl
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] 2022-01-15 17:27:08Want buy convidien EV3
 105-5091-150
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
Reply-To: 15270181537@163.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8uCkkgd2FudCBidXkgRVYzIDEwNS01MDkxLTE1MCBFVjMgMTQ1LTUwOTEtMTUwCmRvIHlv
dSBoYXZlIHRoZW0/ICBwbGVhc2Ugb2ZmZXIgeW91ciBiZXN0IHByaWNlCnRoYW5rcwpMZW9uClNr
eXBlOiBrcnQ1NTg4QDE2My5jb20KV2hhdHNhcHA6ICs4NjE1MjcwMTgxNTM3IApQSDogMDA4NjE1
MjcwMTgxNTM3CmVtYWlsOiBrcnQ1NTg4QDE2My5jb20KCuWZkuWZkeWNkuWJkeWJlUZFVV9XcENq
YUFVaWZmRUhHRFBQS05aV2NJbUxpbltpa1ZUXEdhblFpYWdfYVFgX0drWk5lW0VdbEFMa0NkamZV
Zlhwa1ZiQ2tGaklqUERTaGpTbUdXSWleWW9BaXBORGdobEMyNzgzNDg0NTIxODEyMDU1NDY4Nzg1
NzU1ODA0NDA0NjM3NTQyMDU1MzY4ODMzMTgwMAoKSWYgeW91IGFyZSBub3QgaW50ZXJlc3RlZCBp
biBvdXIgcHJvZHVjdHMgYW5kIHNlcnZpY2VzLCB5b3UgY2FuIHVuc3Vic2NyaWJlZCBvdXIgZW1h
aWwgYW5kIHlvdSB3aWxsIG5vIGxvbmdlciByZWNlaXZlIHNpbWlsYXIgZW1haWwgbm90aWZpY2F0
aW9ucy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5
ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1k
ZXZlbG9wZXIK
